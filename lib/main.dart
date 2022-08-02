import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SizedBox(
          height: 500,
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('images/Snape.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              const Text(
                'Severus Snape',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.5,
                ),
              ),
              const Text(
                'The potions Master',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              Container(
                // color: Colors.blue,
                margin: const EdgeInsets.symmetric(horizontal: 100),
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.phone_iphone,
                      color: Colors.black54,
                      size: 20,
                    ),
                    Text(
                      '09-123 123 123',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // color: Colors.blue,
                margin: const EdgeInsets.symmetric(horizontal: 100),
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.mail,
                      color: Colors.black54,
                      size: 20,
                    ),
                    Text(
                      'always@lily.org',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
