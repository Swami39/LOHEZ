import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_nullsafety/carousel_nullsafety.dart';
import 'package:lohez/products.dart';
import 'components.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main(){
  runApp(
      MaterialApp(
          title: 'Clean Code',
          home: AnimatedSplashScreen(
              duration: 3000,
              splash: 'images/Logo2.jpg',splashIconSize: 150,
              nextScreen: Homepage(),
              splashTransition: SplashTransition.rotationTransition,
              backgroundColor: Colors.black
          )
      )
  );
}
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
  Widget imageslider = Container(
    height: 200,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/Logo2.jpg'),
        NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRNpWvWcF7TUi4490GLt43s_pOlC7zauwkjw&usqp=CAU'),
        NetworkImage('https://image.shutterstock.com/image-vector/sale-final-70-off-sign-260nw-561718669.jpg')

      ],
      dotSize: 3.0,
      dotColor: Colors.black,
      indicatorBgPadding: 5,
      showIndicator: true,

    ),
  );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'LOHEZ',
          style: GoogleFonts.pacifico(),
        ),
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.search),color: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart),color: Colors.white,),



        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text('MANAS LOHE'), accountEmail: Text('manu.lohe19@gmail.com'),
            currentAccountPicture: GestureDetector(
              onTap: (){},
              child: CircleAvatar(

                backgroundColor: Colors.grey,
                child: Icon(Icons.person,color: Colors.white,size: 50 ,),
              ),
            ),
              decoration: BoxDecoration(
                color: Colors.black,

              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.home,color: Colors.black,),
                title: Text('Home Page'),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.person,color: Colors.black,),
                title: Text('My account'),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.shopping_bag, color: Colors.black,),
                title: Text('My Orders'),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.dashboard,color: Colors.black,),
                title: Text('Categories'),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.favorite,color: Colors.red,),
                title: Text('favourites'),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.green,),
                title: Text('settings'),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.help, color: Colors.green,),
                title: Text('about'),
              ),
            ),


          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          imageslider,
          Divider(),

          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Text('CATEGORY',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
             ),
          ),
          Horizontallist(),

          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Text('Recent Products',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container
            (
            height: 520,
              child: products(),
          ),
          Container(
            height: 200,
          )








        ],
      ),


    );
  }
}
