import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:isar/isar.dart'; // Perbaikan: Import Isar wajib ditambahkan di sini
import '../models/sembako_model.dart';
import '../helpers/isar_helper.dart';
import '../widgets/koperasi_scaffold.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  List<Sembako> _listSembako = [];
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    // Sekarang method findAll() akan terbaca tanpa error
    final data = await IsarHelper.isar.sembakos.where().findAll();
    setState(() => _listSembako = data);
  }

  void _showFormDialog([Sembako? sembako]) {
    final nameController = TextEditingController(text: sembako?.nama ?? '');
    final priceController = TextEditingController(text: sembako?.harga.toString() ?? '');
    final stockController = TextEditingController(text: sembako?.stok.toString() ?? '');
    String? selectedImagePath = sembako?.imagePath;

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setDialogState) {
          return AlertDialog(
            title: Text(sembako == null ? 'Tambah Sembako' : 'Edit Sembako'),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () async {
                      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
                      if (image != null) {
                        setDialogState(() {
                          selectedImagePath = image.path;
                        });
                      }
                    },
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: selectedImagePath != null && File(selectedImagePath!).existsSync()
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.file(File(selectedImagePath!), fit: BoxFit.cover),
                            )
                          : const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.camera_alt, size: 40, color: Colors.grey),
                                Text("Klik untuk pilih gambar", style: TextStyle(color: Colors.grey, fontSize: 12)),
                              ],
                            ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: nameController,
                    decoration: const InputDecoration(labelText: 'Nama Produk', border: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: priceController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Harga (Rp)', border: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: stockController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Stok', border: OutlineInputBorder()),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(onPressed: () => Navigator.pop(context), child: const Text('Batal')),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white),
                onPressed: () async {
                  final nama = nameController.text;
                  final harga = double.tryParse(priceController.text) ?? 0.0;
                  final stok = int.tryParse(stockController.text) ?? 0;
                  
                  if (nama.isEmpty) return;

                  await IsarHelper.isar.writeTxn(() async {
                    if (sembako == null) {
                      await IsarHelper.isar.sembakos.put(
                        Sembako(nama: nama, harga: harga, stok: stok, kategori: 'Umum', imagePath: selectedImagePath),
                      );
                    } else {
                      sembako.nama = nama;
                      sembako.harga = harga;
                      sembako.stok = stok;
                      sembako.imagePath = selectedImagePath;
                      await IsarHelper.isar.sembakos.put(sembako);
                    }
                  });
                  if (mounted) Navigator.pop(context);
                  _loadData();
                },
                child: const Text('Simpan'),
              )
            ],
          );
        },
      ),
    );
  }

  Future<void> _deleteData(int id) async {
    await IsarHelper.isar.writeTxn(() async {
      await IsarHelper.isar.sembakos.delete(id);
    });
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return KoperasiScaffold(
      title: 'Daftar Sembako',
      body: _listSembako.isEmpty
          ? const Center(child: Text("Belum ada produk Sembako"))
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: _listSembako.length,
              itemBuilder: (context, index) {
                final item = _listSembako[index];
                final hasImage = item.imagePath != null && File(item.imagePath!).existsSync();

                return Card(
                  elevation: 2,
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(8),
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(color: Colors.red.shade50, borderRadius: BorderRadius.circular(8)),
                      child: hasImage
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.file(File(item.imagePath!), fit: BoxFit.cover),
                            )
                          : Padding(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset(
                                'assets/images/logo.jpeg',
                                errorBuilder: (_, __, ___) => const Icon(Icons.shopping_bag, color: Colors.red),
                              ),
                            ),
                    ),
                    title: Text(item.nama, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    subtitle: Text(
                      "Rp ${item.harga.toStringAsFixed(0)} | Stok: ${item.stok}",
                      style: const TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(icon: const Icon(Icons.edit, color: Colors.blue), onPressed: () => _showFormDialog(item)),
                        IconButton(icon: const Icon(Icons.delete, color: Colors.red), onPressed: () => _deleteData(item.id)),
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