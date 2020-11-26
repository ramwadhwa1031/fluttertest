import 'package:MachineTest/page.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
class MachineTest extends StatefulWidget {
  @override
  _MachineTestState createState() => _MachineTestState();
}

class _MachineTestState extends State<MachineTest> {
  var url="http://dummy.restapiexample.com/api/v1/employees";
  var data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    data = convert.jsonDecode(res.body);
    print(data["data"][0]);
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:Text("Test App"),
      ),
       body: data != null
            ? ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                color: Colors.black,
              ),
                itemBuilder: (context, index) {
                  
                  return ListTile(
                    onTap: (){
                      Navigator.pushNamed(context, Details.routeName);
                    },
                    leading: CircleAvatar(),
                    subtitle: Column(
                      children: [
                        Text("ID:${data["data"][index]["id"]}",),
                        Text("name:${data["data"][index]["employee_name"]}"
                        ),
                        Text("salary:${data["data"][index]["employee_salary"]}",
                       
                        ),
                        Text("salary:${data["data"][index]["employee_age"]}"),
                      ],
                    ),
                    
                     //String interpolation 
                  
                  );
                  
                },
                itemCount: data["data"].length,
                )
            : Center(child: CircularProgressIndicator()),
            
    );
  }
}