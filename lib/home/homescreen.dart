import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tase/Item/itemDetile.dart';
import 'package:tase/cart/cartscreen.dart';
import 'package:tase/constance/themes.dart';
import 'package:tase/main.dart';
import 'package:tase/map/mapscreen.dart';
import 'package:tase/profile/editprofilescreen.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  BottomOpetion objBottomOpetion = new BottomOpetion();

  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Container(
            color: Theme.of(context).backgroundColor,
            height: MediaQuery.of(context).padding.top,
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (pageNumber) {
                if (pageNumber == 0) {
                  setState(() {
                    objBottomOpetion.isSelectHome = true;
                    objBottomOpetion.isSelectCart = false;
                    objBottomOpetion.isSelectLocation = false;
                    objBottomOpetion.isSelectProfile = false;
                  });
                }
                if (pageNumber == 1) {
                  setState(() {
                    objBottomOpetion.isSelectHome = false;
                    objBottomOpetion.isSelectCart = true;
                    objBottomOpetion.isSelectLocation = false;
                    objBottomOpetion.isSelectProfile = false;
                  });
                }
                if (pageNumber == 2) {
                  setState(() {
                    objBottomOpetion.isSelectHome = false;
                    objBottomOpetion.isSelectCart = false;
                    objBottomOpetion.isSelectLocation = true;
                    objBottomOpetion.isSelectProfile = false;
                  });
                }
                if (pageNumber == 3) {
                  setState(() {
                    objBottomOpetion.isSelectHome = false;
                    objBottomOpetion.isSelectCart = false;
                    objBottomOpetion.isSelectLocation = false;
                    objBottomOpetion.isSelectProfile = true;
                  });
                }
              },
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      child: Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.mapMarkerAlt,
                            color: Theme.of(context).primaryColor,
                            size: 18,
                          ),
                          Text(
                            "143,Love road,NYC",
                            style:
                                Theme.of(context).textTheme.button.copyWith(),
                          ),
                          Expanded(child: SizedBox()),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 6,
                            color: Theme.of(context).backgroundColor,
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.search),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 8,
                            color: Theme.of(context).primaryColor,
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Image.asset(
                                "asset/image/man.png",
                                height: 26,
                                width: 26,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      child: Row(
                        children: [
                          Text(
                            "What would you\nlike to eat?",
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: SizedBox(
                        height: 70,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Theme.of(context).primaryColor,
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 4),
                                        child: Image.asset(
                                          "asset/image/burger1.png",
                                        ),
                                      ),
                                      backgroundColor:
                                          Theme.of(context).backgroundColor,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Burger",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .copyWith(
                                            color: Theme.of(context)
                                                .backgroundColor,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 14),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 4),
                                        child: Image.asset(
                                          "asset/image/pizza.png",
                                        ),
                                      ),
                                      backgroundColor:
                                          Theme.of(context).backgroundColor,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "pizza",
                                      style:
                                          Theme.of(context).textTheme.subtitle1,
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: AppTheme.isLightTheme
                                    ? Theme.of(context).disabledColor
                                    : Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            SizedBox(width: 8),
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 14),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 4),
                                        child: Image.asset(
                                          "asset/image/sushi.png",
                                        ),
                                      ),
                                      backgroundColor:
                                          Theme.of(context).backgroundColor,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Sushi",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .copyWith(),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: AppTheme.isLightTheme
                                    ? Theme.of(context).disabledColor
                                    : Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            SizedBox(width: 8),
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 14),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 4),
                                        child: Image.asset(
                                          "asset/image/dhosa.png",
                                        ),
                                      ),
                                      backgroundColor:
                                          Theme.of(context).backgroundColor,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Dhosa",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .copyWith(),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: AppTheme.isLightTheme
                                    ? Theme.of(context).disabledColor
                                    : Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            SizedBox(width: 8),
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 14),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 4),
                                        child: Image.asset(
                                          "asset/image/sandwich.png",
                                        ),
                                      ),
                                      backgroundColor:
                                          Theme.of(context).backgroundColor,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Sandwich",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .copyWith(),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: AppTheme.isLightTheme
                                    ? Theme.of(context).disabledColor
                                    : Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.all(0),
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15, left: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Sushi special",
                                    style:
                                        Theme.of(context).textTheme.headline6),
                                Text(
                                  "See all",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 100,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Itemdeetile(
                                          image: "asset/image/shushi2.png",
                                          name: "Barbequed sasi",
                                        ),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 10, left: 4),
                                      child: Row(
                                        children: [
                                          Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(22),
                                            ),
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            elevation: 5,
                                            child: ClipRRect(
                                              borderRadius:
                                                  new BorderRadius.circular(22),
                                              child: Image.asset(
                                                "asset/image/shushi2.png",
                                                height: 75,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8, bottom: 4),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Barbequed sasi",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2
                                                      .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                SizedBox(
                                                  height: 2,
                                                ),
                                                Text(
                                                  "Special sashimi susi",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .button
                                                      .copyWith(
                                                        color: Theme.of(context)
                                                            .disabledColor,
                                                      ),
                                                ),
                                                Expanded(child: SizedBox()),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      size: 14,
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                    ),
                                                    SizedBox(
                                                      width: 2,
                                                    ),
                                                    Text(
                                                      "4.9",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1
                                                          .copyWith(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                    SizedBox(
                                                      width: 2,
                                                    ),
                                                    Text(
                                                      "(4.6k)",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1
                                                          .copyWith(
                                                            color: Theme.of(
                                                                    context)
                                                                .disabledColor,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                                Expanded(child: SizedBox()),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 5),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "\$",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .button
                                                            .copyWith(
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColor,
                                                            ),
                                                      ),
                                                      Text(
                                                        "6.50",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2
                                                            .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 38),
                                            child: CircleAvatar(
                                              backgroundColor: Theme.of(context)
                                                  .primaryColor,
                                              child: Icon(
                                                FontAwesomeIcons.shoppingBag,
                                                color: Theme.of(context)
                                                    .backgroundColor,
                                                size: 20,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Itemdeetile(
                                          image: "asset/image/sushi3.png",
                                          name: "Barbequed sasi",
                                        ),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 10, left: 4),
                                      child: Row(
                                        children: [
                                          Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(22),
                                            ),
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            elevation: 5,
                                            child: ClipRRect(
                                              borderRadius:
                                                  new BorderRadius.circular(22),
                                              child: Image.asset(
                                                "asset/image/sushi3.png",
                                                height: 75,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8, bottom: 4),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Barbequed sasi",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2
                                                      .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                SizedBox(
                                                  height: 2,
                                                ),
                                                Text(
                                                  "Special sashimi susi",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .button
                                                      .copyWith(
                                                        color: Theme.of(context)
                                                            .disabledColor,
                                                      ),
                                                ),
                                                Expanded(child: SizedBox()),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      size: 14,
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                    ),
                                                    SizedBox(
                                                      width: 2,
                                                    ),
                                                    Text(
                                                      "4.9",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1
                                                          .copyWith(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                    SizedBox(
                                                      width: 2,
                                                    ),
                                                    Text(
                                                      "(4.6k)",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1
                                                          .copyWith(
                                                            color: Theme.of(
                                                                    context)
                                                                .disabledColor,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                                Expanded(child: SizedBox()),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 5),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "\$",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .button
                                                            .copyWith(
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColor,
                                                            ),
                                                      ),
                                                      Text(
                                                        "6.50",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2
                                                            .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 38),
                                            child: CircleAvatar(
                                              backgroundColor: Theme.of(context)
                                                  .primaryColor,
                                              child: Icon(
                                                FontAwesomeIcons.shoppingBag,
                                                color: Theme.of(context)
                                                    .backgroundColor,
                                                size: 20,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Itemdeetile(
                                          image: "asset/image/sushi4.png",
                                          name: "Barbequed sasi",
                                        ),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 10, left: 4),
                                      child: Row(
                                        children: [
                                          Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(22),
                                            ),
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            elevation: 5,
                                            child: ClipRRect(
                                              borderRadius:
                                                  new BorderRadius.circular(22),
                                              child: Image.asset(
                                                "asset/image/sushi4.png",
                                                height: 75,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8, bottom: 4),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Barbequed sasi",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2
                                                      .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                SizedBox(
                                                  height: 2,
                                                ),
                                                Text(
                                                  "Special sashimi susi",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .button
                                                      .copyWith(
                                                        color: Theme.of(context)
                                                            .disabledColor,
                                                      ),
                                                ),
                                                Expanded(child: SizedBox()),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      size: 14,
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                    ),
                                                    SizedBox(
                                                      width: 2,
                                                    ),
                                                    Text(
                                                      "4.9",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1
                                                          .copyWith(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                    SizedBox(
                                                      width: 2,
                                                    ),
                                                    Text(
                                                      "(4.6k)",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1
                                                          .copyWith(
                                                            color: Theme.of(
                                                                    context)
                                                                .disabledColor,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                                Expanded(child: SizedBox()),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 5),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "\$",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .button
                                                            .copyWith(
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColor,
                                                            ),
                                                      ),
                                                      Text(
                                                        "6.50",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2
                                                            .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 38),
                                            child: CircleAvatar(
                                              backgroundColor: Theme.of(context)
                                                  .primaryColor,
                                              child: Icon(
                                                FontAwesomeIcons.shoppingBag,
                                                color: Theme.of(context)
                                                    .backgroundColor,
                                                size: 20,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 15, left: 15, top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Popalar restaurants",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 14, left: 14, top: 15, bottom: 15),
                            child: Column(
                              children: [
                                Restaurants(
                                  restaurantName: "Chez Panisse cafe",
                                  imageName: "asset/image/restaurant1.jpg",
                                  rating: "4.9",
                                  review: "(5.6review)",
                                  pizza: "CHIPS",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Restaurants(
                                  restaurantName: "Crzy Cafe",
                                  imageName: "asset/image/restaurant2.jpg",
                                  rating: "5.1",
                                  review: "(6.6review)",
                                  pizza: "CHIPS",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Restaurants(
                                  restaurantName: "Star Buck",
                                  imageName: "asset/image/restaurant3.jpg",
                                  rating: "5.0",
                                  review: "(4.6review)",
                                  pizza: "CHIPS",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Restaurants(
                                  restaurantName: "Gangor",
                                  imageName: "asset/image/restaurant1.jpg",
                                  review: "(5.1review)",
                                  rating: "4.8",
                                  pizza: "CHIPS",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Restaurants(
                                  restaurantName: "Annpurna",
                                  imageName: "asset/image/restaurant2.jpg",
                                  rating: "5.9",
                                  review: "(6.1review)",
                                  pizza: "CHIPS",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Cartscreen(
                  isOutside: true,
                ),
                Mapscreen(),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Profilescreen(),
                          ),
                        );
                      },
                      child: Container(
                        color: Theme.of(context).backgroundColor,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, top: 30, bottom: 30),
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    "https://www.gstatic.com/webp/gallery/2.jpg"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Cameron Cook",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Theme.of(context).disabledColor,
                                        size: 15,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.blur_on,
                                            color: Theme.of(context)
                                                .backgroundColor,
                                            size: 15,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(2),
                                            child: Text(
                                              "Vip member",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  .copyWith(
                                                      fontSize: 10,
                                                      color: Theme.of(context)
                                                          .backgroundColor),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.all(0),
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 14, bottom: 10),
                            child: Row(
                              children: [
                                Card(
                                  color: Theme.of(context).primaryColor,
                                  child: Padding(
                                    padding: const EdgeInsets.all(1),
                                    child: Icon(
                                      Icons.add_alert,
                                      color: Theme.of(context).backgroundColor,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text("Notifications"),
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Theme.of(context).disabledColor,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 0, bottom: 10),
                            child: Row(
                              children: [
                                Card(
                                  color: Colors.blue,
                                  child: Padding(
                                    padding: const EdgeInsets.all(1),
                                    child: Icon(
                                      Icons.monetization_on,
                                      color: Theme.of(context).backgroundColor,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text("Payment method"),
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Theme.of(context).disabledColor,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 0, bottom: 10),
                            child: Row(
                              children: [
                                Card(
                                  color: Colors.greenAccent,
                                  child: Padding(
                                    padding: const EdgeInsets.all(1),
                                    child: Icon(
                                      Icons.credit_card,
                                      color: Theme.of(context).backgroundColor,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text("Reward credits"),
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Theme.of(context).disabledColor,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 0, bottom: 10),
                            child: Row(
                              children: [
                                Card(
                                  color: Colors.indigoAccent,
                                  child: Padding(
                                    padding: const EdgeInsets.all(1),
                                    child: Icon(
                                      Icons.dashboard,
                                      color: Theme.of(context).backgroundColor,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text("My promo code"),
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Theme.of(context).disabledColor,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 15, bottom: 10),
                            child: InkWell(
                              onTap: () {
                                openShowPopup(context);
                              },
                              child: Row(
                                children: [
                                  Card(
                                    color: Colors.black,
                                    child: Padding(
                                      padding: const EdgeInsets.all(1),
                                      child: Icon(
                                        Icons.settings,
                                        color:
                                            Theme.of(context).backgroundColor,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text("Settings"),
                                  Expanded(
                                    child: SizedBox(),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Theme.of(context).disabledColor,
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 0, bottom: 10),
                            child: Row(
                              children: [
                                Card(
                                  color: Colors.pinkAccent,
                                  child: Padding(
                                    padding: const EdgeInsets.all(1),
                                    child: Icon(
                                      Icons.fiber_new,
                                      color: Theme.of(context).backgroundColor,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text("Invite friends"),
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Theme.of(context).disabledColor,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 0, bottom: 10),
                            child: Row(
                              children: [
                                Card(
                                  color: Colors.purpleAccent,
                                  child: Padding(
                                    padding: const EdgeInsets.all(1),
                                    child: Icon(
                                      Icons.headset,
                                      color: Theme.of(context).backgroundColor,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text("Help center"),
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Theme.of(context).disabledColor,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 0, bottom: 10),
                            child: Row(
                              children: [
                                Card(
                                  color: Colors.tealAccent,
                                  child: Padding(
                                    padding: const EdgeInsets.all(1),
                                    child: Icon(
                                      Icons.info,
                                      color: Theme.of(context).backgroundColor,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text("About us "),
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Theme.of(context).disabledColor,
                                  size: 15,
                                ),
                              ],
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: Theme.of(context).backgroundColor,
              boxShadow: [
                new BoxShadow(
                  color: Colors.grey,
                  blurRadius: 8,
                  spreadRadius: 0.2,
                ),
              ],
            ),
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      objBottomOpetion.isSelectHome = true;
                      objBottomOpetion.isSelectCart = false;
                      objBottomOpetion.isSelectLocation = false;
                      objBottomOpetion.isSelectProfile = false;
                    });
                    _pageController.animateToPage(
                      0,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        size: 30,
                        color: objBottomOpetion.isSelectHome
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).disabledColor,
                      ),
                      Text(
                        "Home",
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: objBottomOpetion.isSelectHome
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).disabledColor,
                            ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      objBottomOpetion.isSelectHome = false;
                      objBottomOpetion.isSelectCart = true;
                      objBottomOpetion.isSelectLocation = false;
                      objBottomOpetion.isSelectProfile = false;
                    });
                    _pageController.animateToPage(
                      1,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.cartArrowDown,
                        size: 25,
                        color: objBottomOpetion.isSelectCart
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).disabledColor,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Cart",
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: objBottomOpetion.isSelectCart
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).disabledColor,
                            ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      objBottomOpetion.isSelectHome = false;
                      objBottomOpetion.isSelectCart = false;
                      objBottomOpetion.isSelectLocation = true;
                      objBottomOpetion.isSelectProfile = false;
                    });
                    _pageController.animateToPage(
                      2,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.mapMarkerAlt,
                        size: 25,
                        color: objBottomOpetion.isSelectLocation
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).disabledColor,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Location",
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: objBottomOpetion.isSelectLocation
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).disabledColor,
                            ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      objBottomOpetion.isSelectHome = false;
                      objBottomOpetion.isSelectCart = false;
                      objBottomOpetion.isSelectLocation = false;
                      objBottomOpetion.isSelectProfile = true;
                    });
                    _pageController.animateToPage(
                      3,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.male,
                        size: 30,
                        color: objBottomOpetion.isSelectProfile
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).disabledColor,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Profile",
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: objBottomOpetion.isSelectProfile
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).disabledColor,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool selectFirstColor = false;
  bool selectSecondColor = false;

  openShowPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text(
              'Select theme mode',
              style: Theme.of(context).textTheme.subtitle2.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.headline6.color,
                    fontSize: 18,
                  ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      changeColor(context, light);
                    },
                    child: CircleAvatar(
                      radius: 34,
                      backgroundColor:
                          Theme.of(context).textTheme.headline6.color,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 32,
                        child: Text(
                          'Light',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      changeColor(context, dark);
                    },
                    child: CircleAvatar(
                      radius: 34,
                      backgroundColor:
                          Theme.of(context).textTheme.headline6.color,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 32,
                        child: Text(
                          'Dark',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  int light = 1;
  int dark = 2;

  bool selectThirdColor = false;
  bool selectFourthColor = false;
  bool selectFifthColor = false;
  bool selectSixthColor = false;

  changeColor(BuildContext context, int color) {
    if (color == light) {
      MyApp.setCustomeTheme(context, 6);
    } else {
      MyApp.setCustomeTheme(context, 7);
    }
  }

  selectfirstColor(BuildContext context) {
    if (selectFirstColor) {
      selectFirstColor = false;
      selectSecondColor = false;
      selectThirdColor = false;
      selectFourthColor = false;
      selectFifthColor = false;
      selectSixthColor = false;

      MyApp.setCustomeTheme(context, 0);
    }
  }

  selectsecondColor(BuildContext context) {
    if (!selectSecondColor) {
      selectFirstColor = true;
      selectSecondColor = true;
      selectThirdColor = false;
      selectFourthColor = false;
      selectFifthColor = false;
      selectSixthColor = false;

      MyApp.setCustomeTheme(context, 1);
    }
  }

  selectthirdColor(BuildContext context) {
    if (!selectThirdColor) {
      selectFirstColor = true;
      selectSecondColor = false;
      selectThirdColor = true;
      selectFourthColor = false;
      selectFifthColor = false;
      selectSixthColor = false;
    }
    MyApp.setCustomeTheme(context, 2);
  }

  selectfourthColor(BuildContext context) {
    if (!selectFourthColor) {
      selectFirstColor = true;
      selectSecondColor = false;
      selectThirdColor = false;
      selectFourthColor = true;
      selectFifthColor = false;
      selectSixthColor = false;
    }
    MyApp.setCustomeTheme(context, 3);
  }

  selectfifthColor(BuildContext context) {
    if (!selectFifthColor) {
      selectFirstColor = true;
      selectSecondColor = false;
      selectThirdColor = false;
      selectFourthColor = false;
      selectFifthColor = true;
      selectSixthColor = false;
    }
    MyApp.setCustomeTheme(context, 4);
  }

  selectsixthColor(BuildContext context) {
    if (!selectSixthColor) {
      selectFirstColor = true;
      selectSecondColor = false;
      selectThirdColor = false;
      selectFourthColor = false;
      selectFifthColor = false;
      selectSixthColor = true;
    }
    MyApp.setCustomeTheme(context, 5);
  }
}

class BottomOpetion {
  bool isSelectHome;
  bool isSelectCart;
  bool isSelectLocation;
  bool isSelectProfile;

  BottomOpetion({
    this.isSelectHome = true,
    this.isSelectCart = false,
    this.isSelectLocation = false,
    this.isSelectProfile = false,
  });
}

class Restaurants extends StatefulWidget {
  final String restaurantName;
  final String imageName;
  final String rating;
  final String review;
  final String pizza;

  const Restaurants({
    Key key,
    this.restaurantName,
    this.imageName,
    this.rating,
    this.review,
    this.pizza,
  }) : super(key: key);

  @override
  _RestaurantsState createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Itemdeetile(
              image: widget.imageName,
              name: widget.restaurantName,
            ),
          ),
        );
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: [
            ClipRRect(
              child: Image.asset(
                widget.imageName,
              ),
              borderRadius: new BorderRadius.circular(16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14, top: 8),
                  child: Column(
                    children: [
                      Text(
                        widget.restaurantName,
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 14, top: 8),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 14,
                            color: Theme.of(context).primaryColor,
                          ),
                          Text(
                            widget.rating,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            widget.review,
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      color: Theme.of(context).disabledColor,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 3, right: 10, left: 10),
                      child: Text(
                        widget.pizza,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 3, right: 10, left: 10),
                      child: Text(
                        "Pizza",
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 3, right: 10, left: 10),
                      child: Text(
                        "SALAD",
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 3, right: 10, left: 10),
                      child: Text(
                        "BAR",
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.motorcycle,
                    size: 12,
                    color: HexColor("#FBD361"),
                  ),
                  Text(
                    "   free delivery",
                    style: Theme.of(context).textTheme.button.copyWith(
                          fontSize: 12,
                          color:
                              Theme.of(context).dividerColor.withOpacity(0.6),
                        ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.watch_later,
                    size: 12,
                    color: HexColor("#FBD361"),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    "10-15 mins",
                    style: Theme.of(context).textTheme.button.copyWith(
                          fontSize: 12,
                          color:
                              Theme.of(context).dividerColor.withOpacity(0.6),
                        ),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Text(
                    "starting \$2",
                    style: Theme.of(context).textTheme.button.copyWith(
                          fontSize: 12,
                          color: Theme.of(context).primaryColor,
                        ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
