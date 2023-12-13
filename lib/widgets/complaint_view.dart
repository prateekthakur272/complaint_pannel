import 'package:complaint_pannel/repository/models/complaint.dart';
import 'package:flutter/material.dart';

class ComplaintView extends StatelessWidget {
  final Complaint complaint;
  final Function() callBack;
  const ComplaintView({super.key, required this.complaint, required this.callBack});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(complaint.title,style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Text(complaint.description, style: const TextStyle(fontSize: 16),),
                // const Text('Status'),
                Text('By: ${complaint.user.name}(${complaint.user.email})'),
                Row(
                  children: [
                    Checkbox(value: complaint.status, onChanged: (value){
                      complaint.setStatus(value);
                      callBack();
                    }),
                    const Text('Resolved')
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}