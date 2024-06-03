import 'package:flutter/material.dart';

class RewardsPage extends StatefulWidget {
  const RewardsPage({Key? key}) : super(key: key);
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => const RewardsPage(),
      );
  @override
  _RewardsPageState createState() => _RewardsPageState();
}

final ButtonStyle filledButtonStyle = FilledButton.styleFrom(
  foregroundColor: const Color(0xFFEFB8C8),
  backgroundColor: const Color(0xFF633B48),
  minimumSize: const Size(88, 42),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
  ),
);

class _RewardsPageState extends State<RewardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        padding: const EdgeInsets.all(10.0),
        color: Theme.of(context).colorScheme.onTertiary,

        child: Column(

            children: [

              Expanded(
                flex: 1,

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
                                  'You have rewards to use!',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                );
                              }),
                        ),
                      ),


                      // ***** START CARD CONTAINER GROUP ITEM ***** //

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
                                      'assets/images/stock/beans--pexels-photo-1695052.webp',
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
                                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Builder(
                                                builder: (BuildContext context) {
                                                  return Text(
                                                    'You have 4 free drinks!',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      color: Theme.of(context).colorScheme.onSurface,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18,
                                                    ), //END TEXT STYLE
                                                  );
                                                }),
                                          ),
                                        ],
                                      ),
                                    ], // END CARD CHILDREN
                                  ), // END CONTAINER->CHILD->COLUMN
                                ),

                                // ***** BEGIN OPTION ROW ***** //
                                Container(
                                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                                  child: Row(
                                      children: [

                                        FilledButton(
                                          style: filledButtonStyle,
                                          onPressed: () { },
                                          child: const Text('Add to order'),
                                        ),

                                      ] // END children of CONTAINER > ROW),
                                  ),
                                ),

                                // ***** END OPTION ROW ***** //

                              ] // END children of CONTAINER > CARD > COLUMN
                          ), // END COLUMN
                        ), // END CARD
                      ), // END MAIN CONTAINER FOR CARD

                      // ***** END CARD CONTAINER GROUP ITEM ***** //


                      // ***** START CARD CONTAINER GROUP ITEM ***** //

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
                                      'assets/images/stock/friends-pexels-marcus-aurelius-9789436.webp',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),


                                // ***** BEGIN ROW ***** //

                                Container(
                                  padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
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
                                                    'Refer another friend!',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      color: Theme.of(context).colorScheme.onSurface,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18,
                                                    ), //END TEXT STYLE
                                                  );
                                                }),
                                          ),
                                        ],
                                      ),
                                    ], // END CARD CHILDREN
                                  ), // END CONTAINER->CHILD->COLUMN
                                ),

                                // ***** END ROW ***** //

                                // ***** BEGIN ROW ***** //

                                Container(
                                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                                  child: Column(
                                    children: [
                                      // CARD -> BOTTOM SECTION CHILDREN

                                      Row(
                                        children: [
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 0, 8, 15),
                                              child: Builder(
                                                builder: (BuildContext context) {
                                                return Text(
                                                  'Enter their details below and we\'ll send them an invite, and a free drink on us as a welcome gift.',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                        color: Theme.of(context).colorScheme.onSurface,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.normal,
                                                      ), //END TEXT STYLE
                                                    );
                                                  }),

                                            ),
                                          ),
                                        ],
                                      ),
                                    ], // END CARD CHILDREN
                                  ), // END CONTAINER->CHILD->COLUMN
                                ),

                                // ***** END ROW ***** //


                                // ***** BEGIN ROW ***** //

                                Container(
                                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                                  child: Column(
                                    children: [
                                      // CARD -> BOTTOM SECTION CHILDREN

                                      Row(
                                        children: [
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 0, 8, 15),
                                              child: Builder(
                                                  builder: (BuildContext context) {
                                                    return Text(
                                                      'Once they sign up and place their first order using the app, you\'ll get a free drink added to your account too!',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: Theme.of(context).colorScheme.onSurface,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.normal,
                                                      ), //END TEXT STYLE
                                                    );
                                                  }),

                                            ),
                                          ),
                                        ],
                                      ),
                                    ], // END CARD CHILDREN
                                  ), // END CONTAINER->CHILD->COLUMN
                                ),

                                // ***** END ROW ***** //


                                // ***** BEGIN OPTION ROW ***** //

                                Container(
                                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                                  child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Builder(
                                              builder: (BuildContext context) {
                                                return TextField(
                                                  decoration: InputDecoration(
                                                    border: const OutlineInputBorder(),
                                                    hintText: 'Your friends name',
                                                    labelText: 'Name',
                                                    focusColor: Theme.of(context).colorScheme.tertiary,
                                                    hoverColor: Theme.of(context).colorScheme.tertiary,
                                                    fillColor: Theme.of(context).colorScheme.tertiary,
                                                    hintStyle: TextStyle(
                                                      color: Theme.of(context).colorScheme.tertiary,
                                                    ),

                                                  ),
                                                );
                                              }),
                                        ),
                                      ] // END children of CONTAINER > ROW),
                                  ),
                                ),

                                // ***** END OPTION ROW ***** //

                                // ***** BEGIN OPTION ROW ***** //
                                Container(
                                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                                  child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Builder(
                                              builder: (BuildContext context) {
                                                return TextField(
                                                  decoration: InputDecoration(
                                                    border: const OutlineInputBorder(),
                                                    hintText: 'friend@email-address.com',
                                                    labelText: 'Email',
                                                    focusColor: Theme.of(context).colorScheme.tertiary,
                                                    hoverColor: Theme.of(context).colorScheme.tertiary,
                                                    fillColor: Theme.of(context).colorScheme.tertiary,
                                                    hintStyle: TextStyle(
                                                      color: Theme.of(context).colorScheme.tertiary,
                                                    ),

                                                  ),
                                                );
                                              }),
                                        ),
                                      ] // END children of CONTAINER > ROW),
                                  ),
                                ),

                                // ***** END OPTION ROW ***** //


                                // ***** BEGIN OPTION ROW ***** //

                                Container(
                                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                                  child: Row(
                                      children: [

                                        FilledButton(
                                          style: filledButtonStyle,
                                          onPressed: () { },
                                          child: const Text('Invite now'),
                                        ),

                                      ] // END children of CONTAINER > ROW),
                                  ),
                                ),

                                // ***** END OPTION ROW ***** //

                              ] // END children of CONTAINER > CARD > COLUMN
                          ), // END COLUMN
                        ), // END CARD
                      ), // END MAIN CONTAINER FOR CARD

                      // ***** END CARD CONTAINER GROUP ITEM ***** //




                    ], // END MAIN LIST OF CHILDREN FOR COLUMN
                  ),
                ]
                ),

              )] // END OF BODY MAIN CHILDREN
        ),
      ),
    );

  }
}

