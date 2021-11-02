import 'package:flutter/material.dart';import 'package:tibiex/listcards/bottom_bar.dart';class CardDetail extends StatelessWidget {  final assetPath, cardprice, cardname;  CardDetail({this.assetPath, this.cardprice, this.cardname});  @override  Widget build(BuildContext context) {    return Scaffold(        appBar: AppBar(          backgroundColor: Color(0xff202343),          elevation: 0.0,          centerTitle: true,          leading: IconButton(            icon: Icon(              Icons.arrow_back,              color: Colors.white,            ),            onPressed: () {              Navigator.of(context).pop();            },          ),          title: Row(            mainAxisAlignment: MainAxisAlignment.center,            children: [              Image.asset(                'images/logo.png',                fit: BoxFit.contain,                height: 20,              ),            ],          ),          actions: <Widget>[            Padding(              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),              child: GestureDetector(                onTap: () {},                child: Text(                  "Balans/AZN",                  style: TextStyle(                    color: Colors.white,                    fontSize: 11,                  ),                ),              ),            ),          ],        ),        body: ListView(children: [          SizedBox(height: 15.0),          Padding(            padding: EdgeInsets.only(left: 20.0),            child: Text('Mehsul adi',                style: TextStyle(                    fontFamily: 'Varela',                    fontSize: 42.0,                    fontWeight: FontWeight.bold,                    color: Color(0xFFF36D2C))),          ),          SizedBox(height: 15.0),          Hero(              tag: assetPath,              child: Image.asset(assetPath,                  height: 150.0, width: 100.0, fit: BoxFit.contain)),          SizedBox(height: 30.0),          Center(            child: Text(cardprice,                style: TextStyle(                    fontFamily: 'Varela',                    fontSize: 22.0,                    fontWeight: FontWeight.bold,                    color: Color(0xFFF17532))),          ),          SizedBox(height: 10.0),          Center(            child: Text(cardname,                style: TextStyle(                    color: Color(0xFF575E67),                    fontFamily: 'Varela',                    fontSize: 24.0)),          ),          SizedBox(height: 20.0),          Center(            child: Container(              width: MediaQuery.of(context).size.width - 50.0,              child: Text('Mehsul haqinda melumat.......',                  textAlign: TextAlign.center,                  style: TextStyle(                      fontFamily: 'Varela',                      fontSize: 14.0,                      color: Color(0xFFB4B8B9))),            ),          ),          SizedBox(height: 25.0),          Center(              child: Container(                  width: MediaQuery.of(context).size.width - 50.0,                  height: 50.0,                  decoration: BoxDecoration(                      borderRadius: BorderRadius.circular(25.0),                      color: Color(0xFF17B54B)),                  child: Center(                    child: TextButton(                      onPressed: () {},                      child: Text(                          'Karta elave et',                          style: TextStyle(                              fontFamily: 'Varela',                              fontSize: 14.0,                              fontWeight: FontWeight.bold,                              color: Colors.white),                        ),                    ),                  )))        ]),        floatingActionButton: Container(          height: 50.0,          width: 50.0,          child: FittedBox(            child: FloatingActionButton(              backgroundColor: Colors.green,              onPressed: () {},              child: Icon(                Icons.add,                color: Colors.white,              ),            ),          ),        ),        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,        bottomNavigationBar: BottomBar());  }}