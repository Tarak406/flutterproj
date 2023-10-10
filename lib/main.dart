/*import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: FirstScreen(),);
  }
}
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Flipkart"),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    )
      ,body: Row(
        children: [
          Container(height: 400,width: 175,
          child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(400)),
            color: Colors.blue,
            child: ClipRRect(borderRadius:BorderRadius.circular(400),
                child: Image.network("https://images.pexels.com/photos/17334541/pexels-photo-17334541/free-photo-of-sea-dawn-landscape-nature.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.fill,)),),),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Container(height: 180,width: 125,
                  child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(250)),
                    color:Colors.pink ,
                    child: ClipRRect(borderRadius:BorderRadius.circular(70),
                        child: Image.network("https://images.pexels.com/photos/17334541/pexels-photo-17334541/free-photo-of-sea-dawn-landscape-nature.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.fill,))),),
              ),
           Padding(
             padding: const EdgeInsets.only(top: 100),
             child: Container(height:150 ,width: 155,
               child:Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(300)),
                 color: Colors.brown,
                 child: ClipRRect(borderRadius:BorderRadius.circular(90),
                     child: Image.network("https://images.pexels.com/photos/17334541/pexels-photo-17334541/free-photo-of-sea-dawn-landscape-nature.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.fill,)),),),
           ) ],
          ),
          SizedBox(height: 20,width: 100,
            child:TextButton(onPressed: (){
              setState(){}
            },) ,

          )
        ,
      ]
        )
     );
    }*/

