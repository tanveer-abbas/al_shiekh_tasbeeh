import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LayoutAddtasbeehDialogbox extends StatelessWidget {
  const LayoutAddtasbeehDialogbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Container(
        child: Container(
          height: Get.height/2.2,
          width:Get.width,
          decoration: BoxDecoration(
            color: Color(0xffe4f5e2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color:Color(0xff033f1d),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                ),
                child: Container(
                  margin: EdgeInsets.all(14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Add New Tasbeeh',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: Get.height/17,
                margin: EdgeInsets.only(left: Get.width/20, right: Get.width/20, top: Get.width/20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                      color: Color(0xff035f08),
                    )
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  cursorColor: Color(0xff035f08),
                  decoration: InputDecoration(
                    hintText: "Tasbeeh Name in English",
                    hintStyle: TextStyle(
                        fontSize: 17
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                height: Get.height/17,
                margin: EdgeInsets.only(left: Get.width/20, right: Get.width/20, top: Get.width/20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                      color: Color(0xff035f08),
                    )
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  cursorColor: Color(0xff035f08),
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    hintText: "اسم التسبيح بالعربية",
                    hintStyle: TextStyle(
                        fontSize: 17
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: Get.width/20, right: Get.width/20, top: Get.width/20),
                  child: Text(
                    'Tasbeeh Limit:',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff033f1d),
                    ),
                  )
              ),
              Container(
                height: Get.height/20,
                margin: EdgeInsets.only(left: Get.width/20, right: Get.width/20, top: Get.width/100),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                      color: Color(0xff035f08),
                    )
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  cursorColor: Color(0xff035f08),
                  decoration: InputDecoration(
                    hintText: "123......",
                    hintStyle: TextStyle(
                        fontSize: 17
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: Get.width/14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      height: Get.height/20,
                      minWidth: Get.width/3.5,
                      color: Color(0xffb30000),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: new Text("Cancel",
                        style: TextStyle(
                            color: Colors.white
                        ),),
                      onPressed: () => {},
                      splashColor: Colors.redAccent,
                    ),
                    SizedBox(
                      width: Get.width/25,
                    ),
                    MaterialButton(
                      height: Get.height/20,
                      minWidth: Get.width/3.5,
                      color: Color(0xc8033f0b),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: new Text("Add",
                        style: TextStyle(
                            color: Colors.white
                        ),),
                      onPressed: () => {},
                      splashColor: Color(0xc83dd952),
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
