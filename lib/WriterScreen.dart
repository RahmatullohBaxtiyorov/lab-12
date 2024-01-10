import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SaveDataScreen extends StatefulWidget {
  const SaveDataScreen({super.key});



  @override
  State<SaveDataScreen> createState() => _SaveDataScreenState();
}

class _SaveDataScreenState extends State<SaveDataScreen> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Save Data'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _textController,
            decoration: const InputDecoration(
              labelText: 'Enter data to save',
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              final data = _textController.text;
              await FirebaseFirestore.instance.collection('MyCollection').add({
                'data': data,
              });
              _textController.clear();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Data saved successfully')),
              );
            },
            child: const Text('Save Data'),
          ),
          ElevatedButton(
           onPressed: ()=>{Navigator.of(context).pushNamed('/read')},
            child: const Text('read data'),
          ),

        ],
      ),
    );
  }
}