/*
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,home: BottomNavigationBarTheme(),);
  }
}
class BottomNavigationBarTheme extends StatefulWidget {

  const BottomNavigationBarTheme({super.key});

  @override
  State<BottomNavigationBarTheme> createState() => _BottomNavigationBarThemeState();
}

class _BottomNavigationBarThemeState extends State<BottomNavigationBarTheme> {
   List<Widget> li=<Widget> [MyHome(),Favorite(),Wishlis(),Profile()];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,title:Row( mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("PlantStore",style: TextStyle(color: Colors.white,fontSize: 30),),
      ],),
          actions: [IconButton(onPressed: (){}, icon: Icon(Icons.add),)],
        leading: IconButton(onPressed: (){},icon: Icon(Icons.search_outlined),),
      )

     ,
    body:li[index],
    bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.yellow,
      currentIndex: index,
      onTap: (idx){
        setState(() {
          index=idx;
        });
      },
      selectedItemColor: Colors.cyan,
      unselectedItemColor: Colors.black,
      items:const [

        BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "MyHome",backgroundColor: Colors.greenAccent ),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "favorite",backgroundColor: Colors.purple),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_basket),label: "wishlist",backgroundColor: Colors.blue),
        BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "profile",backgroundColor: Colors.yellowAccent),
      ],),

    );

  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 250,width: 150,
           child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal()),
           color: Colors.lightGreen,child: Image.network("https://pixabay.com/photos/houseplant-potted-plant-decor-7367379/",fit: BoxFit.fill,),),

          //Text("Home"),
            //IconButton(onPressed: (){}, icon: Icon(Icons.home,size: 200,))
            )
          ],
        ),
      )
    );
  }
}

class Favorite extends StatefulWidget {
  const Favorite ({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}
class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("favorite"),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite,size: 200,color: Colors.red,))
        ],
      )
    );
  }
}
class Wishlis extends StatefulWidget {
  const Wishlis({super.key});

  @override
  State<Wishlis> createState() => _WishlisState();
}

class _WishlisState extends State<Wishlis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Wishlis'),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_basket,size: 200,color: Colors.greenAccent,))
        ],
      ),
    );
  }
}
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Profile'),
          IconButton(onPressed: (){}, icon: Icon(Icons.account_box,size: 200,color: Colors.greenAccent,))
        ],
      ),

    );
  }
}



import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: MainScreen(),);
  }
}
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Expanded(flex: 3,
            child: Container(color: Colors.white,)),
          Row(
            children: [
              Expanded(flex: 1,
                  child: Container(height: 100,width: 200,color: Colors.red,child: Image.network("gRIkSIECFChAgRIkSIECHCF8H/A/pMBm8wGL4+AAAAAElFTkSuQmCC"),)),
            ],
          ),
          Expanded(flex: 3,
              child: Container(color: Colors.white,

               )
    ,     )
    ,]
      )
      ,);
  }
}*/
/*
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: PageScroll());
  }
}
class PageScroll extends StatefulWidget {
  const PageScroll({super.key});

  @override
  State<PageScroll> createState() => _PageScrollState();
}

class _PageScrollState extends State<PageScroll> {

 List <String>  imageList=['assets/image.png','assets/image.png','assets/image.png''assets/image.png','assets/image.png','assets/image.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.builder(itemCount:imageList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

          crossAxisCount: 2,

        ),


        itemBuilder: (BuildContext context, int index) { return Image.asset(imageList[index],fit: BoxFit.fill,); },
      /*  children:[


       Container(color: Colors.black,)
      , Container(color: Colors.brown,),
          Container(color: Colors.greenAccent),
          Container(color: Colors.blueAccent,),
          Container(color: Colors.white),
          Container(color: Colors.pink),
          Container(color: Colors.lightGreen,),
          Container(color: Colors.cyan),
          Container(color: Colors.teal),
          Container(color: Colors.yellowAccent),
          Container(color: Colors.greenAccent,),
          Container(color: Colors.blueAccent,),
          Container(color: Colors.orange),
          Container(color: Colors.brown),
          Container(color: Colors.greenAccent,),
          Container(color: Colors.blueAccent,)
        ],*/
      )

    );
  }
}
*/
/*

import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: PageScroll());
  }
}
class PageScroll extends StatefulWidget {
  const PageScroll({super.key});

  @override
  State<PageScroll> createState() => _PageScrollState();
}

class _PageScrollState extends State<PageScroll> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder()(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        Container(color: Colors.teal),
        Container(color:Colors.pink),
        Container(color: Colors.yellow),
        Container(color: Colors.blueAccent),
        Container(color: Colors.brown),
        Container(color: Colors.white)
      ],)

    );
  }
}*/

  /*import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: Sriiii(),);
  }
}
class Sriiii extends StatelessWidget {
  const Sriiii({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("ListTile"),),
    body: ListView(children: [
      Padding(
        padding: const EdgeInsets.only(top:9),
        child: ListTile(leading: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(50)),
          child:Image.network("https://cdn.pixabay.com/photo/2023/09/09/12/38/fisherman-8243131_640.jpg",),)
       , title: Text("Satya"),
        subtitle: Text("hero"),
        trailing: Text("3.13"),
        tileColor: Colors.pink,
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)
        ) ,
        ),
      ),
      Divider(
        height:20 ,
      ),
      ListTile(leading: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(50)),
      child:Image.network("https://cdn.pixabay.com/photo/2023/09/09/12/38/fisherman-8243131_640.jpg",),)
      , title: Text("Hemanth"),
      subtitle: Text("hero"),
      trailing: Text("4.22"),
      tileColor: Colors.pink,
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)
      ) ,
      )
      ,
      Divider(
      height:20 ,
      ),
      ListTile(leading: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(50)),
    child:Image.network("https://cdn.pixabay.com/photo/2023/09/09/12/38/fisherman-8243131_640.jpg",),)
    , title: Text("Nanda"),
    subtitle: Text("hero"),
    trailing: Text("2.39"),
    tileColor: Colors.pink,
    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)
    ) ,
    ),
    Divider(
    height:20 ,
    ),
    ListTile(leading: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(50)),
    child:Image.network("https://cdn.pixabay.com/photo/2023/09/09/12/38/fisherman-8243131_640.jpg",),)
    , title: Text("Rajesh"),
    subtitle: Text("hero"),
    trailing: Text("7.23"),
    tileColor: Colors.pink,
    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)
    ) ,
    ),

    Divider(
    height:20 ,
    ),
    ListTile(leading: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(90)),
    child:Image.network("https://cdn.pixabay.com/photo/2023/09/09/12/38/fisherman-8243131_640.jpg",),)
    , title: Text("Madhu"),
    subtitle: Text("hero"),
    trailing: Text("7.45"),
    tileColor: Colors.pink,
    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)
    ) ,
    ),
    Divider(
    height:20 ,
    ),
    ListTile(leading: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(250)),
    child:Image.network("https://cdn.pixabay.com/photo/2023/09/09/12/38/fisherman-8243131_640.jpg",),)
    , title: Text("Siva"),
    subtitle: Text("hero"),
    trailing: Text("10.22"),
    tileColor: Colors.pink,
    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)
    ) ,
    ),

    Divider(
    height:20 ,
    ),
    ListTile(leading: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(80)),
    child:Image.network("https://cdn.pixabay.com/photo/2023/09/09/12/38/fisherman-8243131_640.jpg",),)
    , title: Text("Mohan"),
    subtitle: Text("hero"),
    trailing: Text("11.03"),
    tileColor: Colors.pink,
    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)
    ) ,
    ),

    Divider(
    height:20 ,
    ),
    ],
    ),
    );
  }
}  */







