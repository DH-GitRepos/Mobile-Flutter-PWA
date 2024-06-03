import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => const OrderPage(),
      );
  @override
  _OrderPageState createState() => _OrderPageState();
}

final ButtonStyle filledButtonStyle = FilledButton.styleFrom(
  foregroundColor: Colors.myPallet50,
  backgroundColor: Colors.myPallet500,
  minimumSize: const Size(88, 42),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
  ),
);

enum DrinkSizes { small, medium, large }
enum DrinkTypes { coffee, tea, chocolate, iced }

class _OrderPageState extends State<OrderPage> {

  DrinkSizes _sizes = DrinkSizes.small;
  DrinkTypes _types = DrinkTypes.coffee;

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
                          children: [ // BODY -> CHILDREN

                          // ***** START PAGE HEADING TEXT ***** //

                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                              alignment: Alignment.center,
                              child: Builder(
                                  builder: (BuildContext context) {
                                    return Text(
                                      'What can we make',
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
                                      'for you today?',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Theme.of(context).colorScheme.tertiary,
                                      ),
                                    );
                                  }),
                            ),
                          ),

                          // ***** END PAGE HEADING TEXT ***** //


                          // ***** START CARD CONTAINER GROUP ITEM: DRINK SIZE ***** //

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

                                    // ***** BEGIN CARD HEADING TEXT ***** //

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
                                                        'Drink size',
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

                                    // ***** BEGIN CARD HEADING TEXT ***** //

                                    // ***** BEGIN OPTION ROW: DRINK SIZE SMALL ***** //

                                    Container(
                                      padding: const EdgeInsets.fromLTRB(16, 0, 5, 0),
                                      child: Row(
                                          children: [
                                            Expanded(
                                              flex: 9,
                                              child: Column( // LEFT COLUMN - FOR TEXT
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Builder(
                                                        builder: (BuildContext context) {
                                                          return Text(
                                                            'Small - £2.75',
                                                            style: TextStyle(
                                                              color: Theme.of(context).colorScheme.onSurface,
                                                            ),
                                                          );
                                                        }),
                                                  ] // END COLUMN CHILDREN
                                              ),
                                            ),

                                            Expanded(
                                              flex: 2,
                                              child: Column( // RIGHT COLUMN - FOR RADIO BUTTON
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                      child: ListTile(
                                                        /* title: const Text('Small'),*/
                                                        title: null,
                                                        leading: Radio(
                                                          value: DrinkSizes.small,
                                                          groupValue: _sizes,
                                                          onChanged: (DrinkSizes? value) {
                                                            setState(() {
                                                              _sizes = value!;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ] // END COLUMN CHILDREN
                                              ),
                                            ), // END COLUMN

                                          ] // END children of CONTAINER > ROW),
                                      ),
                                    ),

                                    // ***** END OPTION ROW ***** //

                                    Builder(
                                        builder: (BuildContext context) {
                                          return Divider(
                                              color: Theme.of(context).colorScheme.tertiary,
                                              thickness: 0.5);
                                        }),

                                    // ***** BEGIN OPTION ROW: DRINK SIZE MEDIUM ***** //

                                    Container(
                                      padding: const EdgeInsets.fromLTRB(16, 0, 5, 0),
                                      child: Row(
                                          children: [
                                            Expanded(
                                              flex: 9,
                                              child: Column( // LEFT COLUMN - FOR TEXT
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Builder(
                                                        builder: (BuildContext context) {
                                                          return Text(
                                                            'Medium - £3.25',
                                                            style: TextStyle(
                                                              color: Theme.of(context).colorScheme.onSurface,
                                                            ),
                                                          );
                                                        }),
                                                  ] // END COLUMN CHILDREN
                                              ),
                                            ),

                                            Expanded(
                                              flex: 2,
                                              child: Column( // RIGHT COLUMN - FOR RADIO BUTTON
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children:  [
                                                    Padding(
                                                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                      child: ListTile(
                                                        /* title: const Text('medium'), */
                                                        title: null,
                                                        leading: Radio(
                                                          value: DrinkSizes.medium,
                                                          groupValue: _sizes,
                                                          onChanged: (DrinkSizes? value) {
                                                            setState(() {
                                                              _sizes = value!;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ] // END COLUMN CHILDREN
                                              ),
                                            ), // END COLUMN

                                          ] // END children of CONTAINER > ROW),
                                      ),
                                    ),

                                    // ***** END OPTION ROW ***** //

                                    Builder(
                                        builder: (BuildContext context) {
                                          return Divider(
                                              color: Theme.of(context).colorScheme.tertiary,
                                              thickness: 0.5);
                                        }),

                                    // ***** BEGIN OPTION ROW: DRINK SIZE LARGE ***** //

                                    Container(
                                      padding: const EdgeInsets.fromLTRB(16, 0, 5, 8),
                                      child: Row(
                                          children: [
                                            Expanded(
                                              flex: 9,
                                              child: Column( // LEFT COLUMN - FOR TEXT
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Builder(
                                                        builder: (BuildContext context) {
                                                          return Text(
                                                            'Large - £3.75',
                                                            style: TextStyle(
                                                              color: Theme.of(context).colorScheme.onSurface,
                                                            ),
                                                          );
                                                        }),
                                                  ] // END COLUMN CHILDREN
                                              ),
                                            ),

                                            Expanded(
                                              flex: 2,
                                              child: Column( // RIGHT COLUMN - FOR RADIO BUTTON
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children:  [
                                                    Padding(
                                                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                      child: ListTile(
                                                        /* title: const Text('large'), */
                                                        title: null,
                                                        leading: Radio(
                                                          value: DrinkSizes.large,
                                                          groupValue: _sizes,
                                                          onChanged: (DrinkSizes? value) {
                                                            setState(() {
                                                              _sizes = value!;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ] // END COLUMN CHILDREN
                                              ),
                                            ), // END COLUMN

                                          ] // END children of CONTAINER > ROW),
                                      ),
                                    ),

                                    // ***** END OPTION ROW ***** //

                                ] // END children of CONTAINER > CARD > COLUMN
                              ), // END COLUMN
                            ), // END CARD
                          ), // END MAIN CONTAINER FOR CARD

                          // ***** END CARD CONTAINER GROUP ITEM ***** //


                          // ***** START CARD CONTAINER GROUP ITEM: DRINK TYPE ***** //

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

                                    // ***** BEGIN CARD HEADING TEXT ***** //

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
                                                        'Drink type',
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

                                    // ***** BEGIN CARD HEADING TEXT ***** //

                                    // ***** BEGIN OPTION ROW: DRINK TYPE COFFEE ***** //

                                    Container(
                                      padding: const EdgeInsets.fromLTRB(16, 0, 5, 0),
                                      child: Row(
                                          children: [
                                            Expanded(
                                              flex: 9,
                                              child: Column( // LEFT COLUMN - FOR TEXT
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Builder(
                                                        builder: (BuildContext context) {
                                                          return Text(
                                                            'Coffee',
                                                            style: TextStyle(
                                                              color: Theme.of(context).colorScheme.onSurface,
                                                            ),
                                                          );
                                                        }),
                                                  ] // END COLUMN CHILDREN
                                              ),
                                            ),

                                            Expanded(
                                              flex: 2,
                                              child: Column( // RIGHT COLUMN - FOR RADIO BUTTON
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                      child: ListTile(
                                                        /* title: const Text('Small'),*/
                                                        title: null,
                                                        leading: Radio(
                                                          value: DrinkTypes.coffee,
                                                          groupValue: _types,
                                                          onChanged: (DrinkTypes? value) {
                                                            setState(() {
                                                              _types = value!;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ] // END COLUMN CHILDREN
                                              ),
                                            ), // END COLUMN

                                          ] // END children of CONTAINER > ROW),
                                      ),
                                    ),

                                    // ***** END OPTION ROW ***** //

                                    Builder(
                                        builder: (BuildContext context) {
                                          return Divider(
                                              color: Theme.of(context).colorScheme.tertiary,
                                              thickness: 0.5);
                                        }),

                                    // ***** BEGIN OPTION ROW: DRINK TYPE TEA ***** //

                                    Container(
                                      padding: const EdgeInsets.fromLTRB(16, 0, 5, 0),
                                      child: Row(
                                          children: [
                                            Expanded(
                                              flex: 9,
                                              child: Column( // LEFT COLUMN - FOR TEXT
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Builder(
                                                        builder: (BuildContext context) {
                                                          return Text(
                                                            'Tea',
                                                            style: TextStyle(
                                                              color: Theme.of(context).colorScheme.onSurface,
                                                            ),
                                                          );
                                                        }),
                                                  ] // END COLUMN CHILDREN
                                              ),
                                            ),

                                            Expanded(
                                              flex: 2,
                                              child: Column( // RIGHT COLUMN - FOR RADIO BUTTON
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children:  [
                                                    Padding(
                                                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                      child: ListTile(
                                                        /* title: const Text('medium'), */
                                                        title: null,
                                                        leading: Radio(
                                                          value: DrinkTypes.tea,
                                                          groupValue: _types,
                                                          onChanged: (DrinkTypes? value) {
                                                            setState(() {
                                                              _types = value!;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ] // END COLUMN CHILDREN
                                              ),
                                            ), // END COLUMN

                                          ] // END children of CONTAINER > ROW),
                                      ),
                                    ),

                                    // ***** END OPTION ROW ***** //

                                    Builder(
                                        builder: (BuildContext context) {
                                          return Divider(
                                              color: Theme.of(context).colorScheme.tertiary,
                                              thickness: 0.5);
                                        }),

                                    // ***** BEGIN OPTION ROW: DRINK TYPE CHOCOLATE ***** //

                                    Container(
                                      padding: const EdgeInsets.fromLTRB(16, 0, 5, 0),
                                      child: Row(
                                          children: [
                                            Expanded(
                                              flex: 9,
                                              child: Column( // LEFT COLUMN - FOR TEXT
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Builder(
                                                        builder: (BuildContext context) {
                                                          return Text(
                                                            'Hot chocolate & other',
                                                            style: TextStyle(
                                                              color: Theme.of(context).colorScheme.onSurface,
                                                            ),
                                                          );
                                                        }),
                                                  ] // END COLUMN CHILDREN
                                              ),
                                            ),

                                            Expanded(
                                              flex: 2,
                                              child: Column( // RIGHT COLUMN - FOR RADIO BUTTON
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children:  [
                                                    Padding(
                                                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                      child: ListTile(
                                                        /* title: const Text('large'), */
                                                        title: null,
                                                        leading: Radio(
                                                          value: DrinkTypes.chocolate,
                                                          groupValue: _types,
                                                          onChanged: (DrinkTypes? value) {
                                                            setState(() {
                                                              _types = value!;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ] // END COLUMN CHILDREN
                                              ),
                                            ), // END COLUMN

                                          ] // END children of CONTAINER > ROW),
                                      ),
                                    ),

                                    // ***** END OPTION ROW ***** //

                                    Builder(
                                        builder: (BuildContext context) {
                                          return Divider(
                                              color: Theme.of(context).colorScheme.tertiary,
                                              thickness: 0.5);
                                        }),

                                    // ***** BEGIN OPTION ROW: DRINK TYPE ICED ***** //

                                    Container(
                                      padding: const EdgeInsets.fromLTRB(16, 0, 5, 8),
                                      child: Row(
                                          children: [
                                            Expanded(
                                              flex: 9,
                                              child: Column( // LEFT COLUMN - FOR TEXT
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Builder(
                                                        builder: (BuildContext context) {
                                                          return Text(
                                                            'Iced coffee',
                                                            style: TextStyle(
                                                              color: Theme.of(context).colorScheme.onSurface,
                                                            ),
                                                          );
                                                        }),
                                                  ] // END COLUMN CHILDREN
                                              ),
                                            ),

                                            Expanded(
                                              flex: 2,
                                              child: Column( // RIGHT COLUMN - FOR RADIO BUTTON
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children:  [
                                                    Padding(
                                                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                      child: ListTile(
                                                        /* title: const Text('large'), */
                                                        title: null,
                                                        leading: Radio(
                                                          value: DrinkTypes.iced,
                                                          groupValue: _types,
                                                          onChanged: (DrinkTypes? value) {
                                                            setState(() {
                                                              _types = value!;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ] // END COLUMN CHILDREN
                                              ),
                                            ), // END COLUMN

                                          ] // END children of CONTAINER > ROW),
                                      ),
                                    ),

                                    // ***** END OPTION ROW ***** //

                                  ] // END children of CONTAINER > CARD > COLUMN
                              ), // END COLUMN
                            ), // END CARD
                          ), // END MAIN CONTAINER FOR CARD

                          // ***** END CARD CONTAINER GROUP ITEM ***** //


                          // ***** START CARD CONTAINER GROUP ITEM: QUANTITY ***** //

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
                                                        'Quantity',
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
                                          children: const [
                                            Expanded(
                                              flex: 1,
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: '0',
                                                  labelText: 'Number to order',
                                                ),
                                              ),
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


                          // ***** START CARD CONTAINER GROUP ITEM: YOUR ORDER ***** //

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
                                                        'Your order',
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
                                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
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
                                                        'Order details:',
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: Theme.of(context).colorScheme.tertiary,
                                                          fontWeight: FontWeight.normal,
                                                          fontSize: 16,
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
                                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
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
                                                        'No drinks selected.',
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: Theme.of(context).colorScheme.onSurface,
                                                          fontWeight: FontWeight.normal,
                                                          fontSize: 14,
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
                                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
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
                                                        'Order cost:',
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: Theme.of(context).colorScheme.tertiary,
                                                          fontWeight: FontWeight.normal,
                                                          fontSize: 16,
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
                                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
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
                                                        '£0.00',
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: Theme.of(context).colorScheme.onSurface,
                                                          fontWeight: FontWeight.normal,
                                                          fontSize: 14,
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


                                    // ***** BEGIN OPTION ROW ***** //
                                    Container(
                                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                                      child: Row(
                                          children: [

                                            FilledButton(
                                              style: filledButtonStyle,
                                              onPressed: () { },
                                              child: const Text('Place order'),
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

                      ] // END LISTVIEW -> CHILDREN
                  ),

                )
              ] // END OF BODY MAIN CHILDREN
            ),
        ),
    );

  }
}