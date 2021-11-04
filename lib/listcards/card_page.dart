import 'package:floor/floor.dart';import 'package:flutter/material.dart';import 'package:tibiex/listcards/card_detail.dart';import 'package:tibiex/listcards/product_controller.dart';import 'package:get/get.dart';class CardPage extends StatelessWidget {  bool _value = false;  bool isChecked = false;  final MyController c = Get.put(MyController());  @override  Widget build(BuildContext context) {    return Scaffold(      backgroundColor: Color(0xFFFCFAF8),      body: ListView(        children: <Widget>[          Container(            padding: EdgeInsets.only(right: 15.0),            width: MediaQuery.of(context).size.width - 30.0,            height: MediaQuery.of(context).size.height - 50.0,            child: GridView.count(              crossAxisCount: 2,              primary: false,              crossAxisSpacing: 10.0,              mainAxisSpacing: 15.0,              childAspectRatio: 0.8,              children: <Widget>[                _buildCard('No: R8734JRDJH', 'Qiymet: \$3.99',                    'images/shoe' '.png', false, false, context),                _buildCard('No: R8734JRDJH', 'Qiymet: \$123.99',                    'images/shoe' '.png', true, false, context),                _buildCard('No: W8734JRDJH', 'Qiymet: \$632.99',                    'images/shoe' '.png', false, true, context),                _buildCard('No: P8734JRDJH', 'Qiymet: \$566.99',                    'images/shoe' '.png', false, false, context),                _buildCard('No: G8734JRDJH', 'Qiymet: \$234.99',                    'images/shoe' '.png', false, false, context),                _buildCard('No: L8734JRDJH', 'Qiymet: \$456.99',                    'images/shoe' '.png', false, false, context),                _buildCard('No: E8734JRDJH', 'Qiymet: \$678.99',                    'images/shoe' '.png', false, false, context),                _buildCard('No: B8734JRDJH', 'Qiymet: \$890.99',                    'images/shoe' '.png', false, false, context),              ],            ),          ),          SizedBox(            height: 15.0,          )        ],      ),    );  }  Widget _buildCard(String name, String price, String imgPath, bool added,      bool isFavorite, context) {    return Padding(      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),      child: InkWell(        onTap: () {          Navigator.of(context).push(MaterialPageRoute(              builder: (context) => CardDetail(                  assetPath: imgPath, cardprice: price, cardname: name)));        },        child: Container(          decoration: BoxDecoration(              borderRadius: BorderRadius.circular(15.0),              boxShadow: [                BoxShadow(                    color: Colors.grey.withOpacity(0.2),                    spreadRadius: 3.0,                    blurRadius: 5.0)              ],              color: Colors.white),          child: Column(            mainAxisAlignment: MainAxisAlignment.start,            children: [              Padding(                padding: EdgeInsets.all(0.5),                child: Row(                  mainAxisAlignment: MainAxisAlignment.end,                  children: [                    isFavorite                        ? IconButton(                            iconSize: 15.0,                            icon:                                Icon(Icons.favorite, color: Color(0xFFF36B73)),                            onPressed: () {},                          )                        : IconButton(                            iconSize: 15.0,                            icon: Icon(Icons.favorite_border,                                color: Color(0xFFF36B73)),                            onPressed: () {},                          ),                  ],                ),              ),              Hero(                  tag: imgPath,                  child: Container(                      height: 60.0,                      width: 60.0,                      padding: EdgeInsets.all(20.0),                      decoration: BoxDecoration(                        color: Color(0x7A89C4C4),                        borderRadius: BorderRadius.circular(15.0),                        image: DecorationImage(                            image: AssetImage(imgPath), fit: BoxFit.contain),                      ))),              SizedBox(height: 10.0),              Text(price,                  style: TextStyle(                    color: Color(0xFF56B259),                    fontFamily: 'Varela',                    fontSize: 13.0,                    fontWeight: FontWeight.bold,                  )),              Text(name,                  style: TextStyle(                      color: Color(0xFF575E67),                      fontFamily: 'Varela',                      fontSize: 11.0)),              Padding(                  padding: EdgeInsets.all(8.0),                  child: Container(color: Color(0xFFEBEBEB), height: 1.0)),              Column(                children: <Widget>[                  Row(                    mainAxisAlignment: MainAxisAlignment.center,                    children: [                      Container(                        width: 20.0,                        height: 20.0,                        decoration: BoxDecoration(                            color: Colors.grey[300],                            borderRadius: BorderRadius.circular(20)),                        child: IconButton(                          icon: Icon(                            Icons.remove,                            color: Colors.white,                          ),                          onPressed: () => c.decrement(),                        ),                      ),                      SizedBox(                        width: 20,                      ),                      Obx(() => Text(                            "${c.product.toString()}",                            style: TextStyle(                                color: Color(0xFF454545),                                fontFamily: 'Varela',                                fontWeight: FontWeight.bold),                          )),                      SizedBox(                        width: 20,                      ),                      Container(                        width: 20.0,                        height: 20.0,                        decoration: BoxDecoration(                            color: Colors.green[200],                            borderRadius: BorderRadius.circular(20)),                        child: IconButton(                          icon: Icon(                            Icons.add,                            color: Colors.white,                          ),                          onPressed: () => c.increment(),                        ),                      ),                    ],                  )                ],              )            ],          ),        ),      ),    );  }}class Favorite{  final int id;  Favorite({this.id,});}