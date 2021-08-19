import 'package:flutter/material.dart';


class AddView extends StatefulWidget {


  @override
  _AddViewState createState() => _AddViewState();
}

class _AddViewState extends State<AddView> {

  List<String> coins = [
    "bitcoin",
    "tether",
    "ethereum"
  ];

  String dropdownValue = "bitcoin";
  TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton(
            value : dropdownValue,
            onChanged: (String value){
              setState(() {
                dropdownValue= value;
              });
            },
            items: coins.map<DropdownMenuItem<String>>((String value){
            return DropdownMenuItem<String>(
                value:value,
                child:Text(value),
            );
           }).toList(),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 35,),
          Container(
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              controller: _amountController,
              decoration: InputDecoration(
                labelText: "Coin Amount",
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 35,),
          Container(
            //for great seeing formatting nicely
            width: MediaQuery.of(context).size.width / 1.4,
            height: 45.0,
            decoration: BoxDecoration(
              //white buton with rounded decoration
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
            ),
            child: MaterialButton(
              onPressed: () async{
               //TODO
                Navigator.of(context).pop();
              },
              child: Text("Add"),
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
