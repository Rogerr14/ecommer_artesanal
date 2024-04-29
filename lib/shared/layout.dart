import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;


class LayoutWidget extends StatefulWidget {
  const LayoutWidget({super.key, required this.child,  required this.isActive});
  final Widget child;
  final bool isActive;
  @override
  State<LayoutWidget> createState() => _LayoutWidgetState();
}

class _LayoutWidgetState extends State<LayoutWidget> {
  @override
  Widget build(BuildContext context) {
    final size  = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        shadowColor: Colors.black38,
        elevation: 20,
        title: Text('ARTESANAL', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 20,
          letterSpacing: 10
        ),),
        centerTitle: true,
        actions: [
          badges.Badge(
            position: badges.BadgePosition.topEnd(top:  0, end:  3),
            badgeAnimation: badges.BadgeAnimation.slide(),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
            showBadge: widget.isActive,
          )
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          widget.child,
          FooterWidget(size: size)
          
        ],
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height * 0.2,
      decoration: BoxDecoration(
    
        color:  Colors.amber
      ),
      child: Row(children: [
        SizedBox(width: 20,),
        Text('Todos los derechos reservados ')
      ],),
    );
  }
}