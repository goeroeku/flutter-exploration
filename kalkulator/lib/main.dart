import 'package:flutter/material.dart';
import 'package:kalkulator/component/custom_button.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Kalkulator",
      theme: ThemeData(primaryColor: Colors.black),
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Kalkulator v1.0")),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.white24,
                ),
                margin: const EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 16.0),
              ),
            ),
            Flexible(
              flex: 5,
              child: Container(
                  color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                flex: 1,
                                child: CustomButton("C"),
                              ),
                              Flexible(
                                flex: 1,
                                child: CustomButton("+/-"),
                              ),
                              Flexible(
                                flex: 1,
                                child: CustomButton("%"),
                              ),
                              Flexible(
                                flex: 1,
                                child: CustomButton("\u00F7"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                flex: 1,
                                child: CustomButton("7"),
                              ),
                              Flexible(
                                flex: 1,
                                child: CustomButton("8"),
                              ),
                              Flexible(
                                flex: 1,
                                child: CustomButton("9"),
                              ),
                              Flexible(
                                flex: 1,
                                child: CustomButton("x"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                flex: 1,
                                child: CustomButton("4"),
                              ),
                              Flexible(
                                flex: 1,
                                child: CustomButton("5"),
                              ),
                              Flexible(
                                flex: 1,
                                child: CustomButton("6"),
                              ),
                              Flexible(
                                flex: 1,
                                child: CustomButton("-"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          color: Colors.black12,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                flex: 1,
                                child: CustomButton("1"),
                              ),
                              Flexible(
                                flex: 1,
                                child: CustomButton("2"),
                              ),
                              Flexible(
                                flex: 1,
                                child: CustomButton("3"),
                              ),
                              Flexible(
                                flex: 1,
                                child: CustomButton("+"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          color: Colors.black12,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                flex: 2,
                                child: CustomButton("0"),
                              ),
                              Flexible(
                                flex: 1,
                                child: CustomButton("."),
                              ),
                              Flexible(
                                flex: 1,
                                child: CustomButton("="),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
