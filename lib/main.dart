import 'package:flutter/material.dart';
import 'package:testing/screens/home.dart';

void main() => runApp(const MyFlutterApp());

class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: debugDisableShadows,
      title: "Flutter App",
      //  home: const HomeScreen(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Test App"),
        ),
        body: getListView(),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
          tooltip: "Add New Item",
        ),
      ),
    );
  }
}

void snackBar(BuildContext context, String item) {
  var snackBar = SnackBar(
      content: Text("Tabbed on $item"),
      action: SnackBarAction(
        label: "Ok",
        onPressed: () {
          debugPrint("Ok is Clicked");
        },
      ));

  Scaffold.of(context).showSnackBar(snackBar);
}

List<String> getList() {
  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}

Widget getListView() {
  var list = getList();
  var listItems = ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(list[index]),
        leading: const Icon(Icons.laptop),
        trailing: const Icon(Icons.wb_sunny),
        onTap: () {
          snackBar(context, list[index]);
        },
      );
    },
  );

  return listItems;
}

//simple listview
// Widget getListView() {
//   var listView = ListView(
//     children: const [
//       ListTile(
//         leading: Icon(Icons.laptop),
//         title: Text("Laptop"),
//         subtitle: Text("This is subtitle...."),
//         trailing: Icon(Icons.wb_sunny),
//       ),
//       ListTile(
//         leading: Icon(Icons.laptop),
//         title: Text("Mobile"),
//         subtitle: Text("This is subtitle...."),
//         trailing: Icon(Icons.wb_sunny),
//       ),
//       ListTile(
//         leading: Icon(Icons.laptop),
//         title: Text("TV"),
//         subtitle: Text("This is subtitle...."),
//         trailing: Icon(Icons.wb_sunny),
//       ),
//       ListTile(
//         leading: Icon(Icons.laptop),
//         title: Text("Sound Bar"),
//         subtitle: Text("This is subtitle...."),
//         trailing: Icon(Icons.wb_sunny),
//       )
//     ],
//   );
//
//   return listView;
// }
