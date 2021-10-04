import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 53, 143, 0),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 2;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: <Widget>[
          Text(
            'TIME PAGE',
            style: optionStyle,
          ),
          Text(
            'UNIT PAGE',
            style: optionStyle,
          ),
          DefaultTabController(
              length: 14,
              child: Scaffold(
                appBar: AppBar(
                  title: Text('Mall Online Jo'),
                  centerTitle: true,
                  bottom: TabBar(
                    indicatorColor: Color.fromARGB(255, 255, 204, 0),
                    labelColor: Color.fromARGB(255, 255, 204, 0),
                    unselectedLabelColor: Colors.white,
                    isScrollable: true,
                    tabs: [
                      Tab(
                        text: 'Stores',
                      ),
                      Tab(
                        text: 'Followed',
                      ),
                      Tab(
                        text: 'Accessories',
                      ),
                      Tab(
                        text: 'Handcrafts',
                      ),
                      Tab(
                        text: 'Toys',
                      ),
                      Tab(
                        text: 'Clothes',
                      ),
                      Tab(
                        text: 'Cooking',
                      ),
                      Tab(
                        text: 'Anime',
                      ),
                      Tab(
                        text: 'Books',
                      ),
                      Tab(
                        text: 'Arts',
                      ),
                      Tab(
                        text: 'Mobiles',
                      ),
                      Tab(
                        text: 'Gifts',
                      ),
                      Tab(
                        text: 'Makeup',
                      ),
                      Tab(
                        text: 'Others',
                      ),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    Column(
                      children: <Widget>[
                        ImageSlideshow(
                          width: double.infinity,
                          height: 200,
                          initialPage: 0,
                          autoPlayInterval: 3000,
                          indicatorColor: Color.fromARGB(255, 84, 213, 0),
                          indicatorBackgroundColor:
                              Color.fromARGB(255, 53, 143, 0),
                          isLoop: true,
                          children: [
                            Image.network(
                              'https://graph.facebook.com/127331926242355/picture',
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              's',
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              's',
                              fit: BoxFit.cover,
                            ),
                          ],
                          onPageChanged: (value) {
                            print('Page changed: $value');
                          },
                        )
                      ],
                    ),
                    Icon(Icons.directions_transit),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_bike),
                  ],
                ),
              )),
          Text(
            'COURSE PAGE',
            style: optionStyle,
          ),
          Text(
            'CONTACT PAGE',
            style: optionStyle,
          ),
        ].elementAt(_selectedIndex),
      ),
      /*
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
     */
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 53, 143, 0),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_outlined),
            label: 'Time',
            tooltip: 'Time',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: 'Unit',
            tooltip: 'Unit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: ImageIcon(
              AssetImage("assets/images/logo.png"),
            ),
            label: 'Home',
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Courses',
            tooltip: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Mail',
            tooltip: 'Mail',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 53, 143, 0),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
