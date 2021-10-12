import 'package:flutter/material.dart';
import 'package:icon_shadow/icon_shadow.dart';

final baseWidget = MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
    backgroundColor: Colors.black54,
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const IconShadowWidget(
                child: Icon(
                  Icons.lightbulb_outline,
                  color: Colors.lightBlueAccent,
                  size: 36,
                ),
                color: Colors.lightBlueAccent,
              ),
              IconShadowWidget(
                child: const Icon(
                  Icons.lightbulb_outline,
                  color: Colors.lightBlueAccent,
                  size: 36,
                ),
                color: Colors.lightBlueAccent.shade100,
              ),
              const IconShadowWidget(
                child: Icon(
                  Icons.lightbulb_outline,
                  color: Colors.lightBlueAccent,
                  size: 36,
                ),
                color: Colors.lightBlueAccent,
                showShadow: false,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconShadowWidget(
                child: Icon(
                  Icons.home,
                  color: Colors.green.shade900,
                  size: 36,
                ),
                color: Colors.yellowAccent,
              ),
              IconShadowWidget(
                child: Icon(
                  Icons.home,
                  color: Colors.green.shade900,
                  size: 36,
                ),
                color: Colors.green.shade900,
              ),
              IconShadowWidget(
                child: Icon(
                  Icons.home,
                  color: Colors.green.shade900,
                  size: 36,
                ),
                showShadow: false,
                color: Colors.green.shade900,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconShadowWidget(
                child: const Icon(
                  Icons.access_alarm,
                  color: Colors.black54,
                  size: 36,
                ),
                color: Colors.yellowAccent.shade400,
              ),
              IconShadowWidget(
                child: const Icon(
                  Icons.access_alarm,
                  color: Colors.black54,
                  size: 36,
                ),
                color: Colors.red.shade400,
              ),
              IconShadowWidget(
                child: const Icon(
                  Icons.access_alarm,
                  color: Colors.black54,
                  size: 36,
                ),
                color: Colors.cyanAccent.shade400,
              )
            ],
          ),
        ],
      ),
    ),
  ),
);
