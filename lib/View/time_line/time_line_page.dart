import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sns_udemy/model/account.dart';
import 'package:sns_udemy/model/post.dart';

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
    ImagePath: "https://pbs.twimg.com/profile_images/1318213516935917568/mbU5hOLy_400x400.png",
    createdTime: DateTime.now(),
    updatedTIme: DateTime.now(),
  );

  List<Post> postList = [
    Post(id: '1', content: '初めまして', postAccountId: '1', createdTime: DateTime.now()),
    Post(id: '2', content: '久しぶり', postAccountId: '1', createdTime: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'タイムライン',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Theme.of(context).canvasColor, // Scaffoldと同じ色になる
          elevation: 1,
        ),
        body: ListView.builder(
          itemCount: postList.length,
          itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  border: index == 0 ? Border(
                    top: BorderSide(color: Colors.grey, width: 0),
                    bottom: BorderSide(color: Colors.grey, width: 0),
                  ) : Border(bottom: BorderSide(color: Colors.grey, width: 0),)
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
                      foregroundImage: NetworkImage(myAccount.ImagePath),
                    ),
                    Expanded(
                      child: Container( // このcontainerは必須ではない
                        // color: Colors.red,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(myAccount.name, style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text('@${myAccount.userId}', style: TextStyle(color: Colors.grey),),
                                  ],
                                ),
                                Text(DateFormat('M/d/yy').format(postList[index].createdTime!))
                              ],
                            ),
                            Text(postList[index].content),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
          },
        ),
      );
  }
}