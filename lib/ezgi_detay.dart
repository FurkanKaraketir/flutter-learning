import 'package:flutter/material.dart';

class EzgiDetay extends StatelessWidget {
  final String ezgiAdi;
  final String akorlar;

  const EzgiDetay({super.key, required this.ezgiAdi, required this.akorlar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ezgiAdi),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Akorlar:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              akorlar,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
