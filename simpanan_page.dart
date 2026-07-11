import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import '../models/simpanan_model.dart';
import '../helpers/isar_helper.dart';
import '../widgets/koperasi_scaffold.dart';

class SimpananPage extends StatefulWidget {
  const SimpananPage({super.key});

  @override
  State<SimpananPage> createState() => _SimpananPageState();
}

class _SimpananPageState extends State<SimpananPage> {
  List<Simpanan> _listSimpanan = [];
  double _totalSimpanan = 0;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final data = await IsarHelper.isar.simpanans.where().sortByTanggalDesc().findAll();
    double total = 0;
    for (var item in data) {
      total += item.nominal;
    }
    setState(() {
      _listSimpanan = data;
      _totalSimpanan = total;
    });
  }

  void _showFormDialog([Simpanan? simpanan]) {
    final nominalController = TextEditingController(text: simpanan?.nominal.toStringAsFixed(0) ?? '');
    final ketController = TextEditingController(text: simpanan?.keterangan ?? '');
    String selectedJenis = simpanan?.jenis ?? 'Simpanan Wajib';
    final List<String> jenisOptions = ['Simpanan Pokok', 'Simpanan Wajib', 'Simpanan Sukarela'];

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          title: Text(simpanan == null ? 'Setor Simpanan' : 'Edit Simpanan'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DropdownButtonFormField<String>(
                  value: selectedJenis,
                  items: jenisOptions.map((j) => DropdownMenuItem(value: j, child: Text(j))).toList(),
                  onChanged: (val) => setDialogState(() => selectedJenis = val!),
                  decoration: const InputDecoration(labelText: 'Jenis Simpanan', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: nominalController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Nominal (Rp)', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: ketController,
                  decoration: const InputDecoration(labelText: 'Keterangan / Bulan', border: OutlineInputBorder()),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), child: const Text('Batal')),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white),
              onPressed: () async {
                final nominal = double.tryParse(nominalController.text) ?? 0;
                if (nominal <= 0) return;

                await IsarHelper.isar.writeTxn(() async {
                  if (simpanan == null) {
                    await IsarHelper.isar.simpanans.put(Simpanan(
                      tanggal: DateTime.now(),
                      jenis: selectedJenis,
                      nominal: nominal,
                      keterangan: ketController.text.isEmpty ? '-' : ketController.text,
                    ));
                  } else {
                    simpanan.jenis = selectedJenis;
                    simpanan.nominal = nominal;
                    simpanan.keterangan = ketController.text;
                    await IsarHelper.isar.simpanans.put(simpanan);
                  }
                });
                if (mounted) Navigator.pop(context);
                _loadData();
              },
              child: const Text('Simpan'),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _deleteData(int id) async {
    await IsarHelper.isar.writeTxn(() async {
      await IsarHelper.isar.simpanans.delete(id);
    });
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return KoperasiScaffold(
      title: 'Layanan Simpanan',
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Colors.red.shade50,
            child: Column(
              children: [
                const Text("Total Akumulasi Simpanan", style: TextStyle(color: Colors.black54)),
                const SizedBox(height: 4),
                Text("Rp ${_totalSimpanan.toStringAsFixed(0)}", style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green)),
              ],
            ),
          ),
          Expanded(
            child: _listSimpanan.isEmpty
                ? const Center(child: Text("Belum ada catatan simpanan"))
                : ListView.builder(
                    padding: const EdgeInsets.all(12),
                    itemCount: _listSimpanan.length,
                    itemBuilder: (context, index) {
                      final item = _listSimpanan[index];
                      return Card(
                        elevation: 2,
                        margin: const EdgeInsets.only(bottom: 10),
                        child: ListTile(
                          leading: const CircleAvatar(backgroundColor: Colors.green, child: Icon(Icons.arrow_downward, color: Colors.white)),
                          title: Text(item.jenis, style: const TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text("${item.keterangan} • ${item.tanggal.day}/${item.tanggal.month}/${item.tanggal.year}"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("+ Rp ${item.nominal.toStringAsFixed(0)}", style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 14)),
                              IconButton(icon: const Icon(Icons.edit, size: 20, color: Colors.blue), onPressed: () => _showFormDialog(item)),
                              IconButton(icon: const Icon(Icons.delete, size: 20, color: Colors.red), onPressed: () => _deleteData(item.id)),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        onPressed: () => _showFormDialog(),
        child: const Icon(Icons.add),
      ),
    );
  }
}