import 'package:flutter/material.dart';
import 'package:sns_udemy/model/account.dart';

class TimeLinePage extends StatefulWidget {
  const TimeLinePage({Key? key}) : super(key: key);

  @override
  State<TimeLinePage> createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> {

  Account myAccount = Account(
    id: "1",
    name: "Flutter labo",
    userId: 'urano shota',
    selfIntroduction: 'うい',
    ImagePath: "https://www.apple.com/jp/shop/buy-iphone/iphone-13-pro/6.7%E3%82%A4%E3%83%B3%E3%83%81%E3%83%87%E3%82%A3%E3%82%B9%E3%83%97%E3%83%AC%E3%82%A4-1tb-%E3%82%B7%E3%82%A8%E3%83%A9%E3%83%96%E3%83%AB%E3%83%BC",
    createdTime: DateTime.now(),
    updatedTIme: DateTime.now(),
  );

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(child: Text('タイムライン')),
      );
  }
}