import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../models/sembako_model.dart';
import '../models/simpanan_model.dart';
import '../models/pinjaman_model.dart';

class IsarHelper {
  static late Isar isar;

  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      // Mendaftarkan 3 skema database sekaligus
      [SembakoSchema, SimpananSchema, PinjamanSchema],
      directory: dir.path,
    );
    
    // Seed data awal untuk sembako jika masih kosong
    if (await isar.sembakos.count() == 0) {
      await isar.writeTxn(() async {
        await isar.sembakos.putAll([
          Sembako(nama: 'Beras Premium 5kg', harga: 75000, stok: 20, kategori: 'Bahan Pokok'),
          Sembako(nama: 'Minyak Goreng 2L', harga: 34000, stok: 15, kategori: 'Minyak'),
          Sembako(nama: 'Gula Pasir 1kg', harga: 17000, stok: 50, kategori: 'Gula'),
        ]);
      });
    }
  }
}