import 'package:complaint_pannel/constants.dart';
import 'package:complaint_pannel/repository/database.dart';
import 'package:complaint_pannel/repository/models/user.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final email = TextEditingController();
    final name = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 480,
                child: Column(
                  children: [
                    const Text('Register to continue', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    space16,
                    TextField(
                        controller: email,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: 'Enter email',
                        ),
                      ),
                    space16,
                    TextField(
                        controller: name,
                        decoration: const InputDecoration(
                          hintText: 'Enter full name',
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                    space16,
                    ElevatedButton(onPressed: (){
                      if(email.text.toString().trim().isNotEmpty && name.text.toString().trim().isNotEmpty){
                        final user = User(name.text.trim(), email.text.trim());
                        Database.users.add(user);
                        Database.currentUser = user;
                        Navigator.pushNamed(context, '/complaint/');
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text('Feilds cannot be blank'),backgroundColor: Colors.red.shade300,));
                      }
                    }, child: const Text('Register'))
                  ],
                ),
              ),
              space24,
              Image.asset('registration_page.png', height: 400,)
            ],
          ),
        ),
      ),
    );
  }
}