import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../layouts/layout_addtasbeeh_dialogbox.dart';

class ScreenDuaen extends StatefulWidget {
  const ScreenDuaen({Key? key}) : super(key: key);

  @override
  _ScreenDuaenState createState() => _ScreenDuaenState();
}

class _ScreenDuaenState extends State<ScreenDuaen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xffe4f5e2),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                      height: Get.height/5,
                      width:Get.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/duaa.png')
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: Get.height/20,
                            width:Get.width/2.5 ,
                            decoration: BoxDecoration(
                                color: Color(0xa4ffffff),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomRight: Radius.circular(50))
                            ),
                            child: Text(
                              "Dua",
                              style: TextStyle(
                                  color: Color(0xc8022b09),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none
                              ),
                            ),
                          )
                        ],
                      )
                  ),
                ),
                Container(
                  width: Get.width,
                  height: Get.height/1.26,
                  child: ListView(
                    padding: EdgeInsets.only(top: 10,bottom: 70),
                    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    children: [
                      _buildTasbeehContents(
                        'assets/dua/dua1.png', 'Subhanallah',),
                      _buildTasbeehContents(
                        'assets/dua/dua2.png', 'Alhamdulillah', ),
                      _buildTasbeehContents(
                        'assets/dua/dua3.png', 'Allahu Akber',),
                      _buildTasbeehContents(
                        'assets/dua/dua4.png', 'Astaghfirullah', ),
                      _buildTasbeehContents(
                        'assets/dua/dua5.png', 'Li illah illalah',),
                      _buildTasbeehContents(
                        'assets/dua/dua6.png', 'La hawla wallah....', ),
                    ],

                  ),
                ),

              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              alignment: Alignment.bottomRight,
              color: Color(0xd0033f0b),
              width: Get.width,
              height: Get.height/14,
              child: Container(
                margin: EdgeInsets.only(bottom: Get.height/100, right: Get.width/17),
                height: Get.height/20,
                width: Get.width/2.2,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(Get.width/10))
                ),
                child: GestureDetector(
                  onTap: (){
                    showDialog(context: context,
                        builder: (BuildContext context) {
                          return LayoutAddtasbeehDialogbox();
                        });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left:Get.width/30),
                    child: Row(
                      children: [
                        Icon(Icons.add_rounded,
                          size: 27,
                          color: Color(0xffd27224),
                        ),
                        SizedBox(width: Get.width/50,),
                        Text('Add Tasbeeh',
                          style: TextStyle(
                              color: Color(0xff037916),
                              decoration: TextDecoration.none,
                              fontSize: 16
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget _buildTasbeehContents(String imgPath, String tasbeehName, ) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
        child: InkWell(
            onTap: () {
            },
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        child: Row(children: [
                          SizedBox(width: 10.0),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(tasbeehName,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold)),
                              ])
                        ])),
                    Hero(
                        tag: imgPath,
                        child: Image(
                            image: AssetImage(imgPath),
                            fit: BoxFit.cover,
                            height: 56.0,
                            width: 112.0)),
                  ],
                ),
              ),
            )));
  }
}
