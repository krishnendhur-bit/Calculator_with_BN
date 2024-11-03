import 'package:flutter/material.dart';
class Add extends StatefulWidget {
  Add({super.key});

  @override
  State<Add> createState() => _AddState();
}
class _AddState extends State<Add>{

  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  String output="0";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: num1,
                    decoration: InputDecoration(
                        hintText: "Number 1",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: num2,
                    decoration: InputDecoration(
                        hintText: "Number 2",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.black
                      ),
                      onPressed: (){
                        String getNum1=num1.text;
                        String getNum2=num2.text;
                        int res=int.parse(getNum1)+int.parse(getNum2);
                        // String Result=res.toString();
                        setState(()
                        {
                          output=res.toString();
                        });

                        print(output);

                      }, child: Text("Add")),
                  SizedBox(
                    height: 20,
                  ),

                  Text(output,style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize:30,color:Colors.black),)
                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}
