import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => const SettingsPage(),
      );
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
                          alignment: Alignment.topLeft,
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
                          alignment: Alignment.topLeft,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'What can we do to help?',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'YOUR PROFILE',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).colorScheme.onSurface,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Builder(
                          builder: (BuildContext context) {
                            return Divider(
                                color: Theme.of(context).colorScheme.tertiary,
                                thickness: 0.5);
                          }),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'Change your email',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'Change your password',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'Manage payment information',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'Order history',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'SUPPORT AND LEGAL',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).colorScheme.onSurface,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Builder(
                          builder: (BuildContext context) {
                            return Divider(
                                color: Theme.of(context).colorScheme.tertiary,
                                thickness: 0.5);
                          }),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'Contact us',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'Terms and conditions',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'Privacy policy',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'Delete account',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'CONTACT PREFERENCES',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).colorScheme.onSurface,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Builder(
                          builder: (BuildContext context) {
                            return Divider(
                                color: Theme.of(context).colorScheme.tertiary,
                                thickness: 0.5);
                          }),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'Allow us to contact you',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  'VERSION',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).colorScheme.onSurface,
                                  ),
                                );
                              }),
                        ),
                      ),

                      Builder(
                          builder: (BuildContext context) {
                            return Divider(
                                color: Theme.of(context).colorScheme.tertiary,
                                thickness: 0.5);
                          }),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Builder(
                              builder: (BuildContext context) {
                                return Text(
                                  '1.0',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                );
                              }),
                        ),
                      ),



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