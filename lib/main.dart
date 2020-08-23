import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Cars'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        children: [
          CarWidget("test 1", "m3",
              "https://cdn2.buyacar.co.uk/sites/buyacar/files/styles/w860/public/alfa-romeo-giulia67-1_0.jpg?itok=cM6fGydG"),
          CarWidget("test 2", "m2",
              "https://www.extremetech.com/wp-content/uploads/2019/12/SONATA-hero-option1-764A5360-edit-640x354.jpg"),
          CarWidget("test 3", "m3",
              "https://media.wired.com/photos/5d09594a62bcb0c9752779d9/1:1/w_1500,h_1500,c_limit/Transpo_G70_TA-518126.jpg")
        ],
      ),
    );
  }
}

class CarWidget extends StatelessWidget {
  final String make;
  final String model;
  final String imageSrc;

  CarWidget(this.make, this.model, this.imageSrc);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          child: Center(
            child: Column(
              children: [
                Text(
                  '$make $model',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.only(top: 16)),
                Image.network(
                  imageSrc,
                  width: 300,
                  height: 150,
                )
              ],
            ),
          ),
          decoration: BoxDecoration(border: Border.all()),
          padding: EdgeInsets.all(20),
        ));
  }
}
