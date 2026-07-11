import 'package:isar/isar.dart';

part 'pinjaman_model.g.dart';

@collection
class Pinjaman {
  Id id = Isar.autoIncrement;

  late DateTime tanggal;
  late double nominal;
  late int tenorBulan;
  late double angsuranPerBulan;
  late String status; // Berjalan, Lunas

  Pinjaman({
    required this.tanggal,
    required this.nominal,
    required this.tenorBulan,
    required this.angsuranPerBulan,
    required this.status,
  });
}