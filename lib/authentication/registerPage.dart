import 'package:ecommerce/widgets/widget.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
            child: Form(
              // key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'SomeThing',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Create your account now to chat and explore.',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(height: 4),
                  TextFormField(
                    decoration: textInputDecoration.copyWith(
                      labelText: 'Full Name',
                      prefix: Icon(
                        Icons.person,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    onChanged: (val) {
                      setState(() {
                        // fullName = val;
                      });
                    },
                    validator: (val) {
                      if (val!.isNotEmpty) {
                        return null;
                      } else {
                        return "name cannot be empty.";
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
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
                  SizedBox(
                    height: 20,
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
                        return "password must be at least 6 characters";
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
                          // register();
                        },
                        child: Text(
                          'Register',
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
                    text: "Already have an account.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Login now',
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.underline),
                        // recognizer: TapGestureRecognizer()
                        //   ..onTap = () {
                        //     nextScreen(context, LoginPage());
                        //   }
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
