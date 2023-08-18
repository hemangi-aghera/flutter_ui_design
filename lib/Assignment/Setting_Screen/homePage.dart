import 'package:flutter/material.dart';

import '../Product_Screen/homescreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _selectedCleaning({@required Color? color,@required String? title,@required String? subtitle,}){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0,),
      padding: const EdgeInsets.only(left: 20,),
      height: 120,
      width: 250,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title!,style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
          ),
          SizedBox(
            height: 5,


          ),
          Text(
            subtitle!,style: TextStyle(
            fontSize: 19,
            color: Colors.white70,
          ),
          ),
        ],
      ),
    );
  }


  Widget _selectedExtras({@required String? image,@required String? name,}){
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.grey,width: 2)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image!))
            ),
          ),
          SizedBox(height: 10,),
          Text(name!,style: TextStyle(fontSize: 17),),
        ],
      ),
    );
  }

  Widget _selectedFrequency({@required Color? color,@required String? title,@required BoxBorder? border,@required TextStyle? textStyle}){
    return Container(
      height: 45,
      width: 120,
      margin: EdgeInsets.symmetric(horizontal: 7,vertical: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(7),
        border: border,
      ),
      child: Center(
        child: Text(title!,style: textStyle,
        ),
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green.shade200,
        title: Text(
          "Cleaning Plan",
          style: TextStyle(
            fontSize: 23,fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: Container(
        child: Container(
          height: 800,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: ListView(

            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 30,bottom: 20),
                child: Text("Selected Cleanning",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                  child: Row(
                    children: [
                      _selectedCleaning(
                          color: Colors.green.shade200,
                          subtitle: "Call for today",
                          title: 'Home Cleaning'
                      ),
                      _selectedCleaning(
                          color: Colors.green.shade200,
                          subtitle: "Call for tomorrow",
                          title: 'Office Cleaning'
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selected Extras',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(
                      top: 20,
                    ),
                      child: Container(
                        height: 300,
                        child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 8,
                          childAspectRatio: 1.30,
                          children: [
                            _selectedExtras(
                              image: "assets/organizing.jpg",
                              name: 'Organizing',
                            ),
                            _selectedExtras(
                              image: "assets/repair.png",
                              name: 'Repair',
                            ),
                            _selectedExtras(
                              image: "assets/wash.jpg",
                              name: 'Wash&Fold',
                            ),
                            _selectedExtras(
                              image: "assets/cooking.jpg",
                              name: 'Cooking',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 13),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 6),
                      child: Text(
                        "Selected Frequency",
                        style: TextStyle(fontSize: 20,color: Colors.black,letterSpacing: 1,fontWeight: FontWeight.w400),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _selectedFrequency(
                            title: 'Weekly',
                            color: Colors.white,
                            border: Border.all(color: Colors.green.shade200),
                            textStyle: TextStyle(color: Colors.green.shade200),
                          ),
                          _selectedFrequency(
                            title: 'Bi-Weekly',
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            textStyle: TextStyle(color: Colors.black),
                          ),
                          _selectedFrequency(
                            title: 'Monthly',
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            textStyle: TextStyle(color: Colors.black),
                          ),
                          _selectedFrequency(
                            title: 'Yearly',
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            textStyle: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    //Container(
                    //  height: 50,
                    //   width: double.infinity,
                    //   padding: EdgeInsets.only(left: 5,right: 25),
                    //   margin: EdgeInsets.symmetric(horizontal: 20),
                    //  hild: RaisedButton(
                    //   color: Colors.teal,
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(10.0),
                    //
                    //   ),
                    //    child: Row(
                    //      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //      children: [
                    //        Padding(padding: EdgeInsets.only(
                    //          left: 20,
                    //        ),
                    //          child: Text("Done",style: TextStyle(fontSize: 19,),),
                    //        ),
                    //      ],
                    //    ),
                    //    onPressed: (){},
                    //  ),
                    //),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.navigate_next,
          color: Colors.white,
        ),
        backgroundColor: Colors.green[200],
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (Context) {
            return HomeScreen();
          },
          ),
          ).then((value) => null);
        },
      ),
    );

  }
}

