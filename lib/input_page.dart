import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:part_08/Constants.dart';
import 'package:part_08/reusable_card.dart';

import 'Icon_content.dart';
import 'main.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inActiveCardColour;
  Color femaleCardColour = inActiveCardColour;
//..male=1 female=2
  void updateColour(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardColour == inActiveCardColour) {
        maleCardColour = ActiveCardColour;
        femaleCardColour = inActiveCardColour;
      } else {
        maleCardColour = inActiveCardColour;
      }
    } else {
      if (femaleCardColour == inActiveCardColour) {
        femaleCardColour = ActiveCardColour;
        maleCardColour = inActiveCardColour;
      } else {
        femaleCardColour = inActiveCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BIM CalCulater"),
        ),
        body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ResuableCard(
                    onPress: () {
                      setState(() {
                        updateColour(Gender.male);
                      });
                    },
                    colour: maleCardColour,
                    cardChild: IconContent(
                      text: 'Male',
                      iconData: FontAwesomeIcons.mars,
                    ),
                  )),
                  Expanded(
                      child: ResuableCard(
                    onPress: () {
                      setState(() {
                        updateColour(Gender.female);
                      });
                    },
                    colour: femaleCardColour,
                    cardChild: IconContent(
                        text: 'Female', iconData: FontAwesomeIcons.question),
                  ))
                ],
              ),
            ),
            Expanded(
              child: ResuableCard(
                onPress: () {},
                colour: ActiveCardColour,
                cardChild: Column(children: [Text('Height',style: klabelTextStyle,)
                ,Row(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [Text('180',style: kNumberTextStyle,),Text('cm',style:klabelTextStyle),
                    Slider(value: height.toDouble(),min:120.0,max:150.0,activeColor: Color(0xFFEB15), onChanged: (double newValue){
                      setState((){
                      height=newValue.around();
                      });

                    })
                    ],)],),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    onPress: () {},
                    colour: ActiveCardColour,
                    cardChild: SizedBox(),
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    onPress: () {},
                    colour: ActiveCardColour,
                    cardChild: SizedBox(),
                  ),
                )
              ],
            )),
            Container(
                margin: EdgeInsets.only(top: 10.0),
                color: bottomContainerColour,
                width: double.infinity,
                height: bottomContainerHeight)
          ],
        ),
      ),
    );
  }
}
