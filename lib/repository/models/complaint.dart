import 'package:complaint_pannel/repository/models/user.dart';

class Complaint{
  final String title;
  final String description;
  final User user;
  bool status = false;
  Complaint(this.title, this.description, this.user);

  void setStatus(status){
    this.status = status;
  }
}