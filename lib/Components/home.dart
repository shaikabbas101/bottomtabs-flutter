import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  // final int counter;
  // final VoidCallback increaseCount;
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    const screens = [
      Center(
        child: Text("HomeTodo", style: TextStyle(color: Colors.white)),
      ),
      Center(child: Text("story", style: TextStyle(color: Colors.white))),
      Center(child: Text("history", style: TextStyle(color: Colors.white)))
    ];
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            ),
          ],
          leading: const Icon(Icons.menu),
          title: const Text("flutter app")),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: 'story'),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: 'history')
          ],
          currentIndex: selectedIndex,
          onTap: (int i) {
            setState(
              () {
                selectedIndex = i;
              },
            );
          }),
      body: Container(color: Colors.black, child: screens[selectedIndex]),
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       const Text(
      //         'You have pushed the button this many times:',
      //       ),
      //       Text(
      //         "\$${widget.counter}",
      //         style: Theme.of(context).textTheme.headline4,
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: widget.increaseCount,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.calendar_month),
      // ),
    );
  }
}
