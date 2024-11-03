import 'package:flutter/material.dart';

class Mul extends StatefulWidget {
  Mul({super.key});

  @override
  State<Mul> createState() => _MulState();
}
class _MulState extends State<Mul>{
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  String output="0";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.black
                    ),
                    onPressed: (){
                      String getNum1=num1.text;
                      String getNum2=num2.text;
                      int res=int.parse(getNum1)*int.parse(getNum2);
                      // String Result=res.toString();
                      setState(()
                      {
                        output=res.toString();
                      });

                      print(output);

                    }, child: Text("Multiply")),
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
    );
  }
}
