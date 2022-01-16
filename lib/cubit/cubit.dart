import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_app/cubit/states.dart';

class AppCubit extends Cubit<AppStates>
{
//super
  AppCubit() : super(InitialStates());
//object from cubit
  static AppCubit get(context) => BlocProvider.of(context);
  
  int currentIndex = 0;
  void changeIndex(int index)
  {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }

}