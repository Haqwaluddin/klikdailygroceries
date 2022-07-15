import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klikdailygroceries/cart/cart_view.dart';
import 'package:klikdailygroceries/service/dbhelper.dart';
import 'package:klikdailygroceries/utils/color.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}
List nameapple = [
  {'name':'Apple Indonesia','harga':25000,'picture':'https://firebasestorage.googleapis.com/v0/b/storageimgsdy.appspot.com/o/apple.png?alt=media&token=ae95dda7-7f07-43c7-8648-c198635844ce'},
  {'name':'Apple Korea','harga':20000,'picture':'https://firebasestorage.googleapis.com/v0/b/storageimgsdy.appspot.com/o/apple.png?alt=media&token=ae95dda7-7f07-43c7-8648-c198635844ce'},
  {'name':'Apple Vietnam','harga':15000,'picture':'https://firebasestorage.googleapis.com/v0/b/storageimgsdy.appspot.com/o/apple.png?alt=media&token=ae95dda7-7f07-43c7-8648-c198635844ce'},
  {'name':'Apple Thailand','harga':10000,'picture':'https://firebasestorage.googleapis.com/v0/b/storageimgsdy.appspot.com/o/apple.png?alt=media&token=ae95dda7-7f07-43c7-8648-c198635844ce'},
  {'name':'Apple China','harga':15000,'picture':'https://firebasestorage.googleapis.com/v0/b/storageimgsdy.appspot.com/o/apple.png?alt=media&token=ae95dda7-7f07-43c7-8648-c198635844ce'},

];

List nameorange = [
  {'name':'Orange Indonesia','harga':25000,'picture':'https://firebasestorage.googleapis.com/v0/b/storageimgsdy.appspot.com/o/orange.png?alt=media&token=096c82da-8524-42b5-87e8-788c1f655faa'},
  {'name':'Orange Korea','harga':20000,'picture':'https://firebasestorage.googleapis.com/v0/b/storageimgsdy.appspot.com/o/orange.png?alt=media&token=096c82da-8524-42b5-87e8-788c1f655faa'},
  {'name':'Orange Vietnam','harga':15000,'picture':'https://firebasestorage.googleapis.com/v0/b/storageimgsdy.appspot.com/o/orange.png?alt=media&token=096c82da-8524-42b5-87e8-788c1f655faa'},
  {'name':'Orange Thailand','harga':10000,'picture':'https://firebasestorage.googleapis.com/v0/b/storageimgsdy.appspot.com/o/orange.png?alt=media&token=096c82da-8524-42b5-87e8-788c1f655faa'},
  {'name':'Orange China','harga':15000,'picture':'https://firebasestorage.googleapis.com/v0/b/storageimgsdy.appspot.com/o/orange.png?alt=media&token=096c82da-8524-42b5-87e8-788c1f655faa'},

];

List namebanana = [
  {'name':'Banana Indonesia','harga':25000,'picture':'https://firebasestorage.googleapis.com/v0/b/storageimgsdy.appspot.com/o/banana.png?alt=media&token=ca592372-9793-4c3f-a0db-969fd61abf8d'},
  {'name':'Banana Korea','harga':20000,'picture':'https://firebasestorage.googleapis.com/v0/b/storageimgsdy.appspot.com/o/banana.png?alt=media&token=ca592372-9793-4c3f-a0db-969fd61abf8d'},
  {'name':'Banana Vietnam','harga':15000,'picture':'https://firebasestorage.googleapis.com/v0/b/storageimgsdy.appspot.com/o/banana.png?alt=media&token=ca592372-9793-4c3f-a0db-969fd61abf8d'},
  {'name':'Banana Thailand','harga':10000,'picture':'https://firebasestorage.googleapis.com/v0/b/storageimgsdy.appspot.com/o/banana.png?alt=media&token=ca592372-9793-4c3f-a0db-969fd61abf8d'},
  {'name':'Banana China','harga':15000,'picture':'https://firebasestorage.googleapis.com/v0/b/storageimgsdy.appspot.com/o/banana.png?alt=media&token=ca592372-9793-4c3f-a0db-969fd61abf8d'},

];


class _HomeViewState extends State<HomeView> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // this.handler = DatabaseHandler();
    // this.handler.initializeDB().whenComplete(() async =>
    // await this.addFruits());
    // setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <=350) {
          return Mobilesmall(gridCount: 2);
        }else if (constraints.maxWidth <= 600) {
          return MobilePage();
        } else if (constraints.maxWidth <= 1200) {
          return WebPage(gridCount: 4);
        } else {
          return WebPage(gridCount: 6);
        }
      },
    );

  }





}

