import 'package:flutter/material.dart';
class MyStepper extends StatefulWidget {
  _MyStepperState createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _myCurrentStep=0;
  List<Step> myListSteps = [
    new Step(
      title:new Text('Paso 1'),
      content: new Text('contenido del paso 1'),
    ),
    new Step(
      title:new Text('Paso 2'),
      content: new Text('contenido del paso 2'),
    ),
    new Step(
      title:new Text('Paso 3'),
      content: new Text('contenido del paso 3'),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My Stepper Title"),
      ),
      body: new Container(
        child: new Stepper(
          currentStep: this._myCurrentStep,
          steps: myListSteps,
          type: StepperType.vertical,
          onStepTapped: (step){
            setState(() {
              _myCurrentStep = step;
            });
          },
          onStepCancel: (){
            setState(() {
              _myCurrentStep = _myCurrentStep == 0 ? _myCurrentStep : (_myCurrentStep-1);
            });
          },
          onStepContinue: (){
            setState(() {
              _myCurrentStep = _myCurrentStep == (myListSteps.length-1) ? _myCurrentStep : (_myCurrentStep+1);
            });
          }
        ),
      ),
    );
  }
}