import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LayoutTasbeehDrawer extends StatefulWidget {
  const LayoutTasbeehDrawer({Key? key}) : super(key: key);

  @override
  _LayoutTasbeehDrawerState createState() => _LayoutTasbeehDrawerState();
}

class _LayoutTasbeehDrawerState extends State<LayoutTasbeehDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/dua/mehrab.PNG',
        ),
        Container(
          margin: EdgeInsets.only(top: Get.height/10),
          width: Get.width/1.5,
          child:Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: Get.height/6.5,
                            width: Get.width/3.4,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1,
                                    color: Colors.white
                                )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/dua/handRaised.png',
                                  height: Get.width/7.2,
                                ),
                                SizedBox(
                                  height: Get.height/57,
                                ),
                                Text("Dua",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white
                                  ),
                                )
                              ],
                            )
                        ),
                        Container(
                          margin: EdgeInsets.only(left: Get.width/100),
                          height: Get.height/6.5,
                          width: Get.width/3.4,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1,
                                  color: Colors.white
                              )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.save,
                                size: Get.width/7.5,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: Get.height/47,
                              ),
                              Text("Saved",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: Get.width/100),
                          height: Get.height/6.5,
                          width: Get.width/3.4,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1,
                                  color: Colors.white
                              )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/rate.png',
                                color: Colors.white,
                                height: Get.width/9.2,
                              ),
                              SizedBox(
                                height: Get.height/37,
                              ),
                              Text("Rate",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: Get.width/100, top: Get.width/100),
                          height: Get.height/6.5,
                          width: Get.width/3.4,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1,
                                  color: Colors.white
                              )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/more.png',
                                color: Colors.white,
                                height: Get.width/9.2,
                              ),
                              SizedBox(
                                height: Get.height/37,
                              ),
                              Text("More",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: Get.height/25),
                height: 1,
                color: Colors.white,
              ),
              Container(
                margin: EdgeInsets.only(top: Get.height/25, left: Get.width/10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.arrow_forward_ios,
                          size: Get.width/20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 17,),
                        Text('Share',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.arrow_forward_ios,
                          size: Get.width/20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 17,),
                        Text('About',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),

      ],
    );
  }
}
