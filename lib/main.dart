import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(initialPage: 1)..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
              image: 'assets/images/uno.jpg',
              title: 'Joyeria',
              description: 'Descripcion'),
          makePage(
              image: 'assets/images/dos.jpg',
              title: 'Joyeria',
              description: 'Descripcion'),
          makePage(
              image: 'assets/images/tres.jpg',
              title: 'Joyeria',
              description: 'Descripcion'),
          makePage(
              image: 'assets/images/cuatro.jpg',
              title: 'Joyeria',
              description: 'Descripcion'),
        ],
      ),
    );
  }

  Widget makePage({image, title, description}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2),
        ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      '01',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '/4',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,
                                color: Colors.yellow, size: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,
                                color: Colors.yellow, size: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,
                                color: Colors.yellow, size: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,
                                color: Colors.yellow, size: 15),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child:
                                Icon(Icons.star, color: Colors.grey, size: 15),
                          ),
                          Text(
                            '4.0',
                            style: TextStyle(color: Colors.white70),
                          ),
                          Text(
                            '(2300)',
                            style:
                                TextStyle(color: Colors.white38, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text(
                          description,
                          style: TextStyle(
                              color: Colors.white.withOpacity(.7),
                              height: 1.9,
                              fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'READ MORE',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
