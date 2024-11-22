import 'package:flutter/material.dart';
import 'ListData.dart';

class ListDetailScreen extends StatelessWidget {

  final ListData data;
  const ListDetailScreen(ListData this.data, Key key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List detail screen"),
        ),
        body: Container(
          margin: const EdgeInsets.all(4.0),
          padding: const EdgeInsets.all(8.0),
          decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(8),
              color:Colors.white
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.all(5.0),
                child: Text(
                  "id: ${data.id}",
                  style: const TextStyle(color:Colors.green,fontSize:15),
                ),
              ),
              Container(
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:Colors.white
                ),
                margin: const EdgeInsets.only(top: 10,bottom: 15,left: 5,right: 5),
                child: Image.network("${data.imageUrl}"),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.all(5.0),
                child: Text(
                  "${data.title}",
                  softWrap: true,
                  textAlign: TextAlign.left,
                  style: const TextStyle(color:Colors.black,fontSize:16),
                ),
              ),
            ],
          ),
        )
    );
  }
}