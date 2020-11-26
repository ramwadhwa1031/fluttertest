import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  static const String routeName="/detail";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Show Details"),
      backgroundColor: Colors.red,),
      body: SingleChildScrollView(
              child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 55,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.0),
                  ),
                  hintText: "Id",
                  labelText: "Id",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.0),
                  ),
                  hintText: "Employee Name",
                  labelText: "Employee Name",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.0),
                  ),
                  hintText: "Age",
                  labelText: "Age",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Salary",
                  labelText: "Salary",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(color: Colors.red,textColor:Colors.white,onPressed: (){},child:Text("Save"),)
            ],
          ),
        ),
      ),
    );
  }
}
