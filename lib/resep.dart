
import 'dart:ui';

import 'package:flutter/material.dart';

class resep extends StatefulWidget {


  @override
  State<resep> createState() => _resepState();
}

class _resepState extends State<resep> {
  String _val =" ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Pilih jenis bala bala yang akan kamu buat ! :", 
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'bdg',
                  groupValue: _val,
                  onChanged: (value) {
                    setState(() {
                      _val = value!;
                    });
                  },
                ),
                title: const Text('Bala Bala Bandung'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'mdn',
                  groupValue: _val,
                  onChanged: (value) {
                    setState(() {
                      _val = value!;
                    });
                  },
                ),
                title: const Text('Bala Bala Medan'),
              ),
                if (_val == "bdg")
                SizedBox(height: 10,),
                Text(
                    _val=="bdg"?"Resep Bala Bala Bandung":"Resep Bala Bala Medan",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Table(
                    defaultColumnWidth: FixedColumnWidth(200),
                    border: TableBorder.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 2
                    ),
                    children: [
                      TableRow(
                        children: [
                          Column(children: [Text("Nama Bahan",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)],),
                          Column(children: [Text("Jumlah",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)],)
                        ]
                      ),
                      TableRow(
                        children: [
                          Column(children: [Text(_val=="bdg"?"Sayuran( Kol & wortel)":"sayuran (Daun Kucai)")],),
                          Column(children: [Text("200gr")],)
                        ]
                      ),
                      TableRow(
                        children: [
                          Column(children: [Text("Larutan Tepung Terigu")],),
                          Column(children: [Text("300gr")],)
                        ]
                      ),
                      TableRow(
                        children: [
                          Column(children: [Text("Bumbu")]),
                          Column(children: [Text("Secukupnya")],)
                        ]
                      )
                    ],
                  ),
                )
            ],
          ),
        )
      )  
    );
  }
}