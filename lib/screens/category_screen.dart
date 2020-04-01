import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/models/Category.dart';
import 'package:todo/services/category_service.dart';

import 'home_screen.dart';


class CategoryScreen extends StatefulWidget{
 
  @override
  _CategoryScreen createState() => _CategoryScreen();
}
class  _CategoryScreen extends State<CategoryScreen> {

  var _categoryName = TextEditingController();
  var _categoryDescription = TextEditingController();

  var _category= Category();
  var _categoryService = CategoryService();

   _showFormDialog(BuildContext context){
    return showDialog(context: context,barrierDismissible:true,builder:(param){
      return AlertDialog(title: Text("Add New Category"),
      actions: <Widget>[
        FlatButton(
          child: Text("Add"),
          onPressed: () async{
            _category.name = _categoryName.text;
            _category.description = _categoryDescription.text;
           var results = await _categoryService.saveCategory(_category);
           print(results);

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
                controller: _categoryName,
                decoration: InputDecoration(
                  labelText: "Category Name ",
                  hintText: "Category name"
                ),
              ),
              TextField(
                controller: _categoryDescription,
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
              Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> new HomeScreen()));
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