import 'package:isar/isar.dart';

part 'sembako_model.g.dart';

@collection
class Sembako {
  Id id = Isar.autoIncrement;

  late String nama;
  late double harga;
  late int stok;
  late String kategori;
  
  // Field baru untuk menyimpan path gambar real
  late String? imagePath;

  Sembako({
    required this.nama,
    required this.harga,
    required this.stok,
    required this.kategori,
    this.imagePath, // Boleh null untuk default
  });
}