/*
import 'package:flutter/material.dart';
void main(){
  runApp(const RunApp());
}
class RunApp extends StatelessWidget {
  const RunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner:false ,home: deger(),) ;
  }
}
class deger extends StatelessWidget {
  const deger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (appBar: AppBar(title: Text("Drawer"),),
    drawer: Drawer(child:
    ListView(children: [
      DrawerHeader(decoration: BoxDecoration
        (color: Colors.cyan),
      child: Center(child:ClipRRect(borderRadius: BorderRadius.all(Radius.circular(50)),
          child: Image.network("https://cdn.pixabay.com/photo/2023/09/09/12/38/fisherman-8243131_640.jpg",)
      )
      )
      )
      ,ListTile(leading: Icon(Icons.settings_input_antenna),
        title: Text("govindha"),
        subtitle: Text("lord"),
        trailing: Text("45"),
      )
      ,ListTile(leading: Icon(Icons.account_balance),
        title: Text("krishna"),
        subtitle: Text("lord"),
        trailing: Text("99"),
      ),
      ListTile(leading: Icon(Icons.linked_camera_outlined),
        title: Text("Siva"),
        subtitle: Text("lord"),
        trailing: Text("23"),
      ),
      ListTile(leading: Icon(Icons.share),
        title: Text("hari"),
        subtitle: Text("lord"),
        trailing: Text("88")
      ),
      ListTile(leading: Icon(Icons.pin_drop_outlined),
        title: Text("sriram"),
        subtitle: Text("lord"),
        trailing: Text("76")
      ),
      ListTile(leading: Icon(Icons.mic_none_outlined),
        title: Text("srivishnu"),
        subtitle: Text("lord"),
        trailing: Text("58")
      ),
      ListTile(leading: Icon(Icons.comment),
        title: Text("ganesh"),
        subtitle: Text("lord"),
        trailing: Text("23")
      )
    ],)
      ,)
      ,);
  }
}*/
/*
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  var l = [Data(color: Colors.lightBlue, number: "1"),
    Data(color: Colors.green, number: "2"),
    Data(color: Colors.orange, number: "3"),
    Data(color: Colors.purpleAccent, number: "4")];
  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: grids(),);
  }
}
class grids extends StatelessWidget {
  const grids({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(),
    body:
    GridView.builder(
    itemCount: data.length ,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 3),
        itemBuilder: context.i){
      return Container(color:data[i].color,
      child:Center(child:Text(data[i].image.path,
    style:TextStyle(fontSize:56),color:Colors.yellow
    ) )
      ,}
     ,);
  }
}
class Data {
  final Color color;
  final String number;

  Data({
    required this.color,
    required this.number,
  });
} */

