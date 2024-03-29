import 'package:doc_app/main.dart';
import 'package:doc_app/models/auth_models.dart';
import 'package:doc_app/provider/dio_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/config.dart';
import 'button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool obsecurePass = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            cursorColor: Config.primaryColor,
            decoration: const InputDecoration(
              hintText: 'Email Address',
              labelText: 'Email',
              alignLabelWithHint: true,
              prefixIcon: Icon(Icons.email_outlined),
              prefixIconColor: Config.primaryColor,
            ),
          ),
          Config.spaceSmall,
          TextFormField(
            controller: _passwordController,
            keyboardType: TextInputType.emailAddress,
            cursorColor: Config.primaryColor,
            decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
              alignLabelWithHint: true,
              prefixIcon: const Icon(Icons.lock_outline),
              prefixIconColor: Config.primaryColor,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obsecurePass = !obsecurePass;
                  });
                },
                icon: obsecurePass
                    ? const Icon(
                        Icons.visibility_off_outlined,
                        color: Colors.black38,
                      )
                    : const Icon(
                        Icons.visibility_outlined,
                        color: Config.primaryColor,
                      ),
              ),
            ),
          ),
          Config.spaceSmall,
          Consumer<AuthModels>(builder: (context, auth, child) {
            return Button(
              width: double.infinity,
              title: 'Sign In',
              onPressed: () async {
                final token = await DioProvider()
                    .getToken(_emailController.text, _passwordController.text);
                // final user = await DioProvider().getUser(token);
                // print(user);

                if (token) {
                  auth.loginSuccess;
                  MyApp.navigatorKey.currentState!.pushNamed('main');
                }
                // Navigator.of(context).pushNamed('main');
              },
              disable: false,
            );
          }),
        ],
      ),
    );
  }
}