class MobilePage extends StatefulWidget {
  const MobilePage({Key? key}) : super(key: key);

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {

  CategoryType categoryType = CategoryType.Apple;
  bool applebool = true;
  bool orangebool = false;
  bool bananabool = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text('Find',style: TextStyle(
                      color: textcolor1,
                      fontSize: 20,
                    ),),
                    SizedBox(width: 5,),
                    Text('Fresh Groceries',style: TextStyle(
                      color: textcolor2,
                      fontSize: 20,

                    ),),
                    Expanded(child: Container()),
                    Container(
                        child: ClipOval(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(25), // Image radius
                            child: Image.network('https://randomuser.me/api/portraits/med/women/19.jpg',
                                fit: BoxFit.cover),
                          ),
                        )
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17),
                      hintText: 'Find Groceries',
                      prefixIcon: Icon(Icons.search,color: textcolor2,),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: Get.width*1,
                  child: Text('Categories',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),),
                ),
                SizedBox(height: 10,),
                getCategoryUI(),
                Visibility(
                    visible: applebool,
                    child:listcard(nameapple)),
                Visibility(
                    visible: orangebool,
                    child:listcard(nameorange)),
                Visibility(
                    visible: bananabool,
                    child:listcard(namebanana)),
              ],
            ),
          )),
    );
  }
  Widget listcard(List name){
    return Expanded(
      child: Container(
        // color: Colors.red,
        child: ListView.builder(
            itemCount: name.length,
            itemBuilder: (BuildContext context,int index){
              return Container(
                height: 100,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius:BorderRadius.all(Radius.circular(10))),
                        height: 100,
                        width: 100,
                        child: Image.network('${name[index]['picture']}')),
                    title:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name[index]['name']),
                        Text('Rp ${name[index]['harga']}/kg',style: TextStyle(
                            fontSize: 20
                        ),),
                        Text('Rating'),
                      ],
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            onPressed: (){
                              _addItem(name[index]['name'],
                                name[index]['picture'],
                                name[index]['harga'],
                              );
                              // print('harga : ${name[index]['harga']}');
                              Get.to(CartView());
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(textcolor2),
                            ),
                            child: Text('Buy')),
                      ],
                    ),
                  ),
                ),
              );
            }
        ),
      ),
    );


  }

  Widget getCategoryUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Row(
            children: <Widget>[
              getButtonUI(
                  CategoryType.Apple, categoryType == CategoryType.Apple),
              const SizedBox(
                width: 5,
              ),
              getButtonUI(CategoryType.Orange, categoryType == CategoryType.Orange),
              const SizedBox(
                width: 5,
              ),
              getButtonUI(
                  CategoryType.Banana, categoryType == CategoryType.Banana),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget getButtonUI(CategoryType categoryTypeData, bool isSelected) {
    String txt = '';
    if (CategoryType.Apple == categoryTypeData) {
      txt = 'Apple';
    } else if (CategoryType.Orange == categoryTypeData) {
      txt = 'Orange';
    } else if (CategoryType.Banana == categoryTypeData) {
      txt = 'Banana';
    }
    return Expanded(
        child: Container(
            decoration: BoxDecoration(
                color: isSelected ? textcolor2 : Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                border: isSelected
                    ? Border.all(color: textcolor2)
                    : Border.all(color: textcolor2)),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                onTap: () {
                  setState(() {
                    categoryType = categoryTypeData;
                    if(CategoryType.Apple == categoryTypeData){
                      applebool = true;
                      orangebool = false;
                      bananabool = false;
                    } else if(CategoryType.Orange == categoryTypeData){
                      applebool = false;
                      orangebool = true;
                      bananabool = false;
                    }else if(CategoryType.Banana == categoryTypeData){
                      applebool = false;
                      orangebool = false;
                      bananabool = true;
                    }
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 12, bottom: 12, left: 10, right: 10),
                  child: Center(
                    child: Text(
                      txt,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        letterSpacing: 0.27,
                        color: isSelected ? Colors.white : textcolor2,
                      ),
                    ),
                  ),
                ),
              ),
            )));
  }

  Future<void> _addItem(String name, String picture, int harga) async {
    await SQLHelper.createItem(
        name, picture,harga,1);
  }
}

