import 'package:flutter/material.dart';
import 'dashboard_page.dart';
import 'produk_page.dart';
import 'simpanan_page.dart';
import 'pinjaman_page.dart';
import 'login_page.dart'; // Import halaman login untuk arah logout

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;
  
  // Hapus PpobPage dari daftar halaman utama
  final List<Widget> _pages = [
    const DashboardPage(),
    const ProdukPage(),
    const SimpananPage(),
    const PinjamanPage(),
  ];

  // Fungsi untuk menampilkan konfirmasi Keluar / Logout
  void _showLogoutDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Row(
            children: [
              Icon(Icons.logout, color: Colors.red),
              SizedBox(width: 10),
              Text("Konfirmasi Keluar"),
            ],
          ),
          content: const Text("Apakah Anda yakin ingin keluar dari aplikasi Koperasi Merah Putih?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), // Menutup dialog
              child: const Text("Batal", style: TextStyle(color: Colors.grey)),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Navigator.pop(context); // Menutup dialog
                // Menghapus seluruh tumpukan halaman dan kembali ke Login
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                );
              },
              child: const Text("Keluar", style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          // Jika pengguna menekan menu ke-4 (indeks 4 yaitu Logout)
          if (index == 4) {
            _showLogoutDialog();
          } else {
            setState(() => _selectedIndex = index);
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Sembako'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Simpanan'),
          BottomNavigationBarItem(icon: Icon(Icons.monetization_on), label: 'Pinjaman'),
          // Mengganti PPOB dengan ikon dan label Logout
          BottomNavigationBarItem(icon: Icon(Icons.logout, color: Colors.redAccent), label: 'Logout'),
        ],
      ),
    );
  }
}