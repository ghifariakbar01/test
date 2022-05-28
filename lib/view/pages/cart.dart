import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:testProject/model/item/item.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key key, this.items, this.updateTotal}) : super(key: key);
  final ValueChanged<Map<String, dynamic>> updateTotal;

  @override
  State<CartPage> createState() => _CartPageState();

  final List<Item> items;
}

class _CartPageState extends State<CartPage> {
  Map<String, String> qtyCart = Map<String, String>();
  Map<String, dynamic> basket;

  @override
  void initState() {
    super.initState();
    basket = Provider.of<Map<String, dynamic>>(context, listen: false);
    widget.items.forEach((item) {
      if (!qtyCart.containsKey(item.id)) {
        qtyCart[item.id] = '1';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Produk yang akan anda pesan"),
      ),
      body:
          // ListView of items from basket["items"]
          ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(widget.items[index].title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Rp ${widget.items[index].price}",
                    style: TextStyle(fontSize: 14.0, color: Colors.orange),
                  ),
                  Text(
                    "(${widget.items[index].conditionOfItem.name.name})",
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ],
              ),
              trailing: SizedBox(
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (qtyCart[widget.items[index].id] == '1') {
                            qtyCart.remove(widget.items[index].id);
                            widget.items.remove(widget.items[index]);
                            basket["total_item"] -= 1;
                            widget.updateTotal(basket);
                          } else {
                            qtyCart[widget.items[index].id] =
                                (int.parse(qtyCart[widget.items[index].id]) - 1)
                                    .toString();
                          }
                        });
                      },
                      child: Container(
                          // color red
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          width: 20,
                          height: 20,
                          child: Icon(
                            Icons.minimize,
                            size: 11,
                            color: Colors.white,
                          )),
                    ),
                    Text("${qtyCart[widget.items[index].id]}"),
                    Container(
                      // color red
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5.0),
                      ),

                      child: SizedBox(
                          width: 20,
                          height: 20,
                          child:
                              Icon(Icons.add, size: 11, color: Colors.white)),
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }
}
