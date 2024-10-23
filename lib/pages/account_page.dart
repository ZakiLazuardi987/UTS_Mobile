import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   title: const Text(
      //     'Akun Saya',
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   centerTitle: true,
      //   iconTheme: const IconThemeData(color: Colors.black),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Profile Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'ZAKI LAZUARDI FERYSA PUTRA',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '6281234567890',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 10),
            // Account Options
            ListTile(
              title: const Text('Tipe Akun'),
              subtitle: const Text('Full Service'),
              trailing: const Icon(Icons.arrow_forward_ios),
              iconColor: const Color.fromARGB(255, 255, 0, 0),
              onTap: () {
                // Handle account type tap
              },
            ),
            const Divider(thickness: 1),
            ListTile(
              title: const Text('Pengaturan Akun'),
              trailing: const Icon(Icons.arrow_forward_ios),
              iconColor: const Color.fromARGB(255, 255, 0, 0),
              onTap: () {
                // Handle account settings tap
              },
            ),
            const Divider(thickness: 1),
            ListTile(
              title: const Text('LinkAja Syariah'),
              subtitle: const Text('Tidak Aktif'),
              trailing: const Icon(Icons.arrow_forward_ios),
              iconColor: const Color.fromARGB(255, 255, 0, 0),
              onTap: () {
                // Handle LinkAja Syariah tap
              },
            ),
            const Divider(thickness: 1),
            ListTile(
              title: const Text('Metode Pembayaran'),
              trailing: const Icon(Icons.arrow_forward_ios),
              iconColor: const Color.fromARGB(255, 255, 0, 0),
              onTap: () {
                // Handle payment method tap
              },
            ),
            const Divider(thickness: 10),
            ListTile(
              title: const Text('Email'),
              subtitle: const Text('zakilfp987@gmail.com'),
              trailing: const Icon(Icons.arrow_forward_ios),
              iconColor: const Color.fromARGB(255, 255, 0, 0),
              onTap: () {
                // Handle email tap
              },
            ),
            const Divider(thickness: 1),
            ListTile(
              title: const Text('Pertanyaan Keamanan'),
              subtitle: const Text('Belum Diatur'),
              trailing: const Icon(Icons.arrow_forward_ios),
              iconColor: const Color.fromARGB(255, 255, 0, 0),
              onTap: () {
                // Handle security question tap
              },
            ),
            const Divider(thickness: 1),
            ListTile(
              title: const Text('Pengaturan PIN'),
              trailing: const Icon(Icons.arrow_forward_ios),
              iconColor: const Color.fromARGB(255, 255, 0, 0),
              onTap: () {
                // Handle PIN settings tap
              },
            ),
            const Divider(thickness: 1),
            ListTile(
              title: const Text('Bahasa'),
              subtitle: const Text('Indonesia'),
              trailing: const Icon(Icons.arrow_forward_ios),
              iconColor: const Color.fromARGB(255, 255, 0, 0),
              onTap: () {
                // Handle language tap
              },
            ),
            const Divider(thickness: 10),
            ListTile(
              title: const Text('Ketentuan Layanan'),
              trailing: const Icon(Icons.arrow_forward_ios),
              iconColor: const Color.fromARGB(255, 255, 0, 0),
              onTap: () {
                // Handle terms of service tap
              },
            ),
            const Divider(thickness: 1),
            ListTile(
              title: const Text('Kebijakan Privasi'),
              trailing: const Icon(Icons.arrow_forward_ios),
              iconColor: const Color.fromARGB(255, 255, 0, 0),
              onTap: () {
                // Handle privacy policy tap
              },
            ),
            const Divider(thickness: 1),
            ListTile(
              title: const Text('Pusat Bantuan'),
              trailing: const Icon(Icons.arrow_forward_ios),
              iconColor: const Color.fromARGB(255, 255, 0, 0),
              onTap: () {
                // Handle help center tap
              },
            ),
            const SizedBox(height: 20),
            // "Keluar" Button
            Center(
              child: TextButton(
                onPressed: () {
                  // Handle logout tap
                },
                child: const Text(
                  'Keluar',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
