import 'package:flutter/material.dart';
import 'package:squip/view_models/ambulanceemergency_viewmodel.dart';
import 'package:squip/view_models/firebrigadeemergency_viewmodel.dart';
import 'package:stacked/stacked.dart';

class FireBrigadeEmergency extends StatelessWidget {
  const FireBrigadeEmergency({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => FireBrigadeEmergencyViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            backgroundColor: Colors.tealAccent,
              body: Column(
                children: [
                  SizedBox(height: 30,),
                  Center(
                      child: Text(
                    "Which Kind of problem you are facing?",
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
                            "FIRE",
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
                            "CYLINDER BLAST",
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
                            "SHORT CIRCUIT",
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
