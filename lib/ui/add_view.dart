import 'package:flutter/material.dart';


class AddView extends StatefulWidget {
  const AddView({Key? key}) : super(key: key);

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
           }),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              controller: _amountController,
              decoration: InputDecoration(
                labelText: "Coin Amount",
              ),
              keyboardType: TextInputType.text,
            ),
          ),
        ],
      ),
    );
  }
}
