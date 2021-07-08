import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tawk/flutter_tawk.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WixChat extends StatefulWidget {
  const WixChat({Key? key}) : super(key: key);

  @override
  _WixChatState createState() => _WixChatState();
}

class _WixChatState extends State<WixChat> {
  FirebaseAuth auth = FirebaseAuth.instance;

  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Tawk(
              directChatLink:
              'https://tawk.to/chat/60db6d2f7f4b000ac03a3399/1f9ci50h9',
              visitor: TawkVisitor(
                name: "Mustafa Yıldız",
                email: "mustafa@gmail.com",
              )),
        ),
      ),
    );
  }
}
