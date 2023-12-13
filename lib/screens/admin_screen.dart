import 'package:complaint_pannel/repository/database.dart';
import 'package:complaint_pannel/widgets/complaint_view.dart';
import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  var complaints = Database.compalaints;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Panel'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(24),
        itemCount: complaints.length,
        itemBuilder: (context, index)=> ComplaintView(complaint: complaints[index], callBack: (){
          setState(() {
            complaints = Database.compalaints;
          });
        },))
    );
  }
}