import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getmethod/Model.dart';
import 'package:getmethod/Secondpage.dart';

void main() {
  //1
  //GetMaterialApp Applies instade of Material App
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.lime[500])),
    home: demo(),
  ));
}

class demo extends StatelessWidget {
  //2.  var, method, or Controllar define only in class then ../ get.put /.. here
  Model m = Get.put(Model());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(
                "Getx Demo",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ))),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Card(
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.lime[200],
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: m.t1,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: m.t2,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(style: ElevatedButton.styleFrom(
                    primary: Colors.lime[500],
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                    onPressed: () {
                      m.total(m.t1.text, m.t2.text);
                    },
                    child: Text(
                      "SUM",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),

                SizedBox(
                  height: 20,
                ),

                //3. obx ... keyword define to use of get method
                Obx(() => Text("SUM = ${m.sum}")),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.to(Secondpage());
                    },
                    child: Text("Go To Secongpage")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
