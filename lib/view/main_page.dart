import 'package:flutter/material.dart';
import 'package:scan_invoice/utils/const.dart';
import 'package:scan_invoice/view/declaration/declaration_screen.dart';
import 'package:scan_invoice/view/home/home_screen.dart';
import 'package:scan_invoice/view/invoice/invoice_screen.dart';
import 'package:scan_invoice/view/setting/setting_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late List<Widget> _screens;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    _screens = const [
      HomeScreen(),
      InvoiceScreen(),
      DeclarationScreen(),
      SettingScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLOR.BACKGROUND,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Container(
            height: 58,
            width: 58,
            decoration: BoxDecoration(
                shape: BoxShape.circle, border: Border.all(color: COLOR.RED.withOpacity(0.2))),
            child: const Icon(Icons.person),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: _screens[_selectedIndex < 2 ? _selectedIndex : _selectedIndex - 1],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: COLOR.MENU_ACTIVE,
        unselectedItemColor: COLOR.MENU_DISABLE,
        items: [
          _getBottomMenuItem(Icons.home),
          _getBottomMenuItem(Icons.text_snippet),
          BottomNavigationBarItem(icon: Container(), label: ""),
          _getBottomMenuItem(Icons.card_giftcard),
          _getBottomMenuItem(Icons.settings),
        ],
        onTap: (i) {
          setState(() {
            _selectedIndex = i;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }

  BottomNavigationBarItem _getBottomMenuItem(IconData icon) {
    return BottomNavigationBarItem(icon: Icon(icon), label: "");
  }
}
