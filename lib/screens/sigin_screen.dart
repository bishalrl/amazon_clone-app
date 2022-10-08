import 'package:amazon_clon/screens/sign_up.dart';
import 'package:amazon_clon/utlis/constants.dart';
import 'package:amazon_clon/widgets/button.dart';
import 'package:amazon_clon/widgets/terxfield.dart';
import 'package:flutter/material.dart';

class SigInScreen extends StatefulWidget {
  const SigInScreen({Key? key}) : super(key: key);

  @override
  State<SigInScreen> createState() => _SigInScreenState();
}

class _SigInScreenState extends State<SigInScreen> {
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sign-In',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
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
                      Align(
                        alignment: Alignment.center,
                        child: MainButton(
                          child: Text('Sign-in'),
                          color: Colors.orange,
                          isloading: false,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 1,
                    color: Colors.grey,
                  )),
                  const Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'New on Amazon',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    height: 1,
                    color: Colors.grey,
                  )),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              MainButton(
                  child: Text('Create an account'),
                  color: Colors.grey,
                  isloading: false,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                  }),
            ],
          ),
        ),
      ),
    ));
  }
}
