import 'package:ecommer_products/shared/layout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isActive = false;
    return LayoutWidget(
      isActive: isActive,
      child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30)  

                  ),
                  child: Column(
                    children: [
                      Text('Producto A'),
                      OutlinedButton(onPressed: (){
                       isActive = true;
                     
                      }, child: Icon(Icons.shopping_cart))
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 120,)
        ],
      )
    );
  }
}
