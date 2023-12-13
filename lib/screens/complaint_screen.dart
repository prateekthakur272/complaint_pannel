import 'package:complaint_pannel/constants.dart';
import 'package:complaint_pannel/repository/database.dart';
import 'package:complaint_pannel/repository/models/complaint.dart';
import 'package:flutter/material.dart';

class ComplaintScreen extends StatefulWidget {
  const ComplaintScreen({super.key});

  @override
  State<ComplaintScreen> createState() => _ComplaintScreenState();
}

class _ComplaintScreenState extends State<ComplaintScreen> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complait'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 480,
                child: Column(
                  children: [
                    const Text('File A Complaint', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    space16,
                    TextField(
                      controller: titleController,
                      decoration: const InputDecoration(
                        hintText: 'Complaint Title',
                      ),
                    ),
                    space24,
                    TextField(
                      controller: descriptionController,
                      minLines: 4,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: 'Description',
                      ),
                    ),
                    space16,
                    FilledButton(onPressed: (){
                      if(titleController.text.trim().isNotEmpty && descriptionController.text.trim().isNotEmpty){
                        final complaint = Complaint(titleController.text.trim(), descriptionController.text.trim(), Database.currentUser!);
                        Database.compalaints.add(complaint);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text('Complaint registered!'),backgroundColor: Colors.green.shade300,));
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text('Feilds cannot be blank'),backgroundColor: Colors.red.shade300,));
                      }
                    }, child: const Text('Submit'))
                  ],
                ),
              ),
              space24,
              Image.asset('assets/complaint_box.png', width: 400,),
            ],
          ),
        ),
      ),
    );
  }
}