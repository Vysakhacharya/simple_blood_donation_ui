import 'package:flutter/material.dart';
import 'package:simple_blood_donation/pages/login_page.dart';

class Survey extends StatefulWidget {
  const Survey({super.key});

  @override
  State<Survey> createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 110.0),
          child: Center(
            child: Container(
              child: Icon(
                Icons.bloodtype,
                size: 200,
                color: Colors.redAccent,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Plese pick your \n     blood type',
          style: TextStyle(fontSize: 40),
        ),
        SizedBox(
          height: 30,
        ),
        bloodtypeRow('A', 'AB-'),
        SizedBox(
          height: 20,
        ),
        bloodtypeRow('0', 'AB'),
        SizedBox(
          height: 30,
        ),
        // Container(
        //   height: 30,
        //   width: 30,
        //   decoration: BoxDecoration(
        //     color: Colors.grey[350],
        //     borderRadius: BorderRadius.circular(10),
        //   ),
        //   child: Row(
        //     children: [
        //       Center(
        //         child: Text('+'),
        //       ),
        //       Spacer(),
        //       Center(
        //         child: Text('-'),
        //       ),
        //     ],
        //   ),
        // ),
        LoginButton('Finish')
      ],
    );
  }
}

Widget bloodtypeRow(
  String type1,
  String type2,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(20),
        ),
        width: 70,
        height: 40,
        child: Center(
          child: Text(
            type1,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(20),
        ),
        width: 70,
        height: 40,
        child: Center(
          child: Text(
            type2,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    ],
  );
}
