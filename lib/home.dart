

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';
import 'main.dart';
import 'itemDetails.dart';

void main() => runApp(const Homepage());

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: '/first',
        routes: {
          '/': (context) => const Intropage(),
          '/first': (context) => const Login(),
          '/second': (context) => const Signup(),
          '/third': (context) => const Home(),
        },
        theme: ThemeData(
        primarySwatch: Colors.teal
    ),

    );

  }
}



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  get image => null;



      @override
  // get accountEmail => null;
  // get accountName => null;
  // get currentAccountPicture => null;

  Widget build(BuildContext context){
        final mqHeight=MediaQuery.of(context).size.height;
        final mqWidth=MediaQuery.of(context).size.width;

    return
        SafeArea(
          child: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.add_alert_rounded,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              )
            ],
            title: const Text('Bonge!',
            style: TextStyle(
              fontSize:25,
            ),

            ),


          ),
            bottomNavigationBar: BottomNavigationBar(
              fixedColor: Colors.teal,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home,
                  color: Colors.teal,),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag),
                  label: 'shop',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.dynamic_feed),
                  label: 'feeds',
                ),
              ],
            ),


              drawer:  Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: const [
                    UserAccountsDrawerHeader
                (accountName: Text('username',
                    style: TextStyle(
                      color: Colors.tealAccent
                    ),
                    ), accountEmail: Text('usermail@gmail.com',
                      style: TextStyle(
                          color: Colors.tealAccent
                      ),
                    ),

                currentAccountPicture:CircleAvatar(
                backgroundColor:Colors.tealAccent,
                child:Icon(Icons.person,
                size: 60,
                ),
                    ),

                    ),

                    ListTile(
                      leading: Icon(Icons.home,
                      color: Colors.teal,
                      size: 20,),
                      title: Text('Home',
                           style: TextStyle(
                          color: Colors.teal
                   ),
               ),
                    ),

                    ListTile(
                      leading: Icon(Icons.settings,
                        color: Colors.teal,
                        size: 20,),
                      title: Text('Setting',
                         style: TextStyle(
                              color: Colors.teal
                              ),
                          ),
                    ),


                    ListTile(
                      leading: Icon(Icons.add_circle,
                        color: Colors.teal,
                        size: 20,),
                      title: Text('Add items',
                           style: TextStyle(
                            color: Colors.teal
                      ),
                       ),
                    ),
                    ListTile(
                      leading: Icon(Icons.contacts,
                        color: Colors.teal,
                        size: 20,),
                      title: Text('Contact us',
                      style: TextStyle(
                         color: Colors.teal,
                      ),
                    ),
                    ),

                    ListTile(
                      leading: Icon(Icons.help,
                        color: Colors.teal,
                        size: 20,),
                      title: Text('Support',
                        style: TextStyle(
                          color: Colors.teal,
                        ),
                      ),
                      ),
                  ]
              ),
                ),

          body:
          SingleChildScrollView(
            child:Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: mqHeight/2.5,
            // width: 1200,
            // color: Colors.teal,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/bground4.jpg'),
              fit: BoxFit.cover)
            ),

            child: Stack(
              clipBehavior: Clip.none, children:[
                Container(
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),

              padding: const EdgeInsets.symmetric(vertical: 1.5,horizontal: 30),
              margin: const EdgeInsets.fromLTRB(50,60,45,150),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  suffixIcon: IconButton(
                     alignment: const Alignment(17, 100),
                    onPressed: (){
                        /*showSearch(
                         context: context,
                         delegate: MySearchDelegate(),
                       );*/

                    }, icon: const Icon(Icons.search,
                    size: 20,
                  ),
                  )
                ),
                ),

                  ) ,

               Positioned(
                  top:200,
                  left: 0.0,
                  right: 0.0,
                  bottom: -100,
                  child: SizedBox(
                    height: 100,
                    child:GridView(
                      scrollDirection: Axis.horizontal,
                        gridDelegate: const
                            SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 500,
                          crossAxisSpacing: 25,
                          mainAxisSpacing: 25,
                        ),
                      children: [

                        //BEAUTY
                        Container(
                          alignment: Alignment.centerRight,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 0.75)
                              )
                            ],
                          ),
                          child: Column(
                            children:const [Text('Beauty',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.teal
                            ),
                            ),
                              Image(image: AssetImage('images/brush.jpg',
                              ),
                              fit:BoxFit.fill ,),
                              Text('   New makeup Kits for all skin types and shades  ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontStyle:FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.blueGrey

                              ),
                              )
                      ]

                          ),
                        ),

                        //CLOTHES
                        Container(
                          alignment: Alignment.centerRight,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 0.75)
                              )
                            ],
                          ),
                          child: Column(
                              children:const [Text('Clothes',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal
                                ),
                              ),
                                Image(image: AssetImage('images/Clothes.jpg',
                                ),
                                  fit:BoxFit.fill ,),

                                Text(' Clothes for different occasions to every age and gender ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontStyle:FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                      color: Colors.blueGrey

                                  ),
                                )
                              ]
                          ),
                          ),

                        //ACCESSORIES
                        Container(
                          alignment: Alignment.centerRight,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 0.75)
                              )
                            ],
                          ),
                          child: Column(
                              children:const [Text('Accessories',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal
                                ),
                              ),
                                Image(image: AssetImage('images/watch.jpg',
                                ),
                                  fit:BoxFit.fill ,),
                                Text('Get glasses,watches and jewelries of your choice',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontStyle:FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                      color: Colors.blueGrey

                                  ),
                                )
                              ]

                          ),


                        ),


                        //SHOES
                        Container(
                          alignment: Alignment.centerRight,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 0.75)
                              )
                            ],
                          ),

                          child: Column(
                              children:const [Text('Shoes',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal
                                ),
                              ),
                                Image(image: AssetImage('images/shoe1.jpg',
                                ),
                                  fit:BoxFit.fill ,),
                                Text('  Shoes for different occasions from great brands  ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontStyle:FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                      color: Colors.blueGrey

                                  ),
                                )
                              ]

                          ),

                          ),

                        //FURNITURE
                        Container(
                          alignment: Alignment.centerRight,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 0.75)
                              )
                            ],
                          ),
                          child: Column(
                              children:const [Text('Furniture',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal
                                ),
                              ),
                                Image(image: AssetImage('images/furniture.jpg',
                                ),
                                  fit:BoxFit.cover ,),
                                Text(' furniture from best carpentry companies in TZ  ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontStyle:FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                      color: Colors.blueGrey

                                  ),
                                )
                              ]

                          ),
                          ),
                      ],
                    )
              )
              )
]
          ),
              ),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(bottom: 45,top: 150, left: 25),
                //padding: const EdgeInsets.fromLTRB(10, 130, 650, 50),
               // margin: const EdgeInsets.fromLTRB(0, 20, 575, 0),
                child: const Text(
                  'Trending',
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                      fontSize:25,
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 30),
                margin: const EdgeInsets.symmetric(vertical: 2),
                height: 150,
                width: 1335,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 0.75)
                    )
                  ],
                ),
                      child:Row(
                          children:[
                             const Image(image: AssetImage('images/headphones.jpg'),
                                 fit:BoxFit.fill),
                            Expanded(
                              child:Column(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children:const [
                                  Text('Fancy head phones',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                      color: Colors.teal

                                  ),),
                                  Text('New trending and fancy head phones with quality',
                                  style: TextStyle(
                                      color: Colors.blueGrey
                                  ),)
                                ]
                              ),
                            ),
                            const Padding(
                              padding:EdgeInsets.all(10)
                            )
                          ]
                      )
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 25),
                  margin: const EdgeInsets.symmetric(vertical: 3),
                  height: 150,
                  width: 1335,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 15.0,
                          offset: Offset(0.0, 0.75)
                      )
                    ],
                  ),
                  child:Row(
                      children:[
                        const Image(image: AssetImage('images/samsung2.jpg'),
                            fit:BoxFit.fill),
                        Expanded(
                          child:Column(
                              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children:const [
                                Text('New Samsung',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal
                                ),),
                                Text(' A brand new Samsung phone from S series (S22) with advanced mind blowing features',
                                style: TextStyle(
                                  color: Colors.blueGrey
                                ),),

                              ]
                          ),
                        ),
                        const Padding(
                            padding:EdgeInsets.all(10)
                        )
                      ]
                  )
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 30),
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  height: 150,
                  width: 1335,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 15.0,
                          offset: Offset(0.0, 0.75)
                      )
                    ],
                  ),
                  child:Row(
                      children:[
                        const Image(image: AssetImage('images/handbag2.jpg'),
                            fit:BoxFit.fill),
                        Expanded(
                          child:Column(
                              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children:const [
                                Text('Handbags',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.teal)
                                ),

                                Text(' Exclusive fabulous and cool handbags for ladies in a pack with three mini purses',
                                    style: TextStyle(
                                        color: Colors.blueGrey))
                              ]
                          ),
                        ),
                        const Padding(
                            padding:EdgeInsets.all(10)
                        )
                      ]
                  )
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 30),
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  height: 150,
                  width: 1335,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 15.0,
                          offset: Offset(0.0, 0.75)
                      )
                    ],
                  ),
                  child:Row(
                      children:[
                        const Image(image: AssetImage('images/shoe1.jpg'),
                            fit:BoxFit.fill),
                        Expanded(
                          child:Column(
                              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children:const [
                                Text(''),
                                Text('')
                              ]
                          ),
                        ),
                        const Padding(
                            padding:EdgeInsets.all(10)
                        )
                      ]
                  )
              )

              ]
                ),

              )
          )
        );

  }
}


/*
class MySearchDelegate  extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            }
            else {
              query = '';
            }
          }
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = [
      'Shoes',
      'Sneakers',
      'Glasses',
      'Clothes',
      'furniture',
      'Lipstick',
    ];
  }*/
