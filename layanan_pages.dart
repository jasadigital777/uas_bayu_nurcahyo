import 'package:flutter/material.dart';
import '../widgets/koperasi_scaffold.dart';

class SimpananPage extends StatelessWidget {
  const SimpananPage({super.key});
  @override
  Widget build(BuildContext context) => const KoperasiScaffold(
    title: 'Layanan Simpanan',
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_balance_wallet, size: 80, color: Colors.red),
          SizedBox(height: 16),
          Text("Simpanan Pokok, Wajib & Sukarela", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text("Kelola tabungan masa depan Anda bersama koperasi.", style: TextStyle(color: Colors.grey)),
        ],
      ),
    ),
  );
}

class PinjamanPage extends StatelessWidget {
  const PinjamanPage({super.key});
  @override
  Widget build(BuildContext context) => const KoperasiScaffold(
    title: 'Layanan Pinjaman',
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.monetization_on, size: 80, color: Colors.red),
          SizedBox(height: 16),
          Text("Pengajuan & Histori Pinjaman", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text("Proses cepat dengan bunga rendah untuk anggota.", style: TextStyle(color: Colors.grey)),
        ],
      ),
    ),
  );
}

class PpobPage extends StatelessWidget {
  const PpobPage({super.key});
  @override
  Widget build(BuildContext context) => const KoperasiScaffold(
    title: 'Layanan PPOB',
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.receipt_long, size: 80, color: Colors.red),
          SizedBox(height: 16),
          Text("Bayar Tagihan & Beli Pulsa", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text("PLN, PDAM, BPJS, Pulsa & Paket Data siap 24 Jam.", style: TextStyle(color: Colors.grey)),
        ],
      ),
    ),
  );
}