import 'package:flutter/material.dart';
import 'package:rounds/components/ui/Button.dart';
import 'package:rounds/helpers/constants.dart';
import 'package:rounds/helpers/routes.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/landing.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 120),
                      child: Text("Rounds.",
                          style: TextStyle(
                              fontSize: 60, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 80),
                        child: Button(
                          onPressed: () => router.go("/login"),
                          text: "Get Started",
                        ))
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Enter your mobile number",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey)),
                            SizedBox(height: 8,),
                    TextField(
                      keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          
                          hintText: "0000000000",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: Constants.borderRadius,
                            borderSide: BorderSide(
                              color: Colors.grey.shade400,
                            ),
                          ),
                            border: OutlineInputBorder(
                              
                      borderRadius: Constants.borderRadius,
                    ))),
                    
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
