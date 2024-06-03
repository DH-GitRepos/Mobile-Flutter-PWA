import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => const HomePage(),
      );
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(

            padding: const EdgeInsets.all(10.0),
            color: Theme.of(context).colorScheme.onTertiary,

            child: Column(

              children: [

                Expanded(
                    child: ListView(children: [
                      // BODY -> CONTAINER -> CHILDREN

                      Column(
                        children: [
                        // BODY -> CHILDREN

                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                              alignment: Alignment.center,
                              child: Builder(
                                builder: (BuildContext context) {
                                  return Text(
                                    'Hi Customer',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).colorScheme.onSurface,
                                    ),
                                  );
                                }),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                            child: Container(
                              alignment: Alignment.center,
                              child: Builder(
                                builder: (BuildContext context) {
                                return Text(
                                  'Welcome back to Baristars',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                  );
                                }),
                              ),
                          ),


                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Card(
                            // CHILDREN -> CARD #1
                            color: Theme.of(context).colorScheme.background,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 2,
                            child: Column(
                              children: [
                                // CARD -> CHILDREN

                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  child: SizedBox(
                                    height: 200,
                                    width: double.infinity,
                                    child: Image.asset(
                                      'assets/images/stock/refer-pexels-samson-katt-5226490.webp',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                                Container(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      // CARD -> BOTTOM SECTION CHILDREN

                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                            child: Builder(
                                              builder: (BuildContext context) {
                                              return Text(
                                                'Earn rewards today',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Theme.of(context).colorScheme.onSurface,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ), //END TEXT STYLE
                                              );
                                            }),
                                          ),
                                        ],
                                      ),

                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                            child: Builder(
                                                builder: (BuildContext context) {
                                                  return Text(
                                                    'Refer a friend, you both get a drink on us',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      color: Theme.of(context).colorScheme.onTertiaryContainer,
                                                      fontWeight: FontWeight.normal,
                                                      fontSize: 14,
                                                    ), //END TEXT STYLE
                                                  );
                                                }),
                                          ),
                                        ],
                                      ), // END TEXT
                                    ], // END CARD CHILDREN
                                  ), // END CONTAINER->CHILD->COLUMN
                                ), // END CONTAINER
                              ], // END CHILDREN
                            ), // END COLUMN
                          ),
                        ), // END CARD #1

                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Card(
                            // CHILDREN -> CARD #2
                            color: Theme.of(context).colorScheme.background,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 2,
                            child: Column(
                              children: [
                                // CARD -> CHILDREN

                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  child: SizedBox(
                                    height: 200,
                                    width: double.infinity,
                                    child: Image.asset(
                                      'assets/images/stock/machine-pour-pexels-photo-324028.webp',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                                Container(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      // CARD -> BOTTOM SECTION CHILDREN

                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                            child: Builder(
                                                builder: (BuildContext context) {
                                                  return Text(
                                                    'Fancy a bit of what you love?',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      color: Theme.of(context).colorScheme.onSurface,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 16,
                                                    ), //END TEXT STYLE
                                                  );
                                                }),
                                          ),
                                        ],
                                      ),

                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                            child: Builder(
                                                builder: (BuildContext context) {
                                                  return Text(
                                                    'Order your favourite now!',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      color: Theme.of(context).colorScheme.onTertiaryContainer,
                                                      fontWeight: FontWeight.normal,
                                                      fontSize: 14,
                                                    ), //END TEXT STYLE
                                                  );
                                                }),
                                          ),
                                        ],
                                      ), // END TEXT
                                    ], // END CARD CHILDREN
                                  ), // END CONTAINER->CHILD->COLUMN
                                ), // END CONTAINER
                              ], // END CHILDREN
                            ), // END COLUMN
                          ),
                        ), // END CARD #2

                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Card(
                            // CHILDREN -> CARD #3
                            color: Theme.of(context).colorScheme.background,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 2,
                            child: Column(
                              children: [
                                // CARD -> CHILDREN

                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  child: SizedBox(
                                    height: 200,
                                    width: double.infinity,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: -190,
                                          left: 0,
                                          right: 0,
                                          child: Image.asset(
                                            'assets/images/stock/coffee-takeaway--pexels-photo-885021.webp',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                Container(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      // CARD -> BOTTOM SECTION CHILDREN

                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                            child: Builder(
                                                builder: (BuildContext context) {
                                                  return Text(
                                                    'Order on the go!',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      color: Theme.of(context).colorScheme.onSurface,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 16,
                                                    ), //END TEXT STYLE
                                                  );
                                                }),
                                          ),
                                        ],
                                      ),

                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                            child: Builder(
                                                builder: (BuildContext context) {
                                                  return Text(
                                                    'Order now, collect later!',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      color: Theme.of(context).colorScheme.onTertiaryContainer,
                                                      fontWeight: FontWeight.normal,
                                                      fontSize: 14,
                                                    ), //END TEXT STYLE
                                                  );
                                                }),
                                          ),
                                        ],
                                      ), // END TEXT
                                    ], // END CARD CHILDREN
                                  ), // END CONTAINER->CHILD->COLUMN
                                ), // END CONTAINER
                              ], // END CHILDREN
                            ), // END COLUMN
                          ),
                        ), // END CARD #3
                        ],
                      ),
                    ]))
              ],
            )));
  }
}
