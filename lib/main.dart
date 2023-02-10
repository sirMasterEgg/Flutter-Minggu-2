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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Shoppa'),
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  print('Search pressed');
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  print('Cart pressed');
                },
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
            ],
            leading: IconButton(
              onPressed: () {
                print('Menu button pressed');
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            )),
        body: Column(
          children: const [
            Text('Welcome to our app kkkkkkkkkkkkkkkkk'),
            Text('Welcome to our app 1'),
            Text('Welcome to our app 2'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Floating action button pressed');
          },
          child: const Icon(Icons.add),
        )
      ),
    );
  }
}