class WebPage extends StatefulWidget {
  const WebPage({Key? key,required this.gridCount}) : super(key: key);
  final int gridCount;

  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {

  CategoryType categoryType = CategoryType.Apple;
  bool applebool = true;
  bool orangebool = false;
  bool bananabool = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text('Find',style: TextStyle(
                      color: textcolor1,
                      fontSize: 17,
                    ),),
                    SizedBox(width: 2,),
                    Text('Fresh Groceries',style: TextStyle(
                      color: textcolor2,
                      fontSize: 17,

                    ),),
                    Expanded(
                        child: Container()),
                    Container(
                        child: ClipOval(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(20), // Image radius
                            child: Image.network('https://randomuser.me/api/portraits/med/women/19.jpg',
                                fit: BoxFit.cover),
                          ),
                        )
                    )
                  ],
                ),
                SizedBox(height: 5,),
                Container(
                  height: 35,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 15),
                      hintText: 'Find Groceries',
                      prefixIcon: Icon(Icons.search,color: textcolor2,
                      size: 15),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(12),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  width: Get.width*1,
                  child: Text('Categories',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                  ),),
                ),
                SizedBox(height: 10,),
                getCategoryUI(),
                Visibility(
                    visible: applebool,
                    child:gridcard(nameapple,)),
                Visibility(
                    visible: orangebool,
                    child:gridcard(nameorange)),
                Visibility(
                    visible: bananabool,
                    child:gridcard(namebanana)),
              ],
            ),
          )),
    );
  }
  Widget gridcard(List name){
    return Expanded(
      child: Container(
        // color: Colors.red,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: name.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                              child: Image.network('${name[index]['picture']}'))),
                      SizedBox(height: 5),
                      Text(name[index]["name"]),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Rp ${name[index]["harga"]}"),
                          ElevatedButton(
                              onPressed: (){
                                _addItem(name[index]['name'],
                                  name[index]['picture'],
                                  name[index]['harga'],
                                );
                                // print('harga : ${name[index]['harga']}');
                                Get.to(CartView());
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(textcolor2),
                              ),
                              child: Text('  Buy  ')),
                        ],
                      ),
                      SizedBox(height: 5)

                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],),
              );}
              )
      ),
    );


  }

  Widget getCategoryUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Row(
            children: <Widget>[
              getButtonUI(
                  CategoryType.Apple, categoryType == CategoryType.Apple),
              const SizedBox(
                width: 5,
              ),
              getButtonUI(CategoryType.Orange, categoryType == CategoryType.Orange),
              const SizedBox(
                width: 5,
              ),
              getButtonUI(
                  CategoryType.Banana, categoryType == CategoryType.Banana),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }

  Widget getButtonUI(CategoryType categoryTypeData, bool isSelected) {
    String txt = '';
    if (CategoryType.Apple == categoryTypeData) {
      txt = 'Apple';
    } else if (CategoryType.Orange == categoryTypeData) {
      txt = 'Orange';
    } else if (CategoryType.Banana == categoryTypeData) {
      txt = 'Banana';
    }
    return Expanded(
        child: Container(
            decoration: BoxDecoration(
                color: isSelected ? textcolor2 : Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                border: isSelected
                    ? Border.all(color: textcolor2)
                    : Border.all(color: textcolor2)),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                onTap: () {
                  setState(() {
                    categoryType = categoryTypeData;
                    if(CategoryType.Apple == categoryTypeData){
                      applebool = true;
                      orangebool = false;
                      bananabool = false;
                    } else if(CategoryType.Orange == categoryTypeData){
                      applebool = false;
                      orangebool = true;
                      bananabool = false;
                    }else if(CategoryType.Banana == categoryTypeData){
                      applebool = false;
                      orangebool = false;
                      bananabool = true;
                    }
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 5, right: 5),
                  child: Center(
                    child: Text(
                      txt,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        letterSpacing: 0.27,
                        color: isSelected ? Colors.white : textcolor2,
                      ),
                    ),
                  ),
                ),
              ),
            )));
  }

  Future<void> _addItem(String name, String picture, int harga) async {
    await SQLHelper.createItem(
        name, picture,harga,1);
  }
}

class Mobilesmall extends StatefulWidget {
  const Mobilesmall({Key? key,required this.gridCount}) : super(key: key);
  final int gridCount;

  @override
  State<Mobilesmall> createState() => _MobilesmallState();
}

class _MobilesmallState extends State<Mobilesmall> {

