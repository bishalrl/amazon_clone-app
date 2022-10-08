import 'package:amazon_clon/screens/sigin_screen.dart';
import 'package:amazon_clon/utlis/constants.dart';
import 'package:amazon_clon/widgets/button.dart';
import 'package:amazon_clon/widgets/terxfield.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    namecontroller.dispose();
    passwordcontroller.dispose();
    emailcontroller.dispose();
    addresscontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              Image.network(amazonLogo, height: screenSize.height * 0.10),
              const SizedBox(
                height: 50,
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  height: screenSize.height * 0.5,
                  width: screenSize.width * 0.9,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 71, 69, 70), width: 2),
                      color: Colors.white),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sign-UP',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        FOrm_Field(
                          controller: namecontroller,
                          obsecureText: false,
                          title: 'Name',
                          hintText: 'Enter your Name',
                        ),
                        FOrm_Field(
                          controller: emailcontroller,
                          obsecureText: false,
                          title: 'Email',
                          hintText: 'Enter your E-mail',
                        ),
                        FOrm_Field(
                          controller: passwordcontroller,
                          obsecureText: true,
                          title: 'Password',
                          hintText: 'Enter your password',
                        ),
                        FOrm_Field(
                          controller: addresscontroller,
                          obsecureText: true,
                          title: 'address',
                          hintText: 'Enter your address',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: MainButton(
                            child: Text('Sign-UP'),
                            color: Colors.orange,
                            isloading: false,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 50,
              ),
              MainButton(
                  child: Text('Go Back'),
                  color: Colors.grey,
                  isloading: false,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SigInScreen()));
                  }),
            ],
          ),
        ),
      ),
    ));
  }
}
