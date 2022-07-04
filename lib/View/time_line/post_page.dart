import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {

  TextEditingController contentContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
            title: Text(
              '新規投稿',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Theme.of(context).canvasColor, // Scaffoldと同じ色になる
            elevation: 1,
            iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: contentContoller,
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {}, 
                child: Text('投稿')
              )
            ],
          ),
        ),
      );
  }
}