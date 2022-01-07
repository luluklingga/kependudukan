import 'package:flutter/material.dart';
import 'package:kependudukan/model/data_penduduk_model.dart';

class DataView extends StatefulWidget {
  const DataView({Key? key, required this.datapenduduk}) : super(key: key);
  final DataPendudukModel datapenduduk;
  @override
  _DataViewState createState() => _DataViewState();
}

class _DataViewState extends State<DataView> {
  TextEditingController tinggal = TextEditingController();
  int jumlahtinggal = 0;
  String jenisKelamin = 'laki';
  String statusAlamat = 'alamat';
  String satuanTinggal = 'tahun';
  void increment() {
    setState(() {
      jumlahtinggal++;
    });
    tinggal.text = jumlahtinggal.toString();
  }

  void decrement() {
    setState(() {
      jumlahtinggal--;
    });
    tinggal.text = jumlahtinggal.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Kependudukan'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Labelnama(
              label: 'Nama Lengkap',
              text: widget.datapenduduk.namaLengkap!,
            ),
            Labelnama(
              label: 'NIK (Nomor Induk Kependudukan)',
              text: widget.datapenduduk.NIK!,
            ),
            Labelnama(
              label: 'Kewarganegaraan',
              text: widget.datapenduduk.kewarganegaraan!,
            ),
            Labelnama(
              label: 'Suku Bangsa',
              text: widget.datapenduduk.sukuBangsa!,
            ),
            Labelnama(
              label: 'Agama',
              text: widget.datapenduduk.agama!,
            ),
            Text(
              'Kelahiran',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Labelnama(
              label: 'Tempat Lahir',
              text: widget.datapenduduk.tempatLahir!,
            ),
            Labelnama(
              label: 'Jenis Kelamin',
              text: widget.datapenduduk.jenisKelamin!,
            ),
            Text(
              'Alamat',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Labelnama(
              label: 'Status Alamat',
              text: widget.datapenduduk.statusAlamat!,
            ),
            Labelnama(
              label: 'Jalan/Blok/Dusun',
              text: widget.datapenduduk.jalan!,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 110,
                  child: Labelnama(
                    label: 'Nomor',
                    text: widget.datapenduduk.nomor!,
                  ),
                ),
                Container(
                  width: 110,
                  child: Labelnama(
                    label: 'RT',
                    text: widget.datapenduduk.RT!,
                  ),
                ),
                Container(
                  width: 110,
                  child: Labelnama(
                    label: 'RW',
                    text: widget.datapenduduk.RW!,
                  ),
                ),
              ],
            ),
            Labelnama(
              label: 'Kelurahan/Desa',
              text: widget.datapenduduk.kelurahan!,
            ),
            Labelnama(
              label: 'Kecamatan',
              text: widget.datapenduduk.kecamatan!,
            ),
            Labelnama(
              label: 'Kabupaten',
              text: widget.datapenduduk.kabupaten!,
            ),
            Labelnama(
              label: 'Provinsi',
              text: widget.datapenduduk.provinsi!,
            ),
            Labelnama(
              label: 'Kode Pos',
              text: widget.datapenduduk.kodePos!,
            ),
            Labelnama(
              label: 'Lama Tinggal',
              text: widget.datapenduduk.kodePos!,
            ),
            Labelnama(
              label: 'Tahun',
              text: widget.datapenduduk.kodePos!,
            ),
            Text(
              'Status ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Labelnama(
              label: 'Status Perkawinan',
              text: widget.datapenduduk.statusPerkawinan!,
            ),
            Labelnama(
              label: 'Status Hubungan Keluarga',
              text: widget.datapenduduk.statusHubungan!,
            ),
            Labelnama(
              label: 'Pendidikan Terakhir',
              text: widget.datapenduduk.pendidikanTerakhir!,
            ),
            Labelnama(
              label: 'Pekerjaan',
              text: widget.datapenduduk.pekerjaan!,
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

class Labelnama extends StatelessWidget {
  const Labelnama({
    Key? key,
    required this.label,
    required this.text,
  }) : super(key: key);

  final String label;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          color: const Color(0xffC7C7C7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 9),
                child: Text(
                  label,
                  style: TextStyle(
                      color: Color(0xff1F3E31),
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_right),
                  Text(
                    text,
                    style: TextStyle(color: Color(0xff424242)),
                  )
                ],
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
