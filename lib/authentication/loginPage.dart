import 'package:ecommerce/authentication/registerPage.dart';
import 'package:ecommerce/widgets/widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/signin.jpeg"),
                fit: BoxFit.cover,
                opacity: 0.7),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
              child: Form(
                // key: formKey,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Something',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                    SizedBox(
                      height: 180,
                    ),
                    TextFormField(
                      decoration: textInputDecoration.copyWith(
                        labelText: 'Email',
                        prefix: Icon(
                          Icons.email,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      onChanged: (val) {
                        setState(() {
                          // email = val;
                        });
                      },
                      validator: (val) {
                        return RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+")
                                .hasMatch(val!)
                            ? null
                            : "Please enter valid email address";
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: textInputDecoration.copyWith(
                        labelText: 'password',
                        prefix: Icon(
                          Icons.lock_outline,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      validator: (val) {
                        if (val!.length < 6) {
                          return "password must be atleast 6 characters";
                        } else {
                          return null;
                        }
                      },
                      onChanged: (val) {
                        setState(() {
                          // password = val;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange[400],
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          onPressed: () {
                            // login();
                          },
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text.rich(TextSpan(
                      text: "Don't have an account.",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Register here',
                          style: const TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              nextScreen(context, RegisterPage());
                            },
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
