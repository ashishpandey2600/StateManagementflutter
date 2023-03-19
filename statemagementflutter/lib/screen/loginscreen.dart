import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemagementflutter/provider/auth_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration:
                    InputDecoration(hintText: 'Email', labelText: 'Email'),
              ),
              SizedBox(),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password', labelText: 'Password'),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  authProvider.login(emailController.text.toString(), passwordController.text.toString());
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: 
                  authProvider.loading ? CircularProgressIndicator(color:Colors.white):Text('Login')),
                ),
              ),
            ]),
      ),
    );
  }
}
