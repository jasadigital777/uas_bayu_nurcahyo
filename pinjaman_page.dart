import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import '../models/pinjaman_model.dart';
import '../helpers/isar_helper.dart';
import '../widgets/koperasi_scaffold.dart';

class PinjamanPage extends StatefulWidget {
  const PinjamanPage({super.key});

  @override
  State<PinjamanPage> createState() => _PinjamanPageState();
}

class _PinjamanPageState extends State<PinjamanPage> {
  List<Pinjaman> _listPinjaman = [];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final data = await IsarHelper.isar.pinjamans.where().sortByTanggalDesc().findAll();
    setState(() => _listPinjaman = data);
  }

  void _showFormDialog([Pinjaman? pinjaman]) {
    final nominalController = TextEditingController(text: pinjaman?.nominal.toStringAsFixed(0) ?? '');
    int selectedTenor = pinjaman?.tenorBulan ?? 6;
    final List<int> tenorOptions = [3, 6, 12, 24];

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          title: Text(pinjaman == null ? 'Ajukan Pinjaman' : 'Edit Pinjaman'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nominalController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Nominal Pinjaman (Rp)', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<int>(
                  value: selectedTenor,
                  items: tenorOptions.map((t) => DropdownMenuItem(value: t, child: Text("$t Bulan"))).toList(),
                  onChanged: (val) => setDialogState(() => selectedTenor = val!),
                  decoration: const InputDecoration(labelText: 'Tenor Angsuran', border: OutlineInputBorder()),
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

                // Kalkulasi angsuran sederhana tanpa bunga (atau bisa ditambahkan flat 1%)
                final angsuran = nominal / selectedTenor;

                await IsarHelper.isar.writeTxn(() async {
                  if (pinjaman == null) {
                    await IsarHelper.isar.pinjamans.put(Pinjaman(
                      tanggal: DateTime.now(),
                      nominal: nominal,
                      tenorBulan: selectedTenor,
                      angsuranPerBulan: angsuran,
                      status: 'Berjalan',
                    ));
                  } else {
                    pinjaman.nominal = nominal;
                    pinjaman.tenorBulan = selectedTenor;
                    pinjaman.angsuranPerBulan = angsuran;
                    await IsarHelper.isar.pinjamans.put(pinjaman);
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

  Future<void> _toggleLunas(Pinjaman pinjaman) async {
    await IsarHelper.isar.writeTxn(() async {
      pinjaman.status = pinjaman.status == 'Berjalan' ? 'Lunas' : 'Berjalan';
      await IsarHelper.isar.pinjamans.put(pinjaman);
    });
    _loadData();
  }

  Future<void> _deleteData(int id) async {
    await IsarHelper.isar.writeTxn(() async {
      await IsarHelper.isar.pinjamans.delete(id);
    });
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return KoperasiScaffold(
      title: 'Layanan Pinjaman',
      body: _listPinjaman.isEmpty
          ? const Center(child: Text("Belum ada riwayat pinjaman"))
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: _listPinjaman.length,
              itemBuilder: (context, index) {
                final item = _listPinjaman[index];
                final isLunas = item.status == 'Lunas';

                return Card(
                  elevation: 2,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: isLunas ? Colors.blue : Colors.orange,
                      child: Icon(isLunas ? Icons.check : Icons.access_time, color: Colors.white),
                    ),
                    title: Text("Rp ${item.nominal.toStringAsFixed(0)}", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    subtitle: Text("Tenor: ${item.tenorBulan} bln • Angsuran: Rp ${item.angsuranPerBulan.toStringAsFixed(0)}/bln\nStatus: ${item.status}"),
                    isThreeLine: true,
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          tooltip: isLunas ? 'Tandai Berjalan' : 'Tandai Lunas',
                          icon: Icon(isLunas ? Icons.replay : Icons.check_circle, color: isLunas ? Colors.grey : Colors.green),
                          onPressed: () => _toggleLunas(item),
                        ),
                        IconButton(icon: const Icon(Icons.edit, size: 20, color: Colors.blue), onPressed: () => _showFormDialog(item)),
                        IconButton(icon: const Icon(Icons.delete, size: 20, color: Colors.red), onPressed: () => _deleteData(item.id)),
                      ],
                    ),
                  ),
                );
              },
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