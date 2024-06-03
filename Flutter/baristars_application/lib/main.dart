import 'package:baristars_application/pages/login.dart';
import 'package:baristars_application/pages/register.dart';
import 'package:baristars_application/pages/home.dart';
import 'package:baristars_application/pages/location.dart';
import 'package:baristars_application/pages/order.dart';
import 'package:baristars_application/pages/rewards.dart';
import 'package:baristars_application/pages/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baristars',

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF6750A4),
          onPrimary: Color(0xFFFFFFFF),
          primaryContainer: Color(0xFFEADDFF),
          onPrimaryContainer: Color(0xFF21005D),
          secondary: Color(0xFF625B71),
          onSecondary: Color(0xFFFFFFFF),
          secondaryContainer: Color(0xFFE8DEF8),
          onSecondaryContainer: Color(0xFF1D192B),
          tertiary: Color(0xFF7D5260),
          onTertiary: Color(0xFFFFFFFF),
          tertiaryContainer: Color(0xFFFFD8E4),
          onTertiaryContainer: Color(0xFF31111D),
          error: Color(0xFFB3261E),
          onError: Color(0xFFFFFFFF),
          errorContainer: Color(0xFFF9DEDC),
          onErrorContainer: Color(0xFF410E0B),
          outline: Color(0xFF79747E),
          background: Color(0xFFFFFBFE),
          onBackground: Color(0xFF1C1B1F),
          surface: Color(0xFFFFFBFE),
          onSurface: Color(0xFF1C1B1F),
          surfaceVariant: Color(0xFFE7E0EC),
          onSurfaceVariant: Color(0xFF49454F),
          inverseSurface: Color(0xFF313033),
          onInverseSurface: Color(0xFFF4EFF4),
          inversePrimary: Color(0xFFD0BCFF),
          shadow: Color(0xFF000000),
          surfaceTint: Color(0xFF6750A4),
          outlineVariant: Color(0xFFCAC4D0),
          scrim: Color(0xFF000000),
          ),
      ),

      darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            primary: Color(0xFFD0BCFF),
            onPrimary: Color(0xFF381E72),
            primaryContainer: Color(0xFF4F378B),
            onPrimaryContainer: Color(0xFFEADDFF),
            secondary: Color(0xFFCCC2DC),
            onSecondary: Color(0xFF332D41),
            secondaryContainer: Color(0xFF4A4458),
            onSecondaryContainer: Color(0xFFE8DEF8),
            tertiary: Color(0xFFEFB8C8),
            onTertiary: Color(0xFF492532),
            tertiaryContainer: Color(0xFF633B48),
            onTertiaryContainer: Color(0xFFFFD8E4),
            error: Color(0xFFF2B8B5),
            onError: Color(0xFF601410),
            errorContainer: Color(0xFF8C1D18),
            onErrorContainer: Color(0xFFF9DEDC),
            outline: Color(0xFF938F99),
            background: Color(0xFF1C1B1F),
            onBackground: Color(0xFFE6E1E5),
            surface: Color(0xFF1C1B1F),
            onSurface: Color(0xFFE6E1E5),
            surfaceVariant: Color(0xFF49454F),
            onSurfaceVariant: Color(0xFFCAC4D0),
            inverseSurface: Color(0xFFE6E1E5),
            onInverseSurface: Color(0xFF313033),
            inversePrimary: Color(0xFF6750A4),
            shadow: Color(0xFF000000),
            surfaceTint: Color(0xFFD0BCFF),
            outlineVariant: Color(0xFF49454F),
            scrim: Color(0xFF000000),
          )
      ),

      home: const Home(title: 'Baristars'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),

      body: IndexedStack(
        index: _currentIndex,
        children: [
          for (final tabItem in TabNavigationItem.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).colorScheme.onTertiary,
        unselectedItemColor: Theme.of(context).colorScheme.onTertiary,
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        onTap: (int index) => setState(() => _currentIndex = index),
        items: [
          for (final tabItem in TabNavigationItem.items)
            BottomNavigationBarItem(
              icon: tabItem.icon,
              label: tabItem.title,
            )
        ],
      ),
    );
  }
}

class TabNavigationItem {
  final Widget page;
  final String title;
  final Icon icon;

  TabNavigationItem({
    required this.page,
    required this.title,
    required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: const HomePage(),
          icon: const Icon(Icons.home),
          title: "Home",
        ),
        TabNavigationItem(
          page: const OrderPage(),
          icon: const Icon(Icons.coffee_outlined),
          title: "Order",
        ),
        TabNavigationItem(
          page: const LocationPage(),
          icon: const Icon(Icons.place_outlined),
          title: "Location",
        ),
        TabNavigationItem(
          page: const RewardsPage(),
          icon: const Icon(Icons.redeem),
          title: "Rewards",
        ),
        TabNavigationItem(
          page: const SettingsPage(),
          icon: const Icon(Icons.settings),
          title: "Settings",
        ),
      ];
}

// CUSTOM TOP APP BAR
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 120.0,
        child: Container(
            color: Theme.of(context).colorScheme.tertiary,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: FractionallySizedBox(
                    heightFactor: 0.7,
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                        MediaQuery.of(context).platformBrightness == Brightness.dark
                            ? 'assets/images/logo/Baristars-Logo-1xhdpi.png'
                            : 'assets/images/logo/Baristars-Logo-White-1xhdpi.png',
                            height: 50,)
                    )
            )
        )
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80.0);
}