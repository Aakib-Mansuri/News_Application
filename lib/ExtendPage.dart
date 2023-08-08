import 'package:flutter/material.dart';
import 'Modals/BioData.dart';

class NewCardWidget extends StatelessWidget {
  BioData model;
  NewCardWidget({
    required this.model
});

  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(this.model.avatar.toString()),
                    fit: BoxFit.fill
                ),
                borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(10),topEnd: Radius.circular(10))
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10,bottom: 5),
                  child: Text(
                    this.model.f_name.toString()+' '+this.model.l_name.toString(),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
