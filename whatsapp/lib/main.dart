import 'package:flutter/material.dart';

import 'whatsapp_home.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(
          primaryColor: Color(0xff075E54), accentColor: Color(0xff25D366)),
      home: WhatsAppHome(),
    ));
