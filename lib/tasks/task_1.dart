import 'package:flutter/material.dart';

// 1-Mashq: Dasturni ortiqcha vidjetlardan tozalang va yanada optimal holatga keltiring
class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.builder(
        itemCount: 1000,
        itemBuilder: (context, index) => Text('$index'),
      ),
    );
  }
}

/// Bu yerda ItemWidget widgetini o'chirdik, chunki unda ListTiledan boshqa widget yo'q edi.
/// Keyin ListTile widgetni ham o'chirdik, chunki unda faqat title xususoyatidan foydalaningan ekan.
/// Shuning uchun uni ham o'chirib, Text widgetni o'zini qoldirdik.
/// Kodni ixchamlashitirish uchun List builderda arrow funksiyasidan foydalanildi.
/// Quyida asl kod

/*
1-Mashq: Dasturni ortiqcha vidjetlardan tozalang va yanada optimal holatga keltiring

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View')),
      body: ListView(
        children: [
	for(var i = 0; i < 1000; i++)
 	   ItemWidget(index: index);
        ],
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  final int index;

  const ItemWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Builder(
        builder: (context) {
          return Text('Item $index');
        },
      ),
    );
  }
}

*/
