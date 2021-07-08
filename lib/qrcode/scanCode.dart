import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:travel/qrcode/adana.dart';
import 'package:travel/qrcode/konya.dart';
import 'package:travel/qrcode/web.dart';
import 'bursa.dart';
import 'istanbul.dart';


class ScanCode extends StatefulWidget {
  const ScanCode({Key? key, String? qrCodeResult}) : super(key: key);

  @override
  _ScanCodeState createState() => _ScanCodeState();
}

class _ScanCodeState extends State<ScanCode> {
  String qrCodeResult = "Henüz hiçbir kod taramadınız";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("assets/images/qr.jpeg",),
            SizedBox(height: 15,),
            Text(
              qrCodeResult,
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            TextButton(

              onPressed: () async {
                String codeSanner =
                await BarcodeScanner.scan(); //barcode scnner
                setState(() {
                  qrCodeResult = codeSanner;
                });
                if (qrCodeResult == "bursa") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => newScreen()));
                } else if (qrCodeResult == "istanbul") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Istanbul()));
                }
                else if (qrCodeResult == "adana") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Adana()));
                }
                else if (qrCodeResult == "Konya") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Konya()));
                }
                else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Webview(url: qrCodeResult)));
                }
              },
              child: Container(
                height: 80,
                child: Image.asset("assets/images/tara.png",fit: BoxFit.fill,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
