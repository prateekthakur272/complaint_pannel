import 'package:complaint_pannel/repository/models/complaint.dart';
import 'package:complaint_pannel/repository/models/user.dart';

class Database{
  static final users = [
    const User('Admin', 'admin@gmail.com')
  ];
  static final compalaints = [
    Complaint('Test1', 'Test', const User('Admin', 'admin@gmail.com')),
    Complaint('Test2', 'Test', const User('Admin', 'admin@gmail.com')),
  ];
  static User? currentUser;
}