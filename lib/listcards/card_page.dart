import 'package:flutter/material.dart';import 'package:flutterloginui/listcards/card_detail.dart';class CardPage extends StatelessWidget {  @override  Widget build(BuildContext context) {    return Scaffold(      backgroundColor: Color(0xFFFCFAF8),      body: ListView(        children: <Widget>[          SizedBox(height: 15.0),          Container(            padding: EdgeInsets.only(right: 15.0),            width: MediaQuery.of(context).size.width - 30.0,            height: MediaQuery.of(context).size.height - 50.0,            child: GridView.count(              crossAxisCount: 2,              primary: false,              crossAxisSpacing: 10.0,              mainAxisSpacing: 15.0,              childAspectRatio: 0.8,              children: <Widget>[                _buildCard('No: R8734JRDJH', 'Qiymet:\$3.99',                    'images/shoe' '.png', false, false, context),                _buildCard('No: R8734JRDJH', 'Qiymet:\$123.99', 'images/shoe'                    '.png',                    true, false, context),                _buildCard('No: W8734JRDJH', 'Qiymet:\$632.99', 'images/shoe'                    '.png',                    false, true, context),                _buildCard('No: P8734JRDJH', 'Qiymet:\$566.99', 'images/shoe'                    '.png',                    false, false, context),                _buildCard('No: G8734JRDJH', 'Qiymet:\$234.99', 'images/shoe'                    '.png',                    false, false, context),                _buildCard('No: L8734JRDJH', 'Qiymet:\$456.99', 'images/shoe'                    '.png',                    false, false, context),                _buildCard('No: E8734JRDJH', 'Qiymet:\$678.99', 'images/shoe'                    '.png',                    false, false, context),                _buildCard('No: B8734JRDJH', 'Qiymet:\$890.99', 'images/shoe'                    '.png',                    false, false, context),              ],            ),          ),          SizedBox(            height: 15.0,          )        ],      ),    );  }  Widget _buildCard(String name, String price, String imgPath, bool added,      bool isFavorite, context) {    return Padding(      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),      child: InkWell(        onTap: () {          Navigator.of(context).push(MaterialPageRoute(              builder: (context) => CardDetail(                  assetPath: imgPath, cardprice: price, cardname: name)));        },        child: Container(          decoration: BoxDecoration(              borderRadius: BorderRadius.circular(15.0),              boxShadow: [                BoxShadow(                    color: Colors.grey.withOpacity(0.2),                    spreadRadius: 3.0,                    blurRadius: 5.0)              ],              color: Colors.white),          child: Column(            children: [              Padding(                padding: EdgeInsets.all(1.0),                child: Row(                  mainAxisAlignment: MainAxisAlignment.end,                  children: [                    isFavorite                        ? IconButton(                            iconSize: 15.0,                            icon:                                Icon(Icons.favorite, color: Color(0xFFF36B73)),                            onPressed: () {},                          )                        : IconButton(                            iconSize: 15.0,                            icon: Icon(Icons.favorite_border,                                color: Color(0xFFF36B73)),                            onPressed: () {},                          ),                  ],                ),              ),              Hero(                  tag: imgPath,                  child: Container(                      height: 40.0,                      width: 40.0,                      decoration: BoxDecoration(                          image: DecorationImage(                              image: AssetImage(imgPath),                              fit: BoxFit.contain)))),              SizedBox(height: 10.0),              Text(price,                  style: TextStyle(                      color: Color(0xFF56B259),                      fontFamily: 'Varela',                      fontSize: 13.0)),              Text(name,                  style: TextStyle(                      color: Color(0xFF575E67),                      fontFamily: 'Varela',                      fontSize: 11.0)),              Padding(                  padding: EdgeInsets.all(8.0),                  child: Container(color: Color(0xFFEBEBEB), height: 1.0)),              Padding(                  padding: EdgeInsets.only(left: 5.0, right: 5.0),                  child: Row(                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,                      children: [                        if (!added) ...[                          Icon(Icons.shopping_basket,                              color: Color(0xFFF36D2C), size: 12.0),                          Text('Add to cart',                              style: TextStyle(                                  fontFamily: 'Varela',                                  color: Color(0xFFF36D2C),                                  fontSize: 12.0))                        ],                        if (added) ...[                          Icon(Icons.remove_circle_outline,                              color: Color(0xFFF36D2C), size: 12.0),                          Text('2',                              style: TextStyle(                                  fontFamily: 'Varela',                                  color: Color(0xFFF36D2C),                                  fontWeight: FontWeight.bold,                                  fontSize: 12.0)),                          Icon(Icons.add_circle_outline,                              color: Color(0xFFF36D2C), size: 12.0),                        ]                      ]))            ],          ),        ),      ),    );  }}