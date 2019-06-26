import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freestyle',
      theme: ThemeData(

        //primarySwatch: white,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }

  MaterialColor white=MaterialColor(
      0xFFFFFFFF, const<int, Color>{
        50:const Color(0xFFFFFFFF),
        100:const Color(0xFFFFFFFF),
    200:const Color(0xFFFFFFFF),
    300:const Color(0xFFFFFFFF),400:const Color(0xFFFFFFFF),500:const Color(0xFFFFFFFF),600:const Color(0xFFFFFFFF),
    700:const Color(0xFFFFFFFF),800:const Color(0xFFFFFFFF),900:const Color(0xFFFFFFFF),
  }
  );
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int convertHexColor(String hexcode){
    String hex=hexcode.replaceFirst('#', '');
    hex=hex.length==6?'ff'+hex:hex;
    int val=int.parse(hex,radix: 16);
    return val;
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: true,

      appBar: new AppBar(
        leading: Icon(Icons.arrow_back,color: Color(convertHexColor('#0A2463'))),
        elevation: 0.0,centerTitle:true,
        title:new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Booking",style: new TextStyle(fontSize: 16.0,color: Color(convertHexColor('#0A2463')),fontWeight: FontWeight.w400,fontFamily: 'Helvetica')),
            SizedBox(height: 4.0,),
            Text('No. EP-324992429',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 12.0,fontFamily: 'Graphik-Medium'),)
          ],
        ),
        backgroundColor: Colors.transparent,
      ),

      body: SingleChildScrollView(
        child: Container(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Text('Destination',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.0,fontFamily: 'Helvetica',color: Color(convertHexColor('#0A2463')),),),
              ),

              Padding(
                padding: const EdgeInsets.only(left:8.0,bottom: 24.0),
                child: ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Image.asset('assets/img.png',fit: BoxFit.cover,height: 72.0,width: 72.0,),

                  ),
                  title: Padding(
                    padding: EdgeInsets.only(left: 24.0,bottom: 8.0),
                    child: Text('Senayan City Mall',style: TextStyle(color: Color(convertHexColor('#0A2463')),fontWeight: FontWeight.w400,fontSize: 18.0),),
                  ),

                  subtitle: Padding(
                    padding: EdgeInsets.only(left: 24.0,bottom: 15.0),
                    child: Text('SPACE : P5.6A',style: TextStyle(color: Color(convertHexColor('#136FD1')),fontWeight: FontWeight.w400,fontSize: 16.0),),
                  ),
                ),
              ),

              Divider(),

              Stack(
                children: <Widget>[
                  Row(
                      children: <Widget>[
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text('Arriving',style: TextStyle(color: Color(convertHexColor('#0A2463')),fontWeight: FontWeight.w400,fontSize: 14.0,fontFamily: 'Helvetica'),),

                                    SizedBox(height: 6.0,),
                                    Text('Today, 16:20',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: 14.0,fontFamily: 'Helvetica'),),

                                  ],
                                ),

                            ),
                        ),

                        Container(height:70.0,width: 1.0,color: Colors.grey[300],),

                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Leaving',style: TextStyle(color: Color(convertHexColor('#0A2463')),fontWeight: FontWeight.w400,fontSize: 14.0,fontFamily: 'Helvetica'),),
                                SizedBox(height: 6.0,),
                                Text('Today, 16:25',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: 14.0,fontFamily: 'Helvetica'),),
                              ],
                            ),
                          ),
                        ),
                      ],


                    ),

                  Container(
                      height: 22.0,
                      width: 55.0,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 154.0,top:24.0),
                      decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(15.0),
                          color: Color(convertHexColor('#136FD1'))
                      ),
                      child: Text('2h 3m',style: TextStyle(color: Colors.white,fontFamily: 'Helvetica',fontSize: 12.0,fontWeight: FontWeight.bold),)
                  ),
                ]
              ),



              Divider(),

              Padding(
                  padding:EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Vehicle',style: TextStyle(color: Color(convertHexColor('#0A2463')),fontWeight: FontWeight.w400,fontSize: 16.0,fontFamily: 'Helvetica'),),
                      SizedBox(height: 26.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Type',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 12.0,fontFamily: 'Graphik-Medium'),),
                          Text('Sedan',style: TextStyle(color: Color(convertHexColor('#0A2463')),fontWeight: FontWeight.w400,fontSize: 14.0,fontFamily: 'Helvetica'),),
                        ],
                      ),
                      SizedBox(height: 22.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Plate Number',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 12.0,fontFamily: 'Graphik-Medium'),),
                          Text('B12UBS',style: TextStyle(color: Color(convertHexColor('#0A2463')),fontWeight: FontWeight.w400,fontSize: 14.0,fontFamily: 'Helvetica'),),
                        ],
                      ),
                    ],
                  ),
              ),

              Divider(),

              Padding(
                  padding: EdgeInsets.all(25.0),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Driver Info',style: TextStyle(color: Color(convertHexColor('#0A2463')),fontWeight: FontWeight.w400,fontSize: 16.0,fontFamily: 'Helvetica'),),
                      Text('Pria Kusumawardana',style: TextStyle(color: Color(convertHexColor('#0A2463')),fontWeight: FontWeight.w400,fontSize: 14.0,fontFamily: 'Helvetica'),),
                    ],
                  ),
              ),

              Divider(),

              Padding(
                padding: EdgeInsets.all(24.0),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Payment Method',style: TextStyle(color: Color(convertHexColor('#0A2463')),fontWeight: FontWeight.w400,fontSize: 16.0,fontFamily: 'Helvetica'),),
                    Text('Visa -8378',style: TextStyle(color: Color(convertHexColor('#136FD1')),fontWeight: FontWeight.w400,fontSize: 14.0,fontFamily: 'Helvetica'),),
                  ],
                ),
              ),

              Divider(),

              Padding(
                padding: EdgeInsets.symmetric(horizontal:24.0,vertical: 20.0),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Price',style: TextStyle(color: Color(convertHexColor('#0A2463')),fontWeight: FontWeight.w400,fontSize: 16.0,fontFamily: 'Helvetica'),),
                    Text('Rp. 22.000',style: TextStyle(color: Color(convertHexColor('#0A2463')),fontWeight: FontWeight.w400,fontSize: 16.0,fontFamily: 'Helvetica'),),
                  ],
                ),
              ),

              Divider(),

              SizedBox(height: 10.0,),

              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  height: 55.0,
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(35.0),

                  ),
                  child: new Text("Pay now",style: new TextStyle(color: Color(convertHexColor('#0A2463')),fontWeight: FontWeight.w400,fontSize: 16.0,fontFamily: 'Helvetica'),),

                ),
              ),

              SizedBox(height: 0.0,),


            ],
          ),
        ),
      ),

    );
  }
}