  CategoryType categoryType = CategoryType.Apple;
  bool applebool = true;
  bool orangebool = false;
  bool bananabool = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text('Find',style: TextStyle(
                      color: textcolor1,
                      fontSize: 17,
                    ),),
                    SizedBox(width: 2,),
                    Text('Fresh Groceries',style: TextStyle(
                      color: textcolor2,
                      fontSize: 17,

                    ),),
                    Expanded(
                        child: Container()),
                    Container(
                        child: ClipOval(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(20), // Image radius
                            child: Image.network('https://randomuser.me/api/portraits/med/women/19.jpg',
                                fit: BoxFit.cover),
                          ),
                        )
                    )
                  ],
                ),
                SizedBox(height: 5,),
                Container(
                  height: 35,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 15),
                      hintText: 'Find Groceries',
                      prefixIcon: Icon(Icons.search,color: textcolor2,
                          size: 15),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(12),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  width: Get.width*1,
                  child: Text('Categories',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                  ),),
                ),
                SizedBox(height: 10,),
                getCategoryUI(),
                Visibility(
                    visible: applebool,
                    child:gridcard(nameapple,)),
                Visibility(
                    visible: orangebool,
                    child:gridcard(nameorange)),
                Visibility(
                    visible: bananabool,
                    child:gridcard(namebanana)),
              ],
            ),
          )),
    );
  }
  Widget gridcard(List name){
    return Expanded(
      child: Container(
        // color: Colors.red,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: name.length,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5,right: 5),
                    child: Column(
                      children: [
                        Expanded(
                            flex: 2,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network('${name[index]['picture']}'))),
                        SizedBox(height: 2),
                        Text(name[index]["name"],style: TextStyle(
                          fontSize: 12
                        ),),
                        SizedBox(height: 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Rp ${name[index]["harga"]}",style: TextStyle(
                              fontSize: 12,
                            ),),
                            Container(
                              height: 30,
                              width: 50,
                              child: ElevatedButton(
                                  onPressed: (){
                                    _addItem(name[index]['name'],
                                      name[index]['picture'],
                                      name[index]['harga'],
                                    );
                                    // print('harga : ${name[index]['harga']}');
                                    Get.to(CartView());
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(textcolor2),
                                  ),
                                  child: Text('Buy',style: TextStyle(
                                    fontSize: 10,
                                  ),)),
                            ),
                          ],
                        ),
                        SizedBox(height: 5)

                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                );}
          )
      ),
    );


  }

  Widget getCategoryUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Row(
            children: <Widget>[
              getButtonUI(
                  CategoryType.Apple, categoryType == CategoryType.Apple),
              const SizedBox(
                width: 5,
              ),
              getButtonUI(CategoryType.Orange, categoryType == CategoryType.Orange),
              const SizedBox(
                width: 5,
              ),
              getButtonUI(
                  CategoryType.Banana, categoryType == CategoryType.Banana),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }

  Widget getButtonUI(CategoryType categoryTypeData, bool isSelected) {
    String txt = '';
    if (CategoryType.Apple == categoryTypeData) {
      txt = 'Apple';
    } else if (CategoryType.Orange == categoryTypeData) {
      txt = 'Orange';
    } else if (CategoryType.Banana == categoryTypeData) {
      txt = 'Banana';
    }
    return Expanded(
        child: Container(
            decoration: BoxDecoration(
                color: isSelected ? textcolor2 : Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                border: isSelected
                    ? Border.all(color: textcolor2)
                    : Border.all(color: textcolor2)),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                onTap: () {
                  setState(() {
                    categoryType = categoryTypeData;
                    if(CategoryType.Apple == categoryTypeData){
                      applebool = true;
                      orangebool = false;
                      bananabool = false;
                    } else if(CategoryType.Orange == categoryTypeData){
                      applebool = false;
                      orangebool = true;
                      bananabool = false;
                    }else if(CategoryType.Banana == categoryTypeData){
                      applebool = false;
                      orangebool = false;
                      bananabool = true;
                    }
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 5, right: 5),
                  child: Center(
                    child: Text(
                      txt,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        letterSpacing: 0.27,
                        color: isSelected ? Colors.white : textcolor2,
                      ),
                    ),
                  ),
                ),
              ),
            )));
  }

  Future<void> _addItem(String name, String picture, int harga) async {
    await SQLHelper.createItem(
        name, picture,harga,1);
  }
}

enum CategoryType {
  Apple,
  Orange,
  Banana,
}
