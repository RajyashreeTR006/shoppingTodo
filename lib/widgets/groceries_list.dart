import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shopping_app/data/categories.dart';
import 'package:shopping_app/models/grocery_item.dart';
import 'package:shopping_app/widgets/newitem_list.dart';
import 'package:http/http.dart' as http;


class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  List<GroceryItem> _groceryItems = [];
  var _isLoading = true;
  String? error;

  @override
  void initState() {
    super.initState();
    _loadItems();
  }

  void _loadItems() async {
    final url = Uri.https(
        "shopping-api-a610e-default-rtdb.firebaseio.com","shopping-list.json");
    final response = await http.get(url);
    if(response.statusCode>=400){
      setState(() {
        error='Failed to fetch details';
      });

    }
    final Map<String, dynamic> listData = json.decode(response.body);
    final List<GroceryItem> loadedItems = [];
    for (final item in listData.entries) {
      final category = categories.entries
          .firstWhere(
              (catItem) => catItem.value.title == item.value['category'])
          .value;
      loadedItems.add(
        GroceryItem(
          id: item.key,
          name: item.value['name'],
          quantity: item.value['quantity'],
          category: category,
        ),
      );
    }
    setState(() {
      _groceryItems = loadedItems;
      _isLoading = false;
    });
  }

  void _addItem() async {
    final newItem = await Navigator.of(context).push<GroceryItem>(
      MaterialPageRoute(
        builder: (ctx) => const NewItemList(),
      ),
    );

    if (newItem == null) {
      return;
    }

    setState(() {
      _groceryItems.add(newItem);
    });
  }

  void _removeItem(GroceryItem item) async{
    final index = _groceryItems.indexOf(item);
    setState(() {
      _groceryItems.remove(item);
    });

    final url = Uri.https('shopping-api-a610e-default-rtdb.firebaseio.com', 'shopping-list/${item.id}.json');

    final response = await http.delete(url);

    if (response.statusCode >= 400) {
      // Optional: Show error message
      setState(() {
        _groceryItems.insert(index, item);
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    Widget content=Center(child: Text("No items added yet."));
    if(_isLoading){
      content=Center(child: CircularProgressIndicator());
    }
    if(_groceryItems.isNotEmpty){
      content=Center(
        child:ListView.builder(
            itemCount: _groceryItems.length,
            itemBuilder: (ctx,index){
              return Dismissible(
                onDismissed: (direction) {
                  _removeItem(_groceryItems[index]);
                },
                key: ValueKey(_groceryItems[index].id),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(_groceryItems[index].category.image),),
                  title:Text(_groceryItems[index].name) ,
                  trailing:Text(_groceryItems[index].quantity.toString(),style: TextStyle(color: _groceryItems[index].category.color),) ,
                ),
              );
            }),);
    }
    if(error!=null){
      content=Center(child: Text(error!),);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Groceries'),
        actions: [ IconButton(onPressed: _addItem, icon:Icon(Icons.add))],),
      body: content
    );
  }
}

