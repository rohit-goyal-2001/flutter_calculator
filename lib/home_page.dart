/*import 'package:flutter/material.dart';

class HOMEPAGE extends StatefulWidget {
  @override
  _HOMEPAGEState createState() => _HOMEPAGEState();
}

class _HOMEPAGEState extends State<HOMEPAGE>{
  var num1=0,num2=0,sum=0;
  final TextEditingController t1 = new TextEditingController(text:"0");
  final TextEditingController t2 = new TextEditingController(text:"0");
  void add(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1+num2;
    });
  }
  void subt(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1-num2;
    });
  }
  void mult(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1*num2;
    });
  }
  void divi(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1~/num2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("calculator")
      ),
      body: new Container(
        padding: const EdgeInsets.all(25.0),
        child: new  Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children:<Widget>[
            new Text("REASULT:$sum",
            style:  new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, color: Colors.black),),
          new TextField(
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(hintText: "number first"),
            controller: t1,
          ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "number second"),
              controller: t2,
            ),
            new Padding(
              padding:const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children:<Widget>[
                new MaterialButton(
                  child: new Text("ADD"),
                  color: Colors.yellow,
                  onPressed:add,
                ),
                new MaterialButton(
                  child: new Text("SUB"),
                  color: Colors.yellow,
                  onPressed:subt,
                ),

              ],
            ),
            new Padding(
              padding:const EdgeInsets.only(top: 0.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[
                new MaterialButton(
                  child: new Text("MUL"),
                  color: Colors.yellow,
                  onPressed:mult,
                ),
                new MaterialButton(
                  child: new Text("DIV"),
                  color: Colors.yellow,
                  onPressed:divi,
                ),

              ],
            ),
            ],
            //new Padding(
              //padding:const EdgeInsets.only(top: 20.0),
          ),
        ),
      );
    );
  }
}
 */
import 'package:flutter/material.dart';

class HOMEPAGE extends StatefulWidget {
  @override
  State createState() => new HOMEPAGEState();
}

class HOMEPAGEState extends State<HOMEPAGE> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(40.0),
        child: new ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "REASULT : $sum",
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "num1"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "num2"),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("ADD"),
                  color: Colors.yellowAccent,
                  onPressed: doAddition,
                ),
                new MaterialButton(
                  child: new Text("SUB"),
                  color: Colors.red,
                  onPressed: doSub,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("MULT"),
                  color: Colors.yellow,
                  onPressed: doMul,
                ),
                new MaterialButton(
                  child: new Text("DIVI"),
                  color: Colors.white,
                  onPressed: doDiv,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 10.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Clear"),
                  color: Colors.greenAccent,
                  onPressed: doClear,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}