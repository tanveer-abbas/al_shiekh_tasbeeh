import 'package:al_shiekh_tasbeeh/views/layouts/layout_tasbeeh_drawer.dart';
import 'package:al_shiekh_tasbeeh/views/screens/screen_duaen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Homepage extends StatefulWidget {
   const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: new Drawer(
          backgroundColor: Color(0xff033f1d),
          child: LayoutTasbeehDrawer()
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.account_circle,
              size: 27,
            ),
            color: Colors.white,
          ),
          backgroundColor:Color(0xff033f1d),
          elevation: 0.0,
          title: Text('Al-Shiekh Tasbeeh',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white)),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu,
                size: 25,
              ),
              onPressed: () {
                _scaffoldKey.currentState!.openEndDrawer();
              },
              color: Colors.white,
            )
          ],
        ),
      ),
      body:Container(
          alignment: Alignment.center,
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/duabackground.png')
            ),
          ),
          child: Column(
            children: [
              Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Get.to(ScreenDuaen());
                            },
                            child: Container(
                              margin: EdgeInsets.only( right: 7,bottom: Get.height/26),
                              height: Get.height/18,
                              width: Get.height/18,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(Get.height/25)),
                                color: Color(0xc8033f0b),
                              ),
                              child: Container(
                                margin: EdgeInsets.all(7),
                                child: Image.asset('assets/dua/handRaised.png',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(bottom: Get.height/26),
                            height: Get.height/18,
                            width: Get.width/1.6,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(60), bottomLeft: Radius.circular(60)),
                                color: Color(0xc8033f0b)
                            ),
                            child: Text(
                              " Supplications / مسنون دعائیں ",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 2, top: 5),
                            height: Get.height/10,
                            width: Get.height/16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(Get.height/25), bottomRight:Radius.circular(Get.height/25)),
                              color: Color(0xc8033f0b),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 5),
                                    height: Get.height/18,
                                    width: Get.height/18,
                                    child: Icon(
                                      Icons.save,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Image(image: AssetImage("assets/dua/dua1.png"),
                        height: 180,
                        width: 180,
                        color: Color(0xff033f1d),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text("Subhanallah",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color:Color(0xff033f1d)
                          ),
                        ),
                      ),
                      Container(
                        height: Get.width/1.4,
                        width: Get.width/1.35,
                        margin: EdgeInsets.only(top: Get.height/30),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/counter.png')
                            )
                        ),
                        child: Expanded(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 14),
                                height: 65,
                                width: 140,
                                decoration: BoxDecoration(
                                    color: Color(0xffd2841f),
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(width: 5,
                                        color: Color(0xa9ae761b)
                                    )
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(right: 70),
                                    height: 37,
                                    width: 37,
                                    decoration: BoxDecoration(
                                        color: Color(0xffd2841f),
                                        borderRadius: BorderRadius.all(Radius.circular(50)),
                                        border: Border.all(width: 4,
                                            color: Color(0xa9ae761b)
                                        )
                                    ),
                                    child: Icon(Icons.refresh,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                alignment: Alignment.center,
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Color(0xffb16715),
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    border: Border.all(width: 9,
                                        color: Color(0xa9ae761b)
                                    )
                                ),
                                child: Text(
                                  "Tap",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  )
              ),

            ],
          )
      ),
    );
  }
}
