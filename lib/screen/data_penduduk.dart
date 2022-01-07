import 'package:flutter/material.dart';
import 'package:kependudukan/screen/input_new_data.dart';

class DataPenduduk extends StatefulWidget {
  const DataPenduduk({Key? key}) : super(key: key);

  @override
  _DataPendudukState createState() => _DataPendudukState();
}

class _DataPendudukState extends State<DataPenduduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Labelnama(
              label: 'Khansa',
              text: '17 tahun',
              education: 'Pelajar - SMA Kelas 2',
            ),
            Labelnama(
              label: 'Dea',
              text: '17 tahun',
              education: 'Pelajar - SMA Kelas 2',
            ),
            Labelnama(
              label: 'Nayyara',
              text: '17 tahun',
              education: 'Pelajar - SMA Kelas 2',
            ),
            Labelnama(
              label: 'Anggita',
              text: '17 tahun',
              education: 'Pelajar - SMA Kelas 2',
            ),
            Labelnama(
              label: 'Nabila',
              text: '17 tahun',
              education: 'Pelajar - SMA Kelas 2',
            ),
            Labelnama(
              label: 'Zahra',
              text: '17 tahun',
              education: 'Pelajar - SMA Kelas 2',
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Data Penduduk'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => InputNewData(),
              ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class Labelnama extends StatelessWidget {
  const Labelnama({
    Key? key,
    required this.label,
    required this.text,
    required this.education,
  }) : super(key: key);

  final String label;
  final String text;
  final String education;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xffC0D6D1),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  label,
                  style: TextStyle(
                      color: Color(0xff1F1F1F),
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ),
              Divider(
                thickness: 1,
                color: Color(0xff68A697),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  text,
                  style: TextStyle(
                      color: Color(0xff1F1F1F),
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  education,
                  style: TextStyle(
                      color: Color(0xff1F1F1F),
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
