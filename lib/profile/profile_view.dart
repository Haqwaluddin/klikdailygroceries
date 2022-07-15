import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klikdailygroceries/utils/color.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return MobilePage();
        } else {
          return WebPage();
        }
      },
    );

  }
}

class MobilePage extends StatelessWidget {
  const MobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        backgroundColor: textcolor2,
      ),
      body: SafeArea(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: Get.height*0.05),
                  child: Container(
                      height: Get.height*0.15,
                      width: Get.width*0.3,
                      child:
                      ClipOval(
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(25), // Image radius
                          child: Image.asset('assets/images/IMG_0077.jpg',
                              fit: BoxFit.cover),
                        ),
                      )
                  ),
                ),
              ),
              SizedBox(height: Get.height*0.01),
              Container(
                height: Get.height*0.05,
                child: Text('Hafiz Aqwaluddin',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20),),
              ),
              SizedBox(height: Get.height*0.05),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  height: Get.height*0.40,
                  child: SingleChildScrollView(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Card(
                            child: ListTile(
                              leading: Image.asset('assets/images/id-card.png'),
                              title: Text("haqwaluddin"),
                            ),
                            elevation: 4,
                            margin: EdgeInsets.all(0),
                            shape:  OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Card(
                            child: ListTile(
                              leading: Image.asset('assets/images/email.png'),
                              title: Text("haqwaluddin@gmail.com"),
                            ),
                            elevation: 4,
                            margin: EdgeInsets.all(0),
                            shape:  OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Card(
                            child: ListTile(
                              leading: Image.asset('assets/images/phone.png'),
                              title: Text("085756769817"),
                            ),
                            elevation: 4,
                            margin: EdgeInsets.all(0),
                            shape:  OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Card(
                            child: ListTile(
                              leading: Image.asset('assets/images/location.png'),
                              title: Text("Dramaga Bogor"),
                            ),
                            elevation: 4,
                            margin: EdgeInsets.all(0),
                            shape:  OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class WebPage extends StatelessWidget {
  const WebPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: textcolor2,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: Get.height*0.05),
                    child: Container(
                        height: Get.height*0.15,
                        width: Get.width*0.1,
                        child:
                        ClipOval(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(25), // Image radius
                            child: Image.asset('assets/images/IMG_0077.jpg',
                                fit: BoxFit.cover),
                          ),
                        )
                    ),
                  ),
                ),
                SizedBox(height: Get.height*0.01),
                Container(
                  height: Get.height*0.05,
                  child: Text('Hafiz Aqwaluddin',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15),),
                ),
                SizedBox(height: Get.height*0.05),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Card(
                                child: ListTile(
                                  leading: Container(
                                      height: 20,
                                      child: Image.asset('assets/images/id-card.png')),
                                  title: Text("haqwaluddin"),
                                ),
                                elevation: 8,
                                margin: EdgeInsets.all(0),
                                shape:  OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.white)
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              flex: 2,
                              child: Card(
                                child: ListTile(
                                  leading: Container(
                                    height: 20,
                                      child: Image.asset('assets/images/email.png')),
                                  title: Text("haqwaluddin@gmail.com"),
                                ),
                                elevation: 8,
                                margin: EdgeInsets.all(0),
                                shape:  OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.white)
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Card(
                                child: ListTile(
                                  leading: Image.asset('assets/images/phone.png'),
                                  title: Text("085756769817"),
                                ),
                                elevation: 8,
                                margin: EdgeInsets.all(0),
                                shape:  OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.white)
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              flex: 2,
                              child: Card(
                                child: ListTile(
                                  leading: Image.asset('assets/images/location.png'),
                                  title: Text("Dramaga Bogor"),
                                ),
                                elevation: 8,
                                margin: EdgeInsets.all(0),
                                shape:  OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.white)
                                ),
                              ),
                            ),
                          ],
                        )

                      ],
                    ),

                )
              ],
            ),
          )),
    );
  }
}

