import 'package:application_link_aja/main.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Navigasi ke halaman Home setelah 3 detik
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => BottomNav()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Gambar Splash di bagian tengah
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Row untuk dua logo: LinkAja dan LinkAja Syariah
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logo.jpg', // Path ke logo LinkAja
                      width: 80,
                      height: 80,
                    ),
                    const SizedBox(width: 16), // Jarak antara dua logo
                    Image.asset(
                      'assets/logo_syariah.jpg', // Path ke logo LinkAja Syariah
                      width: 120,
                      height: 120,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Teks "PeDe #APA²BISA"
                const Text(
                  'PeDe #APA²BISA', // Sesuaikan teks Anda
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(height: 16),
                // Gambar splash.png
                Image.asset(
                  'assets/splash.png', // Path ke gambar splash
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          // Versi aplikasi di bagian bawah
          const Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'version 4.37.0', // Sesuaikan versi
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
