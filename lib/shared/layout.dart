import 'package:flutter/material.dart';



class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: true,
      child: Column(children: [
        AppBar(
          centerTitle: false,
          title: Text('Ecommerce'),
        )
      ],),
    );
  }
}