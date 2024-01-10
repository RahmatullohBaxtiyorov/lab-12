import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Add this import
import 'WriterScreen.dart';
import 'ReaderScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyB8-lT94mCs28uSG-tdz3V6Ph-AS5A_0_A',
      appId: '1:670192463218:web:375749a18d82872a4341eb',
      messagingSenderId: '670192463218',
      projectId: 'lab12-3554f',
      authDomain: 'lab12-3554f.firebaseapp.com',
      storageBucket: 'lab12-3554f.appspot.com',
      measurementId: 'G-WF463NSCMZ',
    ),
  ); // Initialize Firebase
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firestore Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '',
      routes: {
        '/': (context) => SaveDataScreen(),
        '/read': (context) => ReadDataScreen()
      },
    );
  }
}
