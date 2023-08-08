import 'package:flutter/material.dart';
import 'DescriptionPage.dart';
import 'ExtendPage.dart';
import 'Modals/BioData.dart';
import 'Service/ApiService.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Api Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
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
      body: FutureBuilder(
        future: ApiService().getData(),
        builder: (BuildContext context, AsyncSnapshot<List<BioData>> snapshot) {
          if(snapshot.hasData)
          {
            return Container(
              child: ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => DescriptionPage(model: snapshot.data![index]),
                        ));
                      },
                      child: NewCardWidget(model: snapshot.data![index])
                  );
                },),
            );
          }
          else
          {
            return Container(
              width: double.infinity,
              height: double.infinity,
              child: Center(
                child: Text("Loading....."),
              ),
            );
          }
        },
      ),
    );
  }
}

