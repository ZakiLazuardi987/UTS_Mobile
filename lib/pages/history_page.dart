import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Dua tab, yaitu Pending dan Done
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Transaction History'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Pending'),
              Tab(text: 'Done'),
            ],
            indicatorColor: Colors.red,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
          ),
        ),
        body: const TabBarView(
          children: [
            PendingTab(), // Tab "Pending"
            DoneTab(),    // Tab "Done"
          ],
        ),
      ),
    );
  }
}

class PendingTab extends StatelessWidget {
  const PendingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/transaction.png', // Ganti dengan path gambar yang sesuai
              height: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              'All transaction is completed!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              'Any pending transaction will appear in this page',
              style: TextStyle(fontSize: 14, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class DoneTab extends StatelessWidget {
  const DoneTab({super.key});

  @override
  Widget build(BuildContext context) {
    final transactions = [
      {
        'merchant': 'Indomaret_purchase',
        'amount': 'Rp45.400',
        'date': '15 Sep 2024, 17:32 WIB',
        'status': 'Success',
      },
      {
        'merchant': 'Indomaret_purchase',
        'amount': 'Rp55.000',
        'date': '15 Sep 2024, 17:28 WIB',
        'status': 'Success',
      },
      {
        'merchant': 'Top Up from Bank',
        'amount': 'Rp100.000',
        'date': '15 Sep 2024, 17:26 WIB',
        'status': 'Success',
      },
      {
        'merchant': 'QRIS',
        'amount': 'Rp21.000',
        'date': '31 Aug 2024, 11:49 WIB',
        'status': 'Success',
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        return Card(
          elevation: 2,
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nama transaksi dan nominal di sebelah kanan
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      transaction['merchant']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      transaction['amount']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                // Tanggal di bawah nama merchant
                Text(
                  transaction['date']!,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 10),
                // Status dan indikator bar di bawah nominal
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      transaction['status']!,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: transaction['status'] == 'Fail' ? Colors.red : Colors.green,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      height: 16,
                      width: 4,
                      decoration: BoxDecoration(
                        color: transaction['status'] == 'Fail' ? Colors.red : Colors.green,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(), // Garis horizontal
                // Keterangan di bawah garis
                Text(
                  transaction['merchant']!, // Menggunakan keterangan sesuai transaksi
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
