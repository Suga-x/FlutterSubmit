import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:submission_dicoding/resep.dart';

class mainmenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bala-Bala App"),
      ),
        body: SafeArea(
          child: SingleChildScrollView(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      Image.asset("img/bala.jpg"),
                      Padding(
                        padding: const EdgeInsets.only(top: 320),
                        child: Text(
                          "Bala Bala",
                          style: TextStyle(
                            fontSize: 60.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                            ),
                          ),
                        )
                    ],
                  ),    
                ),
                Container(
                  margin: EdgeInsets.all(7.0),
                  child: Text(
                    "bala bala merupakan gorengan yang terbuat dari adonan tepung yang dicampur dengan sayur sayuran seperti kol, wortel dan lainya,Bala-bala adalah sebutan masyarakat Jawa Barat terhadap bakwan. Bakwan sendiri adalah kuliner yang diyakini berasal dari Tiongkok. Di daerah selain Jawa Barat, bakwan menjadi kuliner yang cukup dikenal masyarakat luas.",
                    textAlign: TextAlign.center ,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: 165,
                    child: Center(
                      child: MaterialButton(
                        child: Row(
                          children: [
                            Text(
                              "Lihat Resep Bala Bala !",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 11.0),
                            ),
                            Icon(
                              Icons.arrow_forward_ios, size: 18,
                              )
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return resep();
                          }));
                        },
                        textColor: Color.fromARGB(255, 29, 26, 26),
                        color: Color.fromARGB(255, 61, 208, 234),
                        shape: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)),
                      ),
                    ),
                  ), 
              ],
            ),
          ),
        ),    
    );
  }
}