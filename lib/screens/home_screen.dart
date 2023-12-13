import 'package:complaint_pannel/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compaint Portal'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: Column(
                  children: [
                    ElevatedButton.icon(onPressed: (){
                      Navigator.pushNamed(context, '/register/');
                    }, icon: const Icon(FontAwesomeIcons.file), label: const Text('File Complaint')),
                    space16,
                    OutlinedButton.icon(onPressed: (){
                      Navigator.pushNamed(context, '/admin/');
                    }, icon: const Icon(Icons.admin_panel_settings), label: const Text('Admin Console')),
                  ],
                ),
              ),
              space24,
              Image.asset('assets/intro_page.png',width: 400,)
            ],
          ),
        ),
      ),
    );
  }
}