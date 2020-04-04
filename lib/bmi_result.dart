import 'package:flutter/material.dart';
import 'dart:math';
import 'about_me.dart';

class BMIResult extends StatelessWidget {


  BMIResult({@required this.tinggi_badan, @required this.berat_badan, @required this.nama_lengkap, @required this.tahun_lahir, @required this.jk});
  final int tinggi_badan;
  final int tahun_lahir;
  final int berat_badan;
  final String nama_lengkap;
  final String jk;



  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan/pow(tinggi_badan/100,2);
    String cBMI;
    if (bmi>=28) cBMI="Obesitas";
    else if (bmi>=23) cBMI="Gemuk";
    else if (bmi>=17.5) cBMI="Normal";
    else cBMI="Kurus";


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('KONVERSI BMI'),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20,child: Container(
              color: Colors.white,
            ),),
            new Text(
              "${nama_lengkap}",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.blue
              ),
            ),
            SizedBox(height: 10,child: Container(
              color: Colors.white,
            ),),
            new Text(
              "${jk} ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.blue
              ),
            ),
            SizedBox(height: 10,child: Container(
              color: Colors.white,
            ),),
            new Text(
              "${2020 - tahun_lahir} Tahun",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.blue
              ),
            ),
            
            SizedBox(height: 10,child: Container(
              color: Colors.white,
            ),),
            new Text(
              "ANDA MASUK KE RENTANGAN BMI",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.blue
              ),
            ),
            SizedBox(height: 20,child: Container(
              color: Colors.white,
            ),),
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),


            Text(
              'Rentangan Normal BMI',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
