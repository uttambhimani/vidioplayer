
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vidioplayer/home_provider.dart';
import 'package:vidioplayer/home_screen.dart';
import 'package:vidioplayer/second_screen.dart';

import 'img_provider.dart';

void main(){
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider(create: (context)=>Home_Provider()),
        ListenableProvider(create: (context)=>Image_Provider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=>Home_Screen(),
          'sd':(context)=>Second_Screen(),
        },
      ),
    )
  );
}