/*
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screeno(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Screeno extends StatefulWidget {
  const Screeno({super.key});

  @override
  State<Screeno> createState() => _ScreenoState();
}

class _ScreenoState extends State<Screeno> {

  var li = [Data(color: Colors.lightBlue, number: "91"),
    Data(color: Colors.green, number: "26"),
    Data(color: Colors.orange, number: "32"),
    Data(color: Colors.purpleAccent, number: "40"),
    Data(color: Colors.brown,number: "66"),
  Data(color: Colors.grey, number: "45"),
  Data(color: Colors.lime, number: "14"),
  Data(color: Colors.cyanAccent, number:"85")];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Dismissible",
        style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20),
      ),
      ),
      body: ListView.builder(
          itemCount: li.length,
          itemBuilder: (context, i){
            return Dismissible(key: ValueKey(
                "$i"
            ),
              background: Container(
                color: Colors.black,
              ),
              onDismissed: (val){
              },
              child: Container(
                color: li[i].color,
                child: Center(
                  child: Text(li[i].number,
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
class Data{
  final Color color;
  final String number;
  Data({
    required this.color,
    required this.number,
  });
}  */
/*
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: cintu(),);
  }
}
class cintu extends StatelessWidget {
  const cintu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Stack",style: TextStyle(fontSize: 32),),),
    body:
      Center(
        child: Stack(
            alignment: Alignment(2,2),
          children: [
          Container(
            height: 250,width: 250,
            decoration:
            BoxDecoration(image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2023/09/17/19/10/building-8259184_640.jpg"))),),
         // color: Colors.cyan,),
          Container(height: 200,width: 200,
            decoration:
            BoxDecoration(image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2023/09/17/19/10/building-8259184_640.jpg"))),),
            //color: Colors.brown,),
          Container(height: 150,width: 150,
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2023/09/17/19/10/building-8259184_640.jpg"))),
          )//color: Colors.green,)
        ],

      ),
      )
    );
  }
}
*/
/*
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner:false ,home:pikachu() );
  }
}
class pikachu extends StatefulWidget {
  const pikachu({super.key});

  @override
  State<pikachu> createState() => _pikachuState();
}

class _pikachuState extends State<pikachu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
    body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(alignment: Alignment(0,0),
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius:BorderRadius.vertical(
                        bottom: Radius.circular(20)
                )
                ),
                height: MediaQuery.of(context).size.height *.55 ,
    ),
            Container(height: 200,width: 200,decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),color: Colors.purpleAccent,)
            ),
              Container(height: 180,width: 180,decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),color: Colors.purple,),
              )
              ,Container(height: 150,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),color: Colors.white,),
              child: Center(child: Text("Your Score 150 ppt",style: TextStyle(fontSize: 30),)),)
            ],
              ),
              Positioned(bottom: 100,
                  child: Card(child:

                        Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width - 80,color: Colors.white,
                          child:Text("Correction   Total Quesations   Correct    Wrong",style: TextStyle(color: Colors.deepPurpleAccent),) ,
                       ),
   elevation: 100, )

                  )


            ,Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Container(height: 80,width: 80,decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(360),color: Colors.deepPurpleAccent),child: Icon(Icons.replay),
                      ),Text("Play Again",style: TextStyle(fontSize: 15),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Container(height: 80,width: 80,decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(360),color: Colors.orange),child: Icon(Icons.medical_services),
                      ),Text("Server",style: TextStyle(fontSize: 15),)
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Container(height: 80,width: 80,decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(360),color: Colors.blueAccent),
                            child: Icon(Icons.image),
                          ),Text("Images",style: TextStyle(fontSize: 15),)
                        ],
                      ),
                    ),
                  ],
                )
              //
              ],

            ),
         Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Container(height: 80,width: 80,decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(360),color: Colors.cyan,),child: Icon(Icons.generating_tokens),
                    ),Text("Genaration",style: TextStyle(fontSize: 15),)
                  ],
                ),
              ),Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Container(height: 80,width: 80,decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(360),color: Colors.purple,),child: Icon(Icons.home_outlined),
                        ),Text("home",style: TextStyle(fontSize: 15),)
                      ],
                    ),
                  ),Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            Container(height: 80,width: 80,decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(360),color: Colors.grey,),child: Icon(Icons.miscellaneous_services_rounded),),
                         Text("Settings",style: TextStyle(fontSize: 15),)
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )




            ],
          ),

    ),

    );
  }
}
*/

/*

import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: Cutee(),);
  }
}
class Cutee extends StatefulWidget {
  const Cutee({super.key});

  @override
  State<Cutee> createState() => _CuteeState();
}

class _CuteeState extends State<Cutee> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(backgroundColor: Colors.white,

    appBar:PreferredSize(preferredSize: Size.fromHeight(350.0),
   child: Container(height: 300,width: 400,decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
       color:Colors.yellow.shade200,),
       child: Stack(alignment: Alignment(0,8.5),
           children: [Container(
         height:300 ,width: 400,
           )
   ]
       ),
   )
    ),
        body:SingleChildScrollView(scrollDirection: Axis.horizontal,child:
      Column(
        children: [
          SizedBox(height: 200,width: 1000,
          child: Card(color: Colors.white,elevation: 50,
            child: Stack(children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(height: 70,width: 70,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),
                          color: Colors.cyan),
                      child:  Image.network("https://cdn.pixabay.com/photo/2016/03/05/22/09/beef-1239198_640.jpg",fit: BoxFit.fill,)// Image(image: NetworkImage("https://cdn.pixabay.com/photo/2017/01/03/11/33/pizza-1949183_640.jpg",),),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(height:70 ,width: 70,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),
                        color: Colors.purple),child: Image.network("https://cdn.pixabay.com/photo/2016/03/05/21/46/american-1239081_640.jpg",fit: BoxFit.fill,)
                          ,),
                      ),
                    ],
                  ),
            Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(height:70 ,width: 70,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),
                        color: Colors.purple),child: Image.network("https://media.istockphoto.com/id/1405655501/photo/fried-chicken-isolated-on-white.webp?b=1&s=612x612&w=0&k=20&c=8YWJKSaciaV9fxroCM2HCnmPsDuM-jJTcCi4MqvzULk=",fit: BoxFit.fill,),
                      ),
                    ),
                  ],
            ),
            Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(height:70 ,width: 70,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),
                        color: Colors.purple),child: Image.network("https://cdn.pixabay.com/photo/2016/01/14/09/47/food-1139580_640.jpg",fit: BoxFit.fill,),
                      ),
                    ),
                  ],
            ),
            Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(height:70 ,width: 70,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),
                        color: Colors.purple),child: Image.network("https://cdn.pixabay.com/photo/2015/04/08/13/13/pasta-712664_640.jpg",fit: BoxFit.fill,),
                      ),
                    ),
                  ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(height:70 ,width: 70,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),
                    color: Colors.purple),child: Image.network("https://cdn.pixabay.com/photo/2015/04/08/13/13/pasta-712664_640.jpg",fit: BoxFit.fill,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(height:70 ,width: 70,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),
                    color: Colors.purple),child: ,
              ),
            ),
                  
                ],
              )
            ],),
         ),
          ),
        ],
      ),

    )
   );
  }
}
 */

/*
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: Sanorita(),);
  }
}
class Sanorita extends StatefulWidget {
  const Sanorita({super.key});

  @override
  State<Sanorita> createState() => _SanoritaState();
}

class _SanoritaState extends State<Sanorita> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      //  SingleChildScrollView(scrollDirection: Axis.vertical,
          Container(height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(image:DecorationImage(fit:BoxFit.fill,image: NetworkImage("https://cdn.pixabay.com/photo/2016/11/10/14/16/background-1814372_640.jpg"))),
          child: Column(
            children: [
             Container(height: 50,width: 50,decoration: BoxDecoration(
                 image: DecorationImage(fit: BoxFit.fill,
                     image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/IOS_logo.svg/1024px-IOS_logo.svg.png")
                 )
             ),
             ),
          
                SizedBox(height: 80,

                 child: TextField(
                   decoration: InputDecoration(border: OutlineInputBorder(

                     borderRadius: BorderRadius.circular(30)
                   ),
                     prefix: Icon(Icons.account_box),
                   //  suffix: Icon(Icons.arrow_drop_down_circle_outlined),
                    hintText: "Enter your Name",
                     labelText: "Name"
                   ),
                      style: TextStyle(fontSize: 35,color: Colors.black),
                      cursorColor: Colors.pink,
                      cursorWidth: 10,
                     cursorRadius: Radius.circular(20),
                 textAlign: TextAlign.left,
                    ),
               ),

              Container(height: 80,
                child: TextField(style: TextStyle(fontSize: 30,color: Colors.black),
                decoration: InputDecoration(border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                  prefix: Icon(Icons.alternate_email_outlined),
                 // suffix: Icon(Icons.arrow_drop_down),
                  hintText:"Enter your Email" ,
                  labelText: "Email"
                ),

                ),
              ),
              Container(height: 80,
                child: TextField(style: TextStyle(fontSize: 30,color: Colors.black),
                  decoration: InputDecoration(border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                      prefix: Icon(Icons.call),
                     // suffix: Icon(Icons.arrow_drop_down),
                      hintText:"Enter mobile Number" ,
                      labelText: "Mobile"
                  ),

                ),
              ),
              Container(height: 80,
                child: TextField(style: TextStyle(fontSize: 30,color: Colors.black),
                  decoration: InputDecoration(border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                      prefix: Icon(Icons.lock),
                      // suffix: Icon(Icons.arrow_drop_down),
                      hintText:"Enter Password" ,
                      labelText: "Password"
                  ),

                ),
              ),
              Container(height: 50,width: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color:Colors.white),
                child:TextButton(onPressed: (){}, child:Text("Enter") )
                // Text("Enter",style: TextStyle(fontSize: 30,color: Colors.black)),
              )
            
            ],
          ),
      ),
        //),

    );
  }
  }
 */

/*
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: FirstScreen(),);
  }
}
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  double slider=1;
  final _name=TextEditingController();
  final _roll=TextEditingController();
  final _mobile=TextEditingController();
  final _branch=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _key=GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(),
      body: Form(key: _key,
        child: Container(height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(image:DecorationImage(fit:BoxFit.fill,image: NetworkImage("https://cdn.pixabay.com/photo/2016/11/10/14/16/background-1814372_640.jpg"))),
          child: Column(
            children: [
              TextField(
                controller: _name,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Full Name",
                  labelText: "Name"
                )

              ),
              TextFormField(
                controller: _roll,
                  decoration:InputDecoration(
                  icon: Icon(Icons.confirmation_num_rounded),
                    hintText: "Roll Number",
                    labelText: "Roll"
                ),
              ),
              TextFormField(
                controller: _mobile,
                decoration:InputDecoration(
                    icon: Icon(Icons.numbers),
                    hintText: "Mobile number",
                  labelText: "Mobile",
                ),
              ),
              TextFormField(
                controller:_branch,
                decoration:InputDecoration(
                  icon: Icon(Icons.group_add_outlined),
                  hintText: "Branch name",
                  labelText: "Branch",
                ),
              ),

              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                if(_key.currentState!.validate())
                  {
                   Navigator.push(context, MaterialPageRoute(builder:(context )=> MyDisplay(name:_name.text.trim(),roll:_roll.text.trim(),mobile: _mobile.text.trim(),branch: _branch.text.trim(),)));
                  }
                  },
                  child:Text("Next"))
            ],
          ),
        ),
      )
    );
  }
}



class MyDisplay extends StatelessWidget{
final String name;
final String roll;
final String mobile;
final String branch;
const MyDisplay({super.key,required this.name,required this.roll,required this.mobile,required this.branch});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(),
    body:Column(mainAxisAlignment: MainAxisAlignment.center,
children: [Text("Name:$name",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
    SizedBox(height: 20,),
Text("Roll:$roll",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
     SizedBox(height: 20,),
   Text("Mobile:$mobile",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
    SizedBox(height: 20,),
  Text("Branch:$branch",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
  TextFormField(
    controller: ,
  )
  SizedBox(height: 20,)

  ElevatedButton(onPressed: (){
    {
      Navigator.push(context, MaterialPageRoute(builder:(context )=> MyDisplay2(mobile:$mobile ,)));
    }

    }, child: Text("Enter"))

],
    ) ,
    );
  }
}
class MyDisplay2 extends StatelessWidget {
  final String mobile;
  const MyDisplay2 ({super.key,required this.mobile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
    );
  }
}
*/
/*
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: bahow(),);
  }
}
class bahow extends StatefulWidget {
  const bahow({super.key});

  @override
  State<bahow> createState() => _bahowState();
}

class _bahowState extends State<bahow> {
  String selectedoption="options 0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: //Text("Is flutter is programming language"),
        Row(
          children: [
            Container(
              height: 500,
              width: 500,
              child: Column(
                children: [
                  ListTile(title: Text("Option A"),
                  leading: Radio(
                    value: "option 1",
                    groupValue: selectedoption,onChanged: (value){
                      setState(() {
                        selectedoption = value.toString();
                      });
                  },
                  ),
                  ),
                 ListTile(
                   title:Text("Option B"),
                   leading: Radio(
                     value: "Option 2",
                     groupValue: selectedoption,onChanged: (value){
                       setState(() {
                         selectedoption = value.toString();
                       });
                   },
                   ),
                 ),
                  ListTile(
                    title: Text("Option C"),
                    leading: Radio(
                      value: "Option 3",
                      groupValue: selectedoption,onChanged: (value){
                        setState(() {
                          selectedoption = value.toString();
                        });
                    },
                    )
                  ),
                  ListTile(
                    title: Text("Option D"),
                    leading: Radio(
                      value: "Option 4",
                      groupValue: selectedoption,onChanged: (value){
                        setState(() {
                          selectedoption = value.toString();
                        });
                    },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 250),
                    child: Icon(Icons.thumb_down,color: Colors.red,),
                  )

                    ],
                  ),
            ),
            Container(height: 500,width: 500,
            child: Column(
              children: [
                ListTile(title: Text("Option A"),
                  leading: Radio(
                    value: "option 5",
                    groupValue: selectedoption,onChanged: (value){
                    setState(() {
                      selectedoption = value.toString();
                    });
                  },
                  ),
                ),
                ListTile(
                  title:Text("Option B"),
                  leading: Radio(
                    value: "Option 6",
                    groupValue: selectedoption,onChanged: (value){
                    setState(() {
                      selectedoption = value.toString();
                    });
                  },
                  ),
                ),
                ListTile(
                    title: Text("Option C"),
                    leading: Radio(
                      value: "Option 7",
                      groupValue: selectedoption,onChanged: (value){
                      setState(() {
                        selectedoption = value.toString();
                      });
                    },
                    )
                ),
                ListTile(
                  title: Text("Option D"),
                  leading: Radio(
                    value: "Option 8",
                    groupValue: selectedoption,onChanged: (value){
                    setState(() {
                      selectedoption = value.toString();
                    });
                  },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Icon(Icons.thumb_up,color: Colors.green,),
                )

              ],
            ),
            )
          ],
        ),
    );
  }
} */


/*
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: DropDown());
  }
}
class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  bool? onEnable=false;
 List<String> coll= ["ECE","MECH","EEE","CIVIL","CSE"];
  bool isSelected=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
           children: [Center(
            child: Checkbox(value: onEnable, onChanged:(value){
            setState(() {;
              onEnable=value;

            },);
            Text("save your craditionals");
          },
            activeColor: Colors.cyan,
            checkColor: Colors.black,
            focusColor: Colors.green,
            hoverColor: Colors.yellow,
            splashRadius: 50,
          ),
        ),

          SizedBox(height: 20,),
            DropdownMenu(leadingIcon: Icon(Icons.account_box),
            dropdownMenuEntries:coll.map<DropdownMenuEntry<String>>((val)
            {
              return DropdownMenuEntry(value: val,label: val);
            }).toList(),
            onSelected: (select){
              setState(() {
                isSelected = select as bool;
              });
            },
            hintText: "select",
          ),
          ElevatedButton(onPressed: (){
            print(isSelected);
             }, child:Text("Get"))

        ],
      ),
    );
  }
}
*/


/*
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: kolo(),);
  }
}
class kolo extends StatefulWidget {
  const kolo({super.key});

  @override
  State<kolo> createState() => _koloState();
}

class _koloState extends State<kolo> {
  bool? OnEnable=false;
  bool? OnEnable1=false;
  List<String>college=["ECE","IT","CSE","CSM","DS"];
  bool isSelected=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
        children: [
          Center(
            child: Checkbox(value: OnEnable, onChanged: (val)
            {
              setState(() {
                OnEnable=val;
              });
            }),
          ),
          CheckboxMenuButton(value: OnEnable1, onChanged: (vale)
              {
                setState(() {
                  OnEnable1=vale;
                });
              }, child: Text("Accepct All Terms and Conditions ")),
          SizedBox(height: 20,),
          DropdownMenu(leadingIcon: Icon(Icons.account_box),
            dropdownMenuEntries:college.map<DropdownMenuEntry<String>>((val)
            {
              return DropdownMenuEntry(value: val,label: val);
            }).toList(),
            onSelected: (select){
              setState(() {
                isSelected = select as bool;
              });
            },
            hintText: "select",
          ),
        ],
      ),
    );
  }
}
*/



/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: Switchh(),);
  }
}
class Switchh extends StatefulWidget {
  const Switchh({super.key});

  @override
  State<Switchh> createState() => _SwitchhState();
}

class _SwitchhState extends State<Switchh> {
  bool isSwitched=false;
  bool isSwitched1=false;
  bool isSwitched2=false;
  bool isSwitched3=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [Container(height:50,),
           // child:Text("Android switch "),
            Row(
              children: [Text("Andriod switch"),
               // ListTile(leading: Icon(Icons.account_box_outlined),
                  Switch(value:isSwitched, onChanged: (bool valuenew){
                    setState(() {
                      isSwitched=valuenew;
                    });
                  },
                    activeColor: Colors.yellow,
                    activeTrackColor: Colors.cyanAccent,
                  ),
              ],
            ),
            Column(
              children: [
                Container(height: 50,),


             Text("ioS Switch"),
               CupertinoSwitch(value: isSwitched1, onChanged: (bool valuenew){

              setState(() {
                isSwitched1=valuenew;
              });
            },
              activeColor: Colors.green,

            ),
                Column(
                  children: [
                    Container(height: 50,),
                  ],
                ),
                Text("Adapative Switch"),

        Switch(value: isSwitched2, onChanged: (bool valuenew){
                    setState(() {
                      isSwitched2=valuenew;
                    });
                  },
                    activeColor: Colors.red,
                    activeTrackColor: Colors.orange,
    ),
               // ),
                Column(
                  children: [
                    Container(height: 50,),
                  ],
                ),
                Text(" Image Switch"),
                Switch(value: isSwitched3, onChanged: (bool valuenew){
                  setState(() {
                    isSwitched3=valuenew;
                  });
                },

                  activeThumbImage: AssetImage("img_3.png"),
                )
     ]
            )
        ],

        ),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home:  Switchh(),);
  }
}

class Switchh extends StatefulWidget {
  const Switchh({super.key});

  @override
  State<Switchh> createState() => _SwitchhState();
}

class _SwitchhState extends State<Switchh> {
  bool isChanged=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Switch state=$isChanged"),
            Switch(value: isChanged, onChanged: (value){
              setState(() {
                isChanged=value;
              });
            },
            activeTrackColor: Colors.orange,
            activeColor: Colors.green,
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}















