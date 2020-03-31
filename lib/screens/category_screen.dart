import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CategoryScreen extends StatefulWidget{
 
  @override
  _CategoryScreen createState() => _CategoryScreen();
}
class  _CategoryScreen extends State<CategoryScreen> {
   _showFormDialog(BuildContext context){
    return showDialog(context: context,barrierDismissible:true,builder:(param){
      return AlertDialog(title: Text("Add New Category"),
      actions: <Widget>[
        FlatButton(
          child: Text("Add"),
          onPressed: (){

          },
        ),
        FlatButton(
          child: Text("Cancel"),
          onPressed: (){
            
          },
        )
      ],
        content: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: "Category Name ",
                  hintText: "Category name"
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Category Description ",
                  hintText: "Category Description"
                ),
              ),
            ],
            ),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        leading: RaisedButton(
          elevation: 0.0,
          color: Colors.red,
          child: Icon(Icons.arrow_back,color:Colors.white),
          onPressed: (){
             _showFormDialog(context);
          },
        ),
        title: Text("Categories")

      ),
      body: Center(child: Text("Welcome to category"),),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add),
        onPressed:(){
           _showFormDialog(context);
        }
      ),
      // drawer: DrawerNavigation(),

    );
  }
  
}