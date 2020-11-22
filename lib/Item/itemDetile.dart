import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tase/cart/cartscreen.dart';

class Itemdeetile extends StatefulWidget {
  final String image;
  final String name;

  const Itemdeetile({Key key, this.image, this.name}) : super(key: key);
  @override
  _ItemdeetileState createState() => _ItemdeetileState();
}

class _ItemdeetileState extends State<Itemdeetile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.keyboard_arrow_left,
              size: 35,
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                Image.asset(
                  widget.image,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 14, left: 14, top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.name,
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                      ),
                      Row(
                        children: [
                          Text(
                            "\$",
                            style: Theme.of(context).textTheme.button.copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20,
                                ),
                          ),
                          Text(
                            "6.50",
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 14, left: 14, top: 4),
                  child: Row(
                    children: [
                      Image.asset(
                        "asset/image/star.png",
                        height: 20,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "4.9",
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 15,
                            ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        "asset/image/watch.png",
                        height: 20,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "20-30 min",
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 15,
                            ),
                      ),
                      Expanded(child: SizedBox()),
                      Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 5, left: 12, right: 12, bottom: 5),
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
                              color: Theme.of(context).backgroundColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 14, left: 14, top: 4),
                  child: Text(
                    "Sake is produced through a brewing process and,converting starch into sugar.sake is closer to beer than wine.it may sound simple,but the entire process can take anywhere from few months.",
                    style: Theme.of(context).textTheme.button.copyWith(
                          color: Colors.grey[400],
                          height: 1.5,
                        ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 14, left: 14, top: 12),
                  child: Text(
                    "Ingredients",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 14, left: 14, top: 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          shadowColor: Colors.purple[200],
                          color: Colors.purple[100],
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Image.asset(
                              "asset/image/PurpleCabbage.png",
                              height: 40,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          shadowColor: Colors.purple[300],
                          color: Colors.purple[300],
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Image.asset(
                              "asset/image/onion.png",
                              height: 42,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          shadowColor: Colors.red[300],
                          color: Colors.red[200],
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Image.asset(
                              "asset/image/capcicum.png",
                              height: 40,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          shadowColor: Colors.red[100],
                          color: Colors.red[100],
                          child: Padding(
                            padding: const EdgeInsets.all(7),
                            child: Image.asset(
                              "asset/image/Product-IMG_curio.original.png",
                              height: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30, left: 30, top: 16),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Cartscreen(
                            isOutside: false,
                          ),
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
                            Icon(
                              FontAwesomeIcons.shoppingBag,
                              color: Theme.of(context).backgroundColor,
                              size: 20,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "ADD TO CART",
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
                  height: MediaQuery.of(context).padding.bottom + 16,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CartscreenState {}
