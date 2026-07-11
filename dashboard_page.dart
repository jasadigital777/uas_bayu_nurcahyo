import 'package:flutter/material.dart';
import '../widgets/koperasi_scaffold.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return KoperasiScaffold(
      title: 'Dashboard Koperasi',
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Colors.red,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Selamat Datang,", style: TextStyle(color: Colors.white70, fontSize: 14)),
                        SizedBox(height: 4),
                        Text("Anggota Koperasi", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text("Status: Aktif • Merah Putih", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Icon(Icons.verified_user, color: Colors.white, size: 48),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text("Ringkasan Keuangan", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
            const SizedBox(height: 10),
            Card(
              elevation: 2,
              child: Column(
                children: [
                  ListTile(leading: const CircleAvatar(backgroundColor: Colors.green, child: Icon(Icons.save, color: Colors.white)), title: const Text("Total Simpanan"), trailing: const Text("Rp 3.500.000", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.green))),
                  const Divider(height: 1),
                  ListTile(leading: const CircleAvatar(backgroundColor: Colors.orange, child: Icon(Icons.credit_card, color: Colors.white)), title: const Text("Sisa Pinjaman"), trailing: const Text("Rp 1.200.000", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.red))),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text("Layanan Cepat", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
            const SizedBox(height: 10),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.5,
              children: [
                _buildMenuCard(Icons.shopping_cart, "Beli Sembako", Colors.blue),
                _buildMenuCard(Icons.add_circle, "Setor Simpanan", Colors.green),
                _buildMenuCard(Icons.real_estate_agent, "Ajukan Pinjaman", Colors.orange),
                _buildMenuCard(Icons.phone_android, "Bayar PPOB", Colors.purple),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard(IconData icon, String title, Color color) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 36, color: color),
            const SizedBox(height: 8),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}