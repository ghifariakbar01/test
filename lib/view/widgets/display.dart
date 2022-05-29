import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:testProject/constant/constants.dart';
import 'package:testProject/model/item/item.dart';
import 'package:testProject/view/pages/cart.dart';
import 'package:testProject/view/widgets/load.dart';
import 'package:testProject/viewmodel/all_vm.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class DisplayPhoto extends StatefulWidget {
  const DisplayPhoto({Key key}) : super(key: key);

  @override
  State<DisplayPhoto> createState() => _DisplayPhotoState();
}

class _DisplayPhotoState extends State<DisplayPhoto> {
  List<Item> listItems;
  Map<String, dynamic> basket;

  @override
  void initState() {
    super.initState();
    basket = Provider.of<Map<String, dynamic>>(context, listen: false);
    if (basket["items"] == null) {
      listItems = [];
    } else {
      listItems = basket["items"];
    }
  }

  void update(Map<String, dynamic> basketNew) {
    setState(() {
      basketNew = basket;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton:
          // cart icon with badge from basket["total_item"]
          SizedBox(
        width: 50,
        height: 50,
        child: Stack(
          children: [
            FloatingActionButton(
              onPressed: () {
                // navigate to CartPage with listItems
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartPage(
                      updateTotal: update,
                      items: listItems,
                    ),
                  ),
                );
              },
              child: Icon(Icons.shopping_cart),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    basket["items"] == null
                        ? "0"
                        : basket["items"].length.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SizedBox(
        child: FutureBuilder<List<Item>>(
          future: ALLVm.getItems(baseUrl),
          builder: (_, AsyncSnapshot snapshot) {
            List<Item> items = snapshot.data;
            if (snapshot.hasData) {
              return GridView.builder(
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        if (basket["items"] == null) {
                          listItems.add(items[index]);
                          basket["items"] = listItems;
                        } else {
                          listItems.add(items[index]);
                          listItems = basket["items"];
                        }
                      });
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      margin: EdgeInsets.all(5.0),
                      child: Card(
                        elevation: 5.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 200,
                              height: 182,
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Flexible(
                                    flex: 2,
                                    child: Text(
                                      items[index].title,
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: Text(
                                      "Rp ${items[index].price}",
                                      style: TextStyle(
                                          fontSize: 14.0, color: Colors.orange),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 0,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.grey,
                                          size: 11,
                                        ),
                                        Text(
                                          items[index].locationName.name,
                                          style: TextStyle(
                                            fontSize: 11.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    flex: 3,
                                    child: SizedBox(
                                      height: 50,
                                      width: 150,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            flex: 1,
                                            child: Icon(
                                              Icons.person,
                                              size: 12.0,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Flexible(
                                            flex: 2,
                                            child: Text(
                                              // if name more than 20 characters show ...
                                              items[index]
                                                          .addedUserName
                                                          .length >
                                                      20
                                                  ? items[index]
                                                          .addedUserName
                                                          .substring(0, 20) +
                                                      "..."
                                                  : items[index].addedUserName,
                                              style: TextStyle(
                                                fontSize: 12.0,
                                              ),
                                            ),
                                          ),
                                          items[index].isHalal == "1"
                                              ? Flexible(
                                                  flex: 2,
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child: Image.asset(
                                                        "assets/halal.png"),
                                                  ),
                                                )
                                              : Flexible(
                                                  flex: 0, child: Container())
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  items[index].isAvailable != "0"
                                      ? Flexible(
                                          flex: 2,
                                          child: Container(
                                            padding: EdgeInsets.all(5.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Colors.blue,
                                              border: Border.all(
                                                color: Colors.green,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Text(
                                              "READY STOK",
                                              style: TextStyle(
                                                fontSize: 11.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      : Flexible(
                                          flex: 1,
                                          child: Text(
                                            "KOSONG",
                                            style: TextStyle(
                                              fontSize: 11.0,
                                            ),
                                          ),
                                        ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text(
                "${snapshot.error}",
                style: TextStyle(color: Colors.black),
              );
            } else {
              return Shimmer.fromColors(
                  child: MyWidget(),
                  baseColor: Colors.grey.shade100,
                  highlightColor: Colors.grey.shade300);
            }
          },
        ),
      ),
    );
  }
}
