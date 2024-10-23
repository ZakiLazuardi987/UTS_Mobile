import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart'; // Import carousel_slider package

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Membungkus agar bisa di-scroll
        child: Column(
          children: [
            // Stack untuk mengatur background di bagian atas
            Stack(
              children: [
                // Background Image hanya untuk bagian atas
                Container(
                  height: 200, // Sesuaikan tinggi sesuai kebutuhan
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/background_home.jpg'),  // Path ke gambar background
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Konten di atas background
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      // Logo dan ikon-ikon di atas
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/logo.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 4.0,
                                  offset: Offset(1, 1),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white, // Latar belakang putih untuk ikon favorite
                                  borderRadius: BorderRadius.all(Radius.circular(8)), // Kotak dengan sudut melengkung
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 4.0,
                                      offset: Offset(1, 1),
                                    ),
                                  ],
                                ),
                                margin: const EdgeInsets.symmetric(horizontal: 4),
                                padding: const EdgeInsets.all(1),
                                child: IconButton(
                                  icon: const Icon(Icons.favorite_border_rounded, color: Colors.black),
                                  onPressed: () {
                                    // Aksi untuk tombol favorite
                                  },
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white, // Latar belakang putih untuk ikon headset
                                  borderRadius: BorderRadius.all(Radius.circular(8)), // Kotak dengan sudut melengkung
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 4.0,
                                      offset: Offset(1, 1),
                                    ),
                                  ],
                                ),
                                margin: const EdgeInsets.symmetric(horizontal: 8),
                                padding: const EdgeInsets.all(1),
                                child: IconButton(
                                  icon: const Icon(Icons.headset_mic, color: Colors.black),
                                  onPressed: () {
                                    // Aksi untuk tombol bantuan
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 30),

                      // Red Header section with balance details
                      Card(
                        color: const Color.fromARGB(255, 205, 14, 0),
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Hi, Zaki Lazuardi Ferysa Putra',
                                style: TextStyle(color: Colors.white, fontSize: 16),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  // Card for Your Balance
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Your Balance',
                                                style: TextStyle(color: Colors.black, fontSize: 14),
                                              ),
                                              SizedBox(height: 8),
                                              Row(
                                                children: [
                                                  Text(
                                                    'Rp 9.747',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(width: 6),
                                                  Icon(
                                                    Icons.arrow_circle_right,
                                                    color: Colors.red,
                                                    size: 22,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  // Card for Bonus Balance
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Bonus Balance',
                                                style: TextStyle(color: Colors.black, fontSize: 14),
                                              ),
                                              SizedBox(height: 8),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.currency_exchange,
                                                    color: Colors.yellow,
                                                    size: 22,
                                                  ),
                                                  SizedBox(width: 6),
                                                  Text(
                                                    '0',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(width: 6),
                                                  Icon(
                                                    Icons.arrow_circle_right,
                                                    color: Colors.red,
                                                    size: 22,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Quick Actions Row (TopUp, CashOut, Send Money, See All)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Jarak dari tepi layar
              child: SizedBox(
                width: double.infinity, // Sesuaikan agar lebar mengikuti layar dengan jarak dari tepi
                child: Card(
                  color: Colors.white,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded agar sesuai gaya
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        QuickAction(icon: Icons.upload, label: 'TopUp'),
                        QuickAction(icon: Icons.download, label: 'CashOut'),
                        QuickAction(icon: Icons.send, label: 'Send Money'),
                        QuickAction(icon: Icons.grid_view, label: 'See All'),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // Grid Menu
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const <Widget>[
                  MenuItem(icon: Icons.phone_android, label: 'Pulsa/Data'),
                  MenuItem(icon: Icons.flash_on, label: 'Electricity'),
                  MenuItem(icon: Icons.tv, label: 'Cable TV & Internet'),
                  MenuItem(icon: Icons.credit_card, label: 'Kartu Uang Elektronik'),
                  MenuItem(icon: Icons.church, label: 'Gereja'),
                  MenuItem(icon: Icons.favorite, label: 'Infaq'),
                  MenuItem(icon: Icons.volunteer_activism, label: 'Other Donations'),
                  MenuItem(icon: Icons.more_horiz, label: 'More'),
                ],
              ),
            ),

           Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: CarouselSlider(
                items: [
                  // Banner 1 sebagai card
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset('assets/banner1.jpg', fit: BoxFit.cover, width: double.infinity),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Banner 2 sebagai card
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset('assets/banner2.png', fit: BoxFit.cover, width: double.infinity),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Banner 3 sebagai card
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset('assets/banner3.jpg', fit: BoxFit.cover, width: double.infinity),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Banner 4 sebagai card
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset('assets/banner4.png', fit: BoxFit.cover, width: double.infinity),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Banner 5 sebagai card
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset('assets/banner5.jpg', fit: BoxFit.cover, width: double.infinity),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 250,  // Tinggi carousel disesuaikan agar pas dengan konten card
                  autoPlay: true,  // Aktifkan autoplay
                  enlargeCenterPage: true,  // Memperbesar card di tengah
                  viewportFraction: 0.9,  // Menampilkan card lebih lebar
                  aspectRatio: 16 / 9,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class QuickAction extends StatelessWidget {
  final IconData icon;
  final String label;

  const QuickAction({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.red,
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const MenuItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey[200],
          child: Icon(icon, size: 30, color: Colors.red),
        ),
        const SizedBox(height: 8),
        Text(label, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
