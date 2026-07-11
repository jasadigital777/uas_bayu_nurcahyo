import 'package:isar/isar.dart';

part 'simpanan_model.g.dart';

@collection
class Simpanan {
  Id id = Isar.autoIncrement;

  late DateTime tanggal;
  late String jenis; // Simpanan Pokok, Wajib, Sukarela
  late double nominal;
  late String keterangan;

  Simpanan({
    required this.tanggal,
    required this.jenis,
    required this.nominal,
    required this.keterangan,
  });
}