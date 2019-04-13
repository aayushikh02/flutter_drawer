import 'package:flutter/material.dart';
import '../pages/list2.dart';
class Input extends StatefulWidget{


  @override
  State<StatefulWidget> createState()
  {
    return Data ();
  }
}

class Data extends State<Input>{
  String title='';
  String destitle='';
  // double price;

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(15.0),
      child:ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Your Name'),
            onChanged: (String value){
              setState(() {
                title=value;
              });
            },),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(labelText: 'Your Description'),
            onChanged: (String value){
              setState(() {
                destitle=value;
              });
            },),
          // TextField(
          //   keyboardType: TextInputType.number ,
          //   decoration: InputDecoration(labelText: 'Amount'),
          //   onChanged: (String value){

          //   setState(() {
          //    price=double.parse(value);
          //   });
          // },
          // ),
          RaisedButton(
            child: Text('Save'),
            onPressed:(){
              Map<dynamic,dynamic> test = Map();
              test['name']=title;
              test['description']=destitle;
              // test['amount']=price;

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => new List2(test),
                ),
              );
            } ,)
        ],
      ),
    );
  }

}



// routes: {
//   '/':(BuildContext context)=> HomePage(_home),
//   '/admin':(BuildContext context)=>ProductAdminPage(_add)
// }