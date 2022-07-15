import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klikdailygroceries/service/dbhelper.dart';
import 'package:klikdailygroceries/utils/color.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {

  List<Map<String, dynamic>> _data = [];
  List<int> jumlah = [];
  var total = 0;
  bool _isLoading = true;

  void _refreshdata() async {
    jumlah = [];
    total = 0;
    final data = await SQLHelper.getItems();
    setState(() {
      _data = data;
      _isLoading = false;
    });
    for(var i =0; i<_data.length;i++){
      var jmlh = _data[i]["jumlah"]*_data[i]["harga"];
      jumlah.add(jmlh);
      print(jumlah);
    }
    print(jumlah.length);
    for(var i = 0; i<jumlah.length;i++){
      total += jumlah[i];
    }
    print(total);
  }


  @override
  void initState() {
    super.initState();
    _refreshdata();// Loading data when the app starts
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: textcolor2,
        title: Text("Cart"),
      ),
      body: _isLoading
          ? const Center(
        child: CircularProgressIndicator(),
      )
          : Stack(
            children: [
              ListView.builder(
        itemCount: _data.length,
        itemBuilder: (context, index) => Card(
              margin: const EdgeInsets.only(left: 15,right: 15,top: 10),
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Text(_data[index]['title'],
                              style:TextStyle(
                                fontWeight: FontWeight.bold
                              ),)),
                        Container(
                          height: 20,
                            child: IconButton(
                              padding: const EdgeInsets.only(bottom: 10),
                                splashColor: Colors.red,
                                splashRadius: 20,
                                onPressed: (){
                                _deleteItem(_data[index]["id"]);
                                },
                                icon: Icon(Icons.close))),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius:BorderRadius.all(Radius.circular(10))),
                            height: 50,
                            width: 50,
                            child: Image.network('${_data[index]['description']}')),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Container(
                                height: 20,
                                  child:Text('Rp ${_data[index]['harga'].toString()},-'),),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: (){
                                    print(_data[index]["jumlah"]);
                                    if(_data[index]["jumlah"]<=1){
                                      Get.snackbar("Minimal Pesanan", "");
                                    }
                                    else{
                                      _updateItemkurang(_data[index]["id"],_data[index]["jumlah"]);
                                    }
                                  },
                                  icon: Icon(Icons.indeterminate_check_box_rounded),
                              splashRadius: 20,
                              splashColor: textcolor2,),
                              Text("${_data[index]["jumlah"]}"),
                              IconButton(
                                  onPressed: (){
                                    _updateItemtambah(_data[index]["id"],_data[index]["jumlah"]);
                                  },
                                  icon: Icon(Icons.add_box_rounded),
                              splashRadius: 20,
                              splashColor: textcolor2,),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,)
                  ],
                ),
              )
        ),
      ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 5),
                  child: Container(
                    width: Get.width,
                    height: Get.height*0.06,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        border: Border.all(
                          color: textcolor2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text("Total harga : Rp $total"),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
    );
  }
  // Update an existing journal
  Future<void> _updateItemtambah(int id, int jmlh) async {
    await SQLHelper.updateItem(
        id,jmlh+1);
    _refreshdata();
  }
  Future<void> _updateItemkurang(int id, int jmlh) async {
    await SQLHelper.updateItem(
        id,jmlh-1);
    _refreshdata();
  }

  // Delete an item
  void _deleteItem(int id) async {
    await SQLHelper.deleteItem(id);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Item Deleted!'),
    ));
    _refreshdata();
  }
  // void _incrementCounter(int id,int jmlh) {
  //   setState(() {
  //     _updateItem(id, jmlh);
  //   });
  // }
}
