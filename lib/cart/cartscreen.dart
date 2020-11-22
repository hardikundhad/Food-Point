import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tase/payment/paymentscreen.dart';

class Cartscreen extends StatefulWidget {
  final bool isOutside;

  const Cartscreen({Key key, this.isOutside}) : super(key: key);
  @override
  _CartscreenState createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    if (!widget.isOutside) Navigator.pop(context);
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 4,
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: Theme.of(context).primaryColor,
                      size: 32,
                    ),
                  ),
                ),
                Text(
                  "Cart",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Icon(
                      FontAwesomeIcons.shoppingBag,
                      color: Theme.of(context).primaryColor,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 14, right: 8, left: 8),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 8, bottom: 8),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "asset/image/burger2.png",
                                height: 50,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Beef Burger 3 Patty",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Special Spicy beef burger",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(
                                      fontSize: 15,
                                    ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(
                                          color: Theme.of(context).primaryColor,
                                        ),
                                  ),
                                  Text(
                                    "6.90",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 111,
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(
                                          color: Theme.of(context).primaryColor,
                                          width: 1.5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5,
                                          left: 12,
                                          right: 12,
                                          bottom: 5),
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "2",
                                    style: TextStyle(),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Card(
                                    elevation: 0,
                                    color: Theme.of(context).primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(
                                          color: Theme.of(context).primaryColor,
                                          width: 1.5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 9, right: 9, bottom: 5),
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                          color:
                                              Theme.of(context).backgroundColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6, right: 8, left: 8),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 8, bottom: 8),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "asset/image/pizza.png",
                                height: 60,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "melting cheese pizza",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Chicke /Beef with mashroom",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(
                                      fontSize: 15,
                                    ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(
                                          color: Theme.of(context).primaryColor,
                                        ),
                                  ),
                                  Text(
                                    "12.90",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(
                                          color: Theme.of(context).primaryColor,
                                          width: 1.5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5,
                                          left: 12,
                                          right: 12,
                                          bottom: 5),
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "2",
                                    style: TextStyle(),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Card(
                                    elevation: 0,
                                    color: Theme.of(context).primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(
                                          color: Theme.of(context).primaryColor,
                                          width: 1.5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 9, right: 9, bottom: 5),
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                          color:
                                              Theme.of(context).backgroundColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6, right: 8, left: 8),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 8, bottom: 8),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "asset/image/pizz2.png",
                                height: 40,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "melting cheese pizza",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Chicke /Beef with mashroom",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(
                                      fontSize: 15,
                                    ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(
                                          color: Theme.of(context).primaryColor,
                                        ),
                                  ),
                                  Text(
                                    "12.90",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(
                                          color: Theme.of(context).primaryColor,
                                          width: 1.5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5,
                                          left: 12,
                                          right: 12,
                                          bottom: 5),
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "2",
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Card(
                                    elevation: 4,
                                    color: Theme.of(context).primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(
                                          color: Theme.of(context).primaryColor,
                                          width: 1.5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 9, right: 9, bottom: 5),
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                          color:
                                              Theme.of(context).backgroundColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 6, left: 12, right: 12, bottom: 10),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 14, right: 14, top: 20, bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Subtotal",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(),
                              ),
                              Text(
                                "\$50",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Delivery",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(),
                              ),
                              Text(
                                "\$20",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                "\$70",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Paymentscreen(),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 4,
                      shadowColor: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.all(11),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "CHECKOUT",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(
                                    color: Theme.of(context).backgroundColor,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
