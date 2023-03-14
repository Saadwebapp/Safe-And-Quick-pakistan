import 'package:flutter/material.dart';
import 'package:squip/view_models/profile_screen_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ProfileScreenViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
              backgroundColor: Colors.tealAccent,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                      radius: 70,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Saad Abbasi",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 70,
                    ),


                    SizedBox(
                      height: 40,
                      width: 280,
                      child: ElevatedButton(
                        onPressed: () {
                          viewModel.logout();
                        },
                        child: Text(
                          "Logout",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            primary: Colors.greenAccent),
                      ),
                    )
                  ],
                ),
              ));
        });
  }
}
