import 'package:bloc_homework_states/data/local/db.dart';
import 'package:bloc_homework_states/data/models/user_model.dart';

class UserRepository {
  UserRepository({required this.databaseHelper});
  final DatabaseHelper databaseHelper;

  createUser(UserModel user) => databaseHelper.insertUser(user);
  updateUser(UserModel user) => databaseHelper.updateUser(user);
  getAllUser() => databaseHelper.getAllUsers();
  getUserById(int id) => databaseHelper.getUserById(id);
  deleteUser(int id) => databaseHelper.deleteUser(id);
}
