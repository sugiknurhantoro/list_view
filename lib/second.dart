import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:listview/main.dart';


class MyWidget extends StatelessWidget {
  final String parameter;
  final String parameter2;
  const MyWidget(
  {super.key, required this.parameter, required this.parameter2});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['Xenia', 'Agya', 'Sigra','Innova', 'Innova Reborn', 'Livina','Brio', 'Jazz', 'Mobilio'];
    final List<int> colorCodes = <int>[100,200,100,200,100,200,100,200,100];
    return Scaffold(
        appBar: AppBar(
          title: const Text("Persewaan Mobil Murah"),),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {

              children: [
                Text("Login Telah Berhasil"),
                Text(this.parameter2),
              ];
              ElevatedButton(
                child: const Text("Kembali"),
                onPressed: () {
                Navigator.pop(context);
                });
              ElevatedButton(
                child: const Text("Keluar"),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const MyApp()),
                  );
                });

              return Container(
                height: 100,
                color: Colors.blue[colorCodes[index]],
                child: Center(child: Text('list ${entries[index]}'
                )
                ),
              );

            }// child: ListView(
            //   padding: const EdgeInsets.all(8),
            //   children: <Widget>[
            //     Container(
            //       height: 50,
            //       color: Colors.amber[600],
            //       child: const Center(child: Text("a")),
            //     ),
            //     Container(
            //       height: 50,
            //       color: Colors.amber[600],
            //       child: const Center(child: Text("b")),
            //     ),
            //   ],
            // )

            ));
    }
}