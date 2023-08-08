import 'package:flutter/material.dart';
import 'Modals/BioData.dart';

class DescriptionPage extends StatelessWidget {
  BioData model;
  DescriptionPage({
     required this.model
  });

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Mr Mansuri",
                style: TextStyle(
                    fontSize: 20,
                  color: Colors.white
                ),
              ),
            ],
          ),
          backgroundColor: Colors.purple,
        ),
        body: Card(
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
                padding: EdgeInsets.only(top: 10),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Id: "+model.id.toString(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                          "First Name: "+model.f_name.toString(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                          "Last Name: "+model.l_name.toString(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Email: "+model.email.toString(),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
