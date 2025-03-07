import 'package:bloc_project/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../model/user_model.dart';


abstract class UserEvent {}

class FetchUser extends UserEvent {}

abstract class UserState {}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  final List<UserModel> users;
  UserLoaded(this.users);
}

class UserError extends UserState {
  final String message;
  UserError(this.message);
}

// Bloc
class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepo userRepo;

  UserBloc(this.userRepo) : super(UserInitial()) {
    on<FetchUser>((event, emit) async {
      emit(UserLoading());
      try {
        final users = await userRepo.fetchUser();
        emit(UserLoaded(users));
      } catch (e) {
        emit(UserError(e.toString()));
      }
    });
  }
}
