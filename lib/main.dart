import 'package:flutter/material.dart';
import 'package:listview/second.dart';

void main() {
  runApp(const MaterialApp(
      home: MyApp()
  ));
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var judul = "Persewaan Mobil Murah";
  var body = "Ini adalah Body";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              _buildHeader(),
              const ListTile(
                leading: Icon(Icons.add_shopping_cart),
                title: Text("Ini Halaman Home"),
              ),
              ListTile(
                leading: const Icon(Icons.add_home),
                title: const Text("Penyewaan"),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyWidget(
                        parameter: "A",
                        parameter2: "B",
                      ),
                    ),
                  );
                },
              ),
              const ListTile(
                leading: Icon(Icons.remove_circle),
                title: Text("Pengembalian"),
              ),
            ],
          ),
        ),
      appBar: AppBar(
        title: const Text("Persewaan Mobil Murah"),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const MyWidget(
                  parameter: "A",
                  parameter2: "B",
                ),
              ),
            );
          },
        ),
      body: Column(
          children: [
            const TextField(
              // obscureText: true,
              decoration: InputDecoration(labelText: 'Nama Lengkap'),),
            const TextField(
              //obscureText: true,
              decoration: InputDecoration(labelText: 'Nomor KTP'),),
            const TextField(
              //obscureText: true,
              decoration: InputDecoration(labelText: 'Alamat'),),
            const TextField(
              //obscureText: true,
              decoration: InputDecoration(labelText: 'No Handphone ( Whatsapp )'),),
            const TextField(
              //obscureText: true,
              decoration: InputDecoration(labelText: 'Email'),),
            const SizedBox(
              height: 12.0,
            ),
            ElevatedButton(

              child: const Text('Next'),
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MyApp())
                );
              },)
          ]
      )
    );
  }
}

_buildHeader() {
  return DrawerHeader(
    decoration: const BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
    child: Column(
      children: const [
        CircleAvatar(
          backgroundImage: AssetImage('windows/runner/resources/IMG_3422.png'),
          radius: 40,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Persewaan Mobil Murah',
          style: TextStyle(color: Colors.white, fontSize: 15),
        )
      ],
    ),
  );
}