import 'package:flutter/material.dart';

import 'second_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: (() => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => SecondPage(
                        kelgenSan: number.toString(),
                      )),
                ))),
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
                padding: const EdgeInsets.symmetric(
                    horizontal: 145.0, vertical: 18.0),
                child: Text(
                  'Caн: $number',
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 55.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.remove,
                  size: 24.0,
                ),
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  elevation: 1.0,
                  primary: const Color(0xff005ea6),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 15.0,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    number++;
                  });
                },
                child: const Icon(
                  Icons.add,
                ),
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  elevation: 1.0,
                  primary: const Color(0xff005ea6),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 15.0,
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
