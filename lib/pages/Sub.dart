import 'package:flutter/material.dart';

class Sub extends StatefulWidget {
  Sub({super.key});

  @override
  State<Sub> createState() => _SubState();
}
class _SubState extends State<Sub>{
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  String output="0";

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
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
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.black
                    ),
                    onPressed: (){
                      String getNum1=num1.text;
                      String getNum2=num2.text;
                      int res=int.parse(getNum1)-int.parse(getNum2);
                      // String Result=res.toString();
                      setState(()
                      {
                        output=res.toString();
                      });

                      print(output);

                    }, child: Text("Subtract")),
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
