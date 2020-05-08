import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Hour Challenge',
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


class InsideCart extends StatefulWidget {
  @override
  _InsideCartState createState() => _InsideCartState();
}

class _InsideCartState extends State<InsideCart> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Image.asset("images/scren.png"),
            Container(
              height: height,
              width: width,
              color: Colors.grey.withOpacity(0.8),

            ),

            Positioned(
              top: height/3.9,

              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                child: Container(
                  width: width,
                  height: height,
                  padding: const EdgeInsets.all(20.0),

                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(left: 1.0,bottom: 5.0,top:35),
                        alignment: Alignment.centerLeft,
                        child: Text("My Order",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25.0)),
                      ),
                      Divider(thickness: 1,color: Colors.grey.withOpacity(0.3),),
                      SizedBox(height: 2,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              color: const Color(0xffd32f2f)

                            ),
                            height: 30,
                            width: 30,
                            child: Center(child: Text("2",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),)),
                          ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Container(
                               alignment: Alignment.centerLeft,
                               padding: const EdgeInsets.only(left: 1),
                               child: Text("Chicken Bao",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 16),),
                             ),
                           ],
                         ),
                          Container(
                            child: Text("\$9.00",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 16),),
                          )
                        ],
                      ),
                      SizedBox(height: 15,),
                      Divider(thickness: 1,color: Colors.grey.withOpacity(0.2),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              color: const Color(0xffd32f2f)

                            ),
                            height: 30,
                            width: 30,
                            child: Center(child: Text("1",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),)),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.only(left: 1),
                                alignment: Alignment.centerLeft,
                                child: Text("Dry Noodle Soup",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 16),),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text("Pork Belly",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w400,fontSize: 14),),
                              ),
                            ],
                          ),

                          Container(
                            child: Text("\$12.50",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 16),),
                          )
                        ],
                      ),
                      SizedBox(height: 15,),
                      Divider(thickness: 1,color: Colors.grey.withOpacity(0.2),),
                      SizedBox(height: 20,),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text("Summary",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25.0),),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(left: 1),
                            alignment: Alignment.centerLeft,
                            child: Text("Subtotal",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 16),),
                          ),
                          Container(
                            child: Text("\$12.50",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 16),),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(left: 1),
                            alignment: Alignment.centerLeft,
                            child: Text("Tax",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 16),),
                          ),
                          Container(
                            child: Text("\$1.50",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 16),),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(left: 1),
                            alignment: Alignment.centerLeft,
                            child: Text("Delivery Fee",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 16),),
                          ),
                          Container(
                            child: Text("free",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 16),),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(left: 1),
                            alignment: Alignment.centerLeft,
                            child: Text("Tip",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 16),),
                          ),
                          Container(
                            child: Text("\$3.50",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 16),),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(left: 1),
                            alignment: Alignment.centerLeft,
                            child: Text("Total",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 16),),
                          ),
                          Container(
                            child: Text("\$32.50",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 16),),
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Divider(thickness: 1,color: Colors.grey.withOpacity(0.2),),

                      Padding(
                        padding: const EdgeInsets.only(left:100.0,top: 40.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(2.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.all(Radius.circular(10.0))
                              ),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.monetization_on,color: Colors.black54,size: 17,),
                                  Text("pay")
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text("Apple Pay",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                            ),
                            Icon(Icons.arrow_drop_down,size: 40,)
                          ],
                        ),
                      ),
                      SizedBox(height: 5.0,),
                      Container(
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: const Color(0xffd32f2f)
                        ),
                        height: 50.0,
                        width: width/1.15,
                        child: Center(child:Text("Place Order",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white.withOpacity(0.7),fontSize: 18),)),
                      )


                    ],
                  ),
                ),
              ),


            ),
            Positioned(
              top: height/4.28,
              left: 50,
              right: 50,
              child: Container(

                width: 100,
                child: GestureDetector(
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
                              color: Color(0xff3f3f3f).withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 8
                          )
                        ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:0.0),
                                child: Icon(Icons.shopping_cart,color: Colors.red,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Text("\$20 total ",style: TextStyle(color:Colors.red,fontWeight: FontWeight.w500),),
                              )
                            ],
                          ),
                        ),
                        Icon(Icons.local_pizza,size: 10, color: Colors.red,),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Text("3 items in cart",style: TextStyle(color:Colors.red,fontWeight: FontWeight.w500),),
                        )
                      ],
                    ),
                  ),
                ),
              ),


            )

          ],
        ),
      ),
    );
  }
}
