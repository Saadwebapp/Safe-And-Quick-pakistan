import 'package:flutter/material.dart';
import 'package:squip/view_models/ambulance_concerned_viewmodel.dart';
import 'package:stacked/stacked.dart';

class AmbulanceConcerned extends StatelessWidget {
  const AmbulanceConcerned({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => AmbulanceConcernedViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            backgroundColor: Colors.tealAccent,
            body:Center(
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/ambulance.jpg"),
                    backgroundColor: Color(0xffff),
                    radius: 100,
                  ),
                  SizedBox(height: 30,),
                  Container(
                    child:
                    Column(
                      children: [

                        Text("Your Requests:",)],
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(

                    height: 50,
                    width: 330,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 35, right: 45),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            "Accept",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  SizedBox(
                    height: 50,
                    width: 330,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 35, right: 45),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            "Delete",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ));
        });
  }
}
