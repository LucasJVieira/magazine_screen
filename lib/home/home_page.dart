import 'package:flutter/material.dart';
import 'package:magalu_screen/core/core.dart';
import 'package:magalu_screen/home/widget/appbar_widget.dart';
import 'package:magalu_screen/model/contact.dart';
import 'package:magalu_screen/provider/contacts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          Contact contact = contacts.elementAt(index);

          return ListTile(
            title: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(contact.foto),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(contact.anuncio, style: AppTextStyles.anuncio),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(contact.descricao,
                            style: AppTextStyles.descricao),
                      ),
                      Text(contact.preco, style: AppTextStyles.preco),
                      Text(contact.parcela, style: AppTextStyles.parcela),
                    ],
                  ),
                ),
              ],
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.favorite,
              ),
              color: Colors.pink,
              onPressed: () {},
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemCount: 7,
      ),
    );
  }
}
