import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List photo =[
    "assets/images/bhudi.jpg",
    "assets/images/dark grey.jpg",
    "assets/images/earing.jpg",
    "assets/images/girls top.jpg",
    "assets/images/ifold.jpg",
  ];

  List photo1=[
    "assets/images/terouser.jpg",
    "assets/images/tom cat.jpg",
    "assets/images/shoes.jpg",
    "assets/images/puma yellow .jpg",
    "assets/images/watch.jpg",
  ];
  List ratingl = [
    "5.0",
    "4.9",
    "4.7",
    "4.8",
    "4.2",
    "4.3",
  ];

  List ratingr = [
    "4.1",
    "4.2",
    "4.5",
    "4.8",
    "4.1",
    "4.0",
  ];

  List pricel = [
    "\$30.33",
    "\$4.00",
    "\$70.00",
    "\$56.27",
    "\$90.99",
    "\$99.99",
  ];
  List pricer = [
    "\$52.00",
    "\$99.99",
    "\$72.30",
    "\$60.90",
    "\$45.90",
    "\$25.33",
  ];
  List namel = [
    "WOODY"
    "GREY SHIRT",
    "EARING",
    "GIRLS-TOP",
    "IFOLD BELSAR",
    "YELLOW JACKET",
  ];
  List namer = [
    "terouser",
    "tom cat",
    "shoes",
    "puma yellow",
    "watch",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff466898),
          title: Text("SHOPPING GALERY UI"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  transform: GradientRotation(1),
                  colors: [
                    Colors.redAccent,
                    Colors.blueAccent,
                  ]
              )
          ),
          child: SingleChildScrollView(
            child: Column(
              children: photo.asMap().entries.map((e) => Cont(photo1[e.key],
                  photo[e.key],
                  ratingl[e.key],ratingr[e.key],
                  pricel[e.key],pricer[e.key],namel[e.key],namer[e.key])).toList(),
            ),
          ),
        ),
      ),
    );
  }

  Widget Cont(String photo,String photo1,String ratl,String ratr,String pril,String prir,String naml,String namr) {
    return Column(
      children: [
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,right: 5,),
                  height: 170,
                  width: 150,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("$photo",fit: BoxFit.fill,)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10,top: 140),
                  child: Container(
                    height: 30,
                    width: 150,
                    child: Row(
                      children: [
                        SizedBox(width: 5,),
                        Text("$naml",style: TextStyle(color: Colors.white,fontSize: 13),),
                        Expanded(child: SizedBox(height: 3,)),
                        Text("$pril",style: TextStyle(color: Colors.white,fontSize: 13),),
                        SizedBox(width: 5,),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.2,top: 0.1),
                  child: Container(
                    height: 20,
                    width: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("$ratl",style: TextStyle(color: Colors.white,fontSize: 12),),
                        Icon(Icons.star,color: Colors.white,size: 15,)
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,right: 5,),
                  height: 170,
                  width: 150,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("$photo1",fit: BoxFit.fill,)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10,top: 140),
                  child: Container(
                    height: 30,
                    width: 150,
                    child: Row(
                      children: [
                        SizedBox(width: 5,),
                        Text("$namr",style: TextStyle(color: Colors.white,fontSize: 13),),
                        Expanded(child: SizedBox(height: 3,)),
                        Text("$prir",style: TextStyle(color: Colors.white,fontSize: 13),),
                        SizedBox(width: 5,),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.2,top: 0.1),
                  child: Container(
                    height: 20,
                    width: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("$ratr",style: TextStyle(color: Colors.white,fontSize: 12),),
                        Icon(Icons.star,color: Colors.white,size: 15,)
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}



