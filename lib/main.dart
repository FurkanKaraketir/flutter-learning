import 'package:flutter/material.dart';
import 'ezgi_detay.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

List ezgiler = [];

class FirestoreService {
  final FirebaseFirestore db = FirebaseFirestore.instance;

  Future<List<Map<String, dynamic>>> getEzgiler() async {
    QuerySnapshot querySnapshot = await db.collection('ezgiler').get();
    return querySnapshot.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: const FirebaseOptions(
        apiKey: "AIzaSyBcRMlBqZUfSJv5dT2V5XZcTqX5xonsTWc",
        authDomain: "testproject-23ee9.firebaseapp.com",
        projectId: "testproject-23ee9",
        storageBucket: "testproject-23ee9.appspot.com",
        messagingSenderId: "1047885870282",
        appId: "1:1047885870282:web:1fb4bd3b94e5b3ad467033",
        measurementId: "G-3YQPZVN0GX"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Marş Ezgi Uygulaması',
      home: EzgiListesi(),
    );
  }
}

class EzgiListesi extends StatefulWidget {
  const EzgiListesi({super.key});

  @override
  _EzgiListesiState createState() => _EzgiListesiState();
}

class _EzgiListesiState extends State<EzgiListesi> {
  @override
  void initState() {
    super.initState();
    _getEzgiler();
  }

  Future<void> _getEzgiler() async {
    final FirebaseFirestore db = FirebaseFirestore.instance;

    db.collection("ezgiler").get().then(
      (querySnapshot) {
        for (var docSnapshot in querySnapshot.docs) {
          // new EzgiDetay object
          EzgiDetay ezgiDetay = EzgiDetay(
            ezgiAdi: docSnapshot.data()['ezgiAdi'],
            akorlar: docSnapshot.data()['akorlar'],
          );
          ezgiler.add(ezgiDetay);
        }
      },
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ezgi Listesi'),
      ),
      body: ListView.builder(
        itemCount: ezgiler.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(ezgiler[index].ezgiAdi),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EzgiDetay(
                    ezgiAdi: ezgiler[index].ezgiAdi,
                    akorlar: ezgiler[index].akorlar,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
