import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);},icon: const Icon(Icons.arrow_back_ios_rounded,),),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
            child: TextField(

               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                label: Text('search',),

               ),
            ),
        ),
      ),
    );
  }
}
