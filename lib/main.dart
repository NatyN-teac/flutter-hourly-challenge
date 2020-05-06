import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
//        primaryColor: const Color(0xffd32f2f)

      ),
      home: InsideRestaurant(),
    );
  }
}

class InsideRestaurant extends StatefulWidget {
  @override
  _InsideRestaurantState createState() => _InsideRestaurantState();
}

class _InsideRestaurantState extends State<InsideRestaurant>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Align(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            icon: Icon(
                              Icons.close,
                              color: Color(0xffbdbdbd),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Dumpling House",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 22.0,
                                color: Colors.black54),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TabBar(
                          labelColor: const Color(0xffd32f2f),
                          unselectedLabelColor: const Color(0xffbdbdbd),
                          isScrollable: true,
                          indicatorColor: const Color(0xffd32f2f),
                          labelStyle: TextStyle(fontWeight: FontWeight.w700,),
                          tabs: <Widget>[
                            Tab(
                              child: Text(
                                "What's Good",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Appetizers",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Vegetable Dishes",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Meat Dishes",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Pizza and Burgers",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            ),


                          ],

                          controller: _tabController,
                        ),
                      ),
                      Container(
                        height: 1,
                        width: width,
                        color: Color(0xffbdbdbd),
                      ),

                      Container(
                        padding: const EdgeInsets.only(left: 20, right: 20.0,bottom: 100.0),
                        height: height,
                        child: TabBarView(
                          children: <Widget>[
                            Container(
                              child: ListView(
                                children: <Widget>[
                                  Container(


                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceEvenly,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Expanded(
                                          flex: 4,
                                          child: Column(

                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 0.0, left: 1),
                                                child: Container(
                                                  alignment: Alignment.centerLeft,
                                                  child: Text("Chicken Bao",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.black54),),),

                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0, left: 1),
                                                child: Container(
                                                  alignment: Alignment.centerLeft,
                                                  child: Text(
                                                    "Home made BBQ roasted chicken in a delicious bun",
                                                  style: TextStyle(fontSize: 15,color: Color(0xff757575)),),

                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 10.0,),
                                                child: Container(
                                                  child: Row(
                                                    children: <Widget>[
                                                      IconButton(
                                                        icon: Icon(Icons.add_circle_outline,color: Colors.red,size: 25.0,),
                                                        onPressed: (){

                                                        },

                                                      ),
                                                      Text("\$12.5",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black54),)
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),

                                        Expanded(
                                          flex:1,
                                          child: Container(
                                            height:100,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(

                                                  image: AssetImage("images/piz.jpg",),
                                                  fit: BoxFit.cover,

                                                ),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10)
                                                    )
                                              ),

                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: width,
                                    height: 1,
                                    color: Color(0xffeeeeee),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(


                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceEvenly,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Expanded(
                                          flex: 4,
                                          child: Column(

                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 0.0, left: 1),
                                                child: Container(
                                                  alignment: Alignment.centerLeft,
                                                  child: Text("Chicken Burger",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.black54),),),

                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0, left: 1),
                                                child: Container(
                                                  alignment: Alignment.centerLeft,
                                                  child: Text(
                                                    "Home made BBQ roasted chicken in a delicious bun",
                                                    style: TextStyle(fontSize: 15,color: Color(0xff757575)),),

                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 10.0,),
                                                child: Container(
                                                  child: Row(
                                                    children: <Widget>[
                                                      IconButton(
                                                        icon: Icon(Icons.add_circle_outline,color: Colors.red,size: 25.0,),
                                                        onPressed: (){

                                                        },

                                                      ),
                                                      Text("\$12.5",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black54),)
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),

                                        Expanded(
                                          flex:1,
                                          child: Container(
                                            height:100,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(

                                                  image: AssetImage("images/burger.jpg",),
                                                  fit: BoxFit.cover,

                                                ),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)
                                                )
                                            ),

                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: width,
                                    height: 1,
                                    color: Color(0xffeeeeee),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(


                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceEvenly,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Expanded(
                                          flex: 4,
                                          child: Column(

                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 0.0, left: 1),
                                                child: Container(
                                                  alignment: Alignment.centerLeft,
                                                  child: Text("Dry Noodles",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.black54),),),

                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0, left: 1),
                                                child: Container(
                                                  alignment: Alignment.centerLeft,
                                                  child: Text(
                                                    "Home made BBQ roasted chicken in a delicious bun",
                                                    style: TextStyle(fontSize: 15,color: Color(0xff757575)),),

                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 10.0,),
                                                child: Container(
                                                  child: Row(
                                                    children: <Widget>[
                                                      IconButton(
                                                        icon: Icon(Icons.add_circle_outline,color: Colors.red,size: 25.0,),
                                                        onPressed: (){

                                                        },

                                                      ),
                                                      Text("\$12.5",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black54),)
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),

                                        Expanded(
                                          flex:1,
                                          child: Container(
                                            height:100,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(

                                                  image: AssetImage("images/noodle.jpg",),
                                                  fit: BoxFit.cover,

                                                ),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)
                                                )
                                            ),

                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: width,
                                    height: 1,
                                    color: Color(0xffeeeeee),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(


                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceEvenly,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Expanded(
                                          flex: 4,
                                          child: Column(

                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 0.0, left: 1),
                                                child: Container(
                                                  alignment: Alignment.centerLeft,
                                                  child: Text("Chicken Bao",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.black54),),),

                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0, left: 1),
                                                child: Container(
                                                  alignment: Alignment.centerLeft,
                                                  child: Text(
                                                    "Home made BBQ roasted chicken in a delicious bun",
                                                    style: TextStyle(fontSize: 15,color: Color(0xff757575)),),

                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 10.0,),
                                                child: Container(
                                                  child: Row(
                                                    children: <Widget>[
                                                      IconButton(
                                                        icon: Icon(Icons.add_circle_outline,color: Colors.red,size: 25.0,),
                                                        onPressed: (){

                                                        },

                                                      ),
                                                      Text("\$12.5",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black54),)
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),

                                        Expanded(
                                          flex:1,
                                          child: Container(
                                            height:100,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(

                                                  image: AssetImage("images/piz.jpg",),
                                                  fit: BoxFit.cover,

                                                ),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)
                                                )
                                            ),

                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: width,
                                    height: 1,
                                    color: Color(0xffeeeeee),
                                  ),
                                  Container(


                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceEvenly,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Expanded(
                                          flex: 4,
                                          child: Column(

                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 0.0, left: 1),
                                                child: Container(
                                                  alignment: Alignment.centerLeft,
                                                  child: Text("Chicken Bao",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.black54),),),

                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0, left: 1),
                                                child: Container(
                                                  alignment: Alignment.centerLeft,
                                                  child: Text(
                                                    "Home made BBQ roasted chicken in a delicious bun",
                                                    style: TextStyle(fontSize: 15,color: Color(0xff757575)),),

                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 10.0,),
                                                child: Container(
                                                  child: Row(
                                                    children: <Widget>[
                                                      IconButton(
                                                        icon: Icon(Icons.add_circle_outline,color: Colors.red,size: 25.0,),
                                                        onPressed: (){

                                                        },

                                                      ),
                                                      Text("\$12.5",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black54),)
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),

                                        Expanded(
                                          flex:1,
                                          child: Container(
                                            height:100,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(

                                                  image: AssetImage("images/piz.jpg",),
                                                  fit: BoxFit.cover,

                                                ),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)
                                                )
                                            ),

                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: width,
                                    height: 1,
                                    color: Color(0xffeeeeee),
                                  ),
                                  Container(


                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceEvenly,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Expanded(
                                          flex: 4,
                                          child: Column(

                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 0.0, left: 1),
                                                child: Container(
                                                  alignment: Alignment.centerLeft,
                                                  child: Text("Chicken Bao",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.black54),),),

                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0, left: 1),
                                                child: Container(
                                                  alignment: Alignment.centerLeft,
                                                  child: Text(
                                                    "Home made BBQ roasted chicken in a delicious bun",
                                                    style: TextStyle(fontSize: 15,color: Color(0xff757575)),),

                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 10.0,),
                                                child: Container(
                                                  child: Row(
                                                    children: <Widget>[
                                                      IconButton(
                                                        icon: Icon(Icons.add_circle_outline,color: Colors.red,size: 25.0,),
                                                        onPressed: (){

                                                        },

                                                      ),
                                                      Text("\$12.5",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black54),)
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),

                                        Expanded(
                                          flex:1,
                                          child: Container(
                                            height:100,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(

                                                  image: AssetImage("images/piz.jpg",),
                                                  fit: BoxFit.cover,

                                                ),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)
                                                )
                                            ),

                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: width,
                                    height: 1,
                                    color: Color(0xffeeeeee),
                                  ),
                                ],
                              ),
                            ),
                            Text("hello world"),
                            Text("hello world"),
                            Text("hello world"),
                            Text("hello world"),
                          ],
                          controller: _tabController,
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Positioned(
                top:height -100,
                right:50,
                left: 50,
                child: Container(
                  decoration:BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [

                        Color(0xffffffff).withOpacity(0.2),
                        Color(0xfffafafa).withOpacity(0.3),
                        Color(0xfff5f5f5).withOpacity(0.1),
                      ]
                    )
                  ),
                  height: 100,
                  child: Center(child: GestureDetector(
                    child: Container(
                      width: width/1.8,
                      height: 50,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xfff5f5f9),
                            spreadRadius: 4,
                            blurRadius: 8
                          )
                        ]
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left:20.0),
                            child: Icon(Icons.shopping_cart,color: Colors.red,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Text("\$20 min .0  items in cart",style: TextStyle(color:Colors.red,fontWeight: FontWeight.w500),),
                          )
                        ],
                      ),
                    ),
                  )),
                ),
              )
            ],
          )),
    );
  }
}
