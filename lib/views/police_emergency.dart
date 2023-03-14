import 'package:flutter/material.dart';
import 'package:squip/view_models/ambulanceemergency_viewmodel.dart';
import 'package:squip/view_models/policeemergency_viewmodel.dart';
import 'package:stacked/stacked.dart';

class PoliceEmergency extends StatelessWidget {
  const PoliceEmergency({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => PoliceEmergencyViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            backgroundColor: Colors.tealAccent,
              body: Column(
                children: [
                  SizedBox(height: 30,),
                  Center(
                      child: Text(
                    "StateYour Problem?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.green),
                  )),
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
                            "FIGHT / FIRE",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.greenAccent,
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
                            "ROBERRY",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.greenAccent,
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
                            "HARRASEMENT",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.greenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ));
        });
  }
}
