import 'package:flutter/material.dart';
import 'package:tase/main.dart';

class Introductionscreen extends StatefulWidget {
  @override
  _IntroductionscreenState createState() => _IntroductionscreenState();
}

class _IntroductionscreenState extends State<Introductionscreen> {
  int pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (pageNuber) {
                setState(() {
                  pageNumber = pageNuber;
                });
              },
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: AppBar().preferredSize.height,
                    ),
                    Expanded(child: SizedBox()),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Image.asset(
                        "asset/image/introduction1.png",
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            "Quick delivery at\nyour door step",
                            style:
                                Theme.of(context).textTheme.headline5.copyWith(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Home delivery and online reservation\nsystem for restaurants and cafe",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: Theme.of(context).disabledColor,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Expanded(child: SizedBox()),
                    Image.asset("asset/image/introduction2.png"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Easy and online \n Payment",
                          style: Theme.of(context).textTheme.headline5.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Text(
                      "Trouble free and online peyment \n any card payment is available",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: Theme.of(context).disabledColor,
                          ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 4,
                backgroundColor: pageNumber == 0
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).primaryColor.withOpacity(.5),
              ),
              SizedBox(
                width: 4,
              ),
              CircleAvatar(
                radius: 4,
                backgroundColor: pageNumber == 0
                    ? Theme.of(context).primaryColor.withOpacity(.5)
                    : Theme.of(context).primaryColor,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, Routes.Home);
            },
            child: Card(
              color: Theme.of(context).primaryColor,
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  pageNumber == 0 ? "Get Started" : "Skip Now",
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: Theme.of(context).backgroundColor,
                      ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).padding.bottom + 20,
          )
        ],
      ),
    );
  }
}
