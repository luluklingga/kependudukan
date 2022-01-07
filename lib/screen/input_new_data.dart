import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:kependudukan/model/data_penduduk_model.dart';
import 'package:kependudukan/screen/data_view.dart';

class InputNewData extends StatefulWidget {
  const InputNewData({Key? key}) : super(key: key);

  @override
  _InputNewDataState createState() => _InputNewDataState();
}

class _InputNewDataState extends State<InputNewData> {
  TextEditingController nama = TextEditingController();
  TextEditingController nik = TextEditingController();
  TextEditingController kewarganegaraan = TextEditingController();
  TextEditingController suku = TextEditingController();
  TextEditingController agama = TextEditingController();
  TextEditingController tempat = TextEditingController();
  TextEditingController jalan = TextEditingController();
  TextEditingController nomor = TextEditingController();
  TextEditingController RT = TextEditingController();
  TextEditingController RW = TextEditingController();
  TextEditingController kelurahan = TextEditingController();
  TextEditingController kecamatan = TextEditingController();
  TextEditingController kabupaten = TextEditingController();
  TextEditingController provinsi = TextEditingController();
  TextEditingController kode = TextEditingController();
  TextEditingController tahun = TextEditingController();
  TextEditingController tinggal = TextEditingController();
  TextEditingController perkawinan = TextEditingController();
  TextEditingController hubungan = TextEditingController();
  TextEditingController pendidikan = TextEditingController();
  TextEditingController pekerjaan = TextEditingController();

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
    final InputBorder border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
          width: 1,
          color: Theme.of(context).primaryColor,
        ));
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Data'),
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          children: [
            LabelTextField(
              controller: nama,
              border: border,
              label: 'Nama Lengkap',
              hintText: 'Nama Lengkap',
            ),
            const SizedBox(
              height: 25.0,
            ),
            LabelTextField(
              controller: nik,
              border: border,
              label: 'NIK (Nomor Induk Kependudukan)',
              hintText: 'NIK',
            ),
            const SizedBox(
              height: 25.0,
            ),
            LabelTextField(
              controller: kewarganegaraan,
              border: border,
              label: 'Kewarganegaraan',
              hintText: 'Kewarganegaraan',
            ),
            const SizedBox(
              height: 25.0,
            ),
            LabelTextField(
              controller: suku,
              border: border,
              label: 'Suku Bangsa',
              hintText: 'Suku Bangsa',
            ),
            const SizedBox(
              height: 25.0,
            ),
            LabelTextField(
              controller: agama,
              border: border,
              label: 'Agama',
              hintText: 'Agama',
            ),
            const SizedBox(
              height: 25.0,
            ),
            TitleText(
              title: 'Kelahiran',
            ),
            const SizedBox(
              height: 20.0,
            ),
            LabelTextField(
                controller: tempat,
                border: border,
                label: 'Tempat Lahir',
                hintText: 'Tempat Lahir'),
            const SizedBox(
              height: 10.0,
            ),
            Text('Jenis Kelamin'),
            ListTile(
              title: Text('Laki-Laki'),
              leading: Radio<String>(
                fillColor: MaterialStateProperty.all(Color(0xff377765)),
                value: 'laki',
                groupValue: jenisKelamin,
                onChanged: (value) {
                  setState(() {
                    jenisKelamin = value!;
                  });
                },
              ),
            ),
            ListTile(
                title: Text('Perempuan'),
                leading: Radio<String>(
                  fillColor: MaterialStateProperty.all(Color(0xff377765)),
                  value: 'perempuan',
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value!;
                    });
                  },
                )),
            TitleText(title: 'Alamat'),
            const SizedBox(
              height: 20.0,
            ),
            Text('Status Alamat'),
            ListTile(
              title: Text('Alamat Asli (sesuai KTP)'),
              leading: Radio<String>(
                fillColor: MaterialStateProperty.all(Color(0xff377765)),
                value: 'alamat',
                groupValue: statusAlamat,
                onChanged: (value) {
                  setState(() {
                    statusAlamat = value!;
                  });
                },
              ),
            ),
            ListTile(
                title: Text('Alamat Domisili'),
                leading: Radio<String>(
                  fillColor: MaterialStateProperty.all(Color(0xff377765)),
                  value: 'domisili',
                  groupValue: statusAlamat,
                  onChanged: (value) {
                    setState(() {
                      statusAlamat = value!;
                    });
                  },
                )),
            const SizedBox(
              height: 10.0,
            ),
            LabelTextField(
                controller: jalan,
                border: border,
                label: 'Jalan/Blok/Dusun',
                hintText: 'Jalan/Blok/Dusun'),
            const SizedBox(
              height: 25.0,
            ),
            Row(children: [
              Expanded(
                  child: LabelTextField(
                      controller: nomor,
                      border: border,
                      label: 'Nomor',
                      hintText: 'Nomor')),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: LabelTextField(
                      controller: RT,
                      border: border,
                      label: 'RT',
                      hintText: 'RT')),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: LabelTextField(
                      controller: RW,
                      border: border,
                      label: 'RW',
                      hintText: 'RW')),
            ]),
            const SizedBox(
              height: 25.0,
            ),
            Text(
              'Kelurahan/Desa',
              style: TextStyle(color: Color(0xff1F3E31)),
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextFormField(
                controller: kelurahan,
                decoration: InputDecoration(
                    hintStyle: Theme.of(context).textTheme.bodyText1,
                    filled: true,
                    fillColor: Color(0xffC0D6D1),
                    hintText: 'Kelurahan/Desa',
                    border: border,
                    focusedBorder: border.copyWith(
                        borderSide: BorderSide(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    )),
                    enabledBorder: border)),
            const SizedBox(
              height: 25.0,
            ),
            Text('Kecamatan'),
            const SizedBox(
              height: 12.0,
            ),
            TextFormField(
                controller: kecamatan,
                decoration: InputDecoration(
                    hintStyle: Theme.of(context).textTheme.bodyText1,
                    filled: true,
                    fillColor: Color(0xffC0D6D1),
                    hintText: 'Kecamatan',
                    border: border,
                    focusedBorder: border.copyWith(
                        borderSide: BorderSide(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    )),
                    enabledBorder: border)),
            const SizedBox(
              height: 25.0,
            ),
            Text('Kabupaten'),
            const SizedBox(
              height: 12.0,
            ),
            TextFormField(
                controller: kabupaten,
                decoration: InputDecoration(
                    hintStyle: Theme.of(context).textTheme.bodyText1,
                    filled: true,
                    fillColor: Color(0xffC0D6D1),
                    hintText: 'Kabupaten',
                    border: border,
                    focusedBorder: border.copyWith(
                        borderSide: BorderSide(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    )),
                    enabledBorder: border)),
            const SizedBox(
              height: 25.0,
            ),
            Text('Provinsi'),
            const SizedBox(
              height: 12.0,
            ),
            TextFormField(
                controller: provinsi,
                decoration: InputDecoration(
                    hintStyle: Theme.of(context).textTheme.bodyText1,
                    filled: true,
                    fillColor: Color(0xffC0D6D1),
                    hintText: 'Provinsi',
                    border: border,
                    focusedBorder: border.copyWith(
                        borderSide: BorderSide(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    )),
                    enabledBorder: border)),
            const SizedBox(
              height: 25.0,
            ),
            Text('Kode Pos'),
            const SizedBox(
              height: 12.0,
            ),
            TextFormField(
                controller: kode,
                decoration: InputDecoration(
                    hintStyle: Theme.of(context).textTheme.bodyText1,
                    filled: true,
                    fillColor: Color(0xffC0D6D1),
                    hintText: 'Kode Pos',
                    border: border,
                    focusedBorder: border.copyWith(
                        borderSide: BorderSide(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    )),
                    enabledBorder: border)),
            const SizedBox(
              height: 10.0,
            ),
            const SizedBox(
              height: 15.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Lama Tinggal'),
                const SizedBox(
                  height: 12.0,
                )
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffC0D6D1),
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 1.0),
                      borderRadius: BorderRadius.circular(9)),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: decrement,
                        icon: Icon(Icons.remove),
                      ),
                      SizedBox(
                          width: 140,
                          child: TextFormField(
                            onChanged: (value) {
                              setState(() {
                                jumlahtinggal = int.parse(value);
                              });
                            },
                            keyboardType: TextInputType.number,
                            controller: tinggal,
                            decoration: InputDecoration(
                                hintStyle:
                                    Theme.of(context).textTheme.bodyText1,
                                hintText: 'Lama Tinggal',
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none),
                          )),
                      IconButton(onPressed: increment, icon: Icon(Icons.add))
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 1.0),
                        borderRadius: BorderRadius.circular(9)),
                    width: 100,
                    child: DropdownButton<String>(
                        dropdownColor: Color(0xffC0D6D1),
                        underline: const SizedBox(),
                        value: satuanTinggal,
                        onChanged: (value) {
                          setState(() {
                            satuanTinggal = value!;
                          });
                        },
                        items: [
                          DropdownMenuItem(
                            child: Text('Tahun'),
                            value: 'tahun',
                          ),
                          DropdownMenuItem(
                            child: Text('Bulan'),
                            value: 'bulan',
                          ),
                          DropdownMenuItem(
                            child: Text('Hari'),
                            value: 'hari',
                          ),
                        ])),
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            Text(
              'Status',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text('Status Perkawinan'),
            const SizedBox(
              height: 12.0,
            ),
            TextFormField(
                controller: perkawinan,
                decoration: InputDecoration(
                    hintStyle: Theme.of(context).textTheme.bodyText1,
                    filled: true,
                    fillColor: Color(0xffC0D6D1),
                    hintText: 'Status Perkawinan',
                    border: border,
                    focusedBorder: border.copyWith(
                        borderSide: BorderSide(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    )),
                    enabledBorder: border)),
            const SizedBox(
              height: 25.0,
            ),
            Text('Status Hubungan'),
            const SizedBox(
              height: 12.0,
            ),
            TextFormField(
                controller: hubungan,
                decoration: InputDecoration(
                    hintStyle: Theme.of(context).textTheme.bodyText1,
                    filled: true,
                    fillColor: Color(0xffC0D6D1),
                    hintText: 'Status Hubungan',
                    border: border,
                    focusedBorder: border.copyWith(
                        borderSide: BorderSide(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    )),
                    enabledBorder: border)),
            const SizedBox(
              height: 25.0,
            ),
            Text('Pendidikan Terakhir'),
            const SizedBox(
              height: 12.0,
            ),
            TextFormField(
                controller: pendidikan,
                decoration: InputDecoration(
                    hintStyle: Theme.of(context).textTheme.bodyText1,
                    filled: true,
                    fillColor: Color(0xffC0D6D1),
                    hintText: 'Pendidikan Terakhir',
                    border: border,
                    focusedBorder: border.copyWith(
                        borderSide: BorderSide(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    )),
                    enabledBorder: border)),
            const SizedBox(
              height: 25.0,
            ),
            Text('Pekerjaan'),
            const SizedBox(
              height: 12.0,
            ),
            TextFormField(
                controller: pekerjaan,
                decoration: InputDecoration(
                    hintStyle: Theme.of(context).textTheme.bodyText1,
                    filled: true,
                    fillColor: Color(0xffC0D6D1),
                    hintText: 'Pekerjaan',
                    border: border,
                    focusedBorder: border.copyWith(
                        borderSide: BorderSide(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    )),
                    enabledBorder: border)),
            const SizedBox(
              height: 60.0,
            ),
            ElevatedButton(
              onPressed: () {
                final data = DataPendudukModel(
                  namaLengkap: nama.text,
                  NIK: nik.text,
                  kewarganegaraan: kewarganegaraan.text,
                  sukuBangsa: suku.text,
                  agama: agama.text,
                  tempatLahir: tempat.text,
                  jenisKelamin: jenisKelamin,
                  statusAlamat: statusAlamat,
                  jalan: jalan.text,
                  nomor: nomor.text,
                  RT: RT.text,
                  RW: RW.text,
                  kelurahan: kelurahan.text,
                  kecamatan: kecamatan.text,
                  kabupaten: kabupaten.text,
                  provinsi: provinsi.text,
                  kodePos: kode.text,
                  lamaTinggal: tinggal.text,
                  tahun: tahun.text,
                  statusPerkawinan: perkawinan.text,
                  statusHubungan: hubungan.text,
                  pendidikanTerakhir: pendidikan.text,
                  pekerjaan: pekerjaan.text,
                );
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DataView(
                              datapenduduk: data,
                            )));
              },
              child: const Text(
                'Selesai',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
              ),
            ),
          ]),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}

class LabelTextField extends StatelessWidget {
  const LabelTextField({
    Key? key,
    required this.border,
    required this.label,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  final InputBorder border;
  final String label;
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Color(0xff1F3E31)),
        ),
        const SizedBox(
          height: 12.0,
        ),
        TextFormField(
            controller: controller,
            decoration: InputDecoration(
                hintStyle: Theme.of(context).textTheme.bodyText1,
                filled: true,
                fillColor: Color(0xffC0D6D1),
                hintText: hintText,
                border: border,
                focusedBorder: border.copyWith(
                    borderSide: BorderSide(
                  width: 2,
                  color: Theme.of(context).primaryColor,
                )),
                enabledBorder: border)),
      ],
    );
  }
}
