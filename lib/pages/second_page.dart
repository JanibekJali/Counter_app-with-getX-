import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key, this.kelgenSan}) : super(key: key);
  final String kelgenSan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // flutter appBar back button color
        title: const Text('Ekinchi bet'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (() => Navigator.pop(context)),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff46f3f3),
              border: Border.all(
                color: const Color(0xff46f3f3),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            // color: const Color(0xff46f3f3),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 145.0, vertical: 18.0),
              child: Text(
                'Caн: $kelgenSan',
                style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
