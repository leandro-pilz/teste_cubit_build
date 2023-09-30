import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class CubitHome extends Cubit<HomeState> {
  CubitHome() : super(InitialState());


  void clickSuccess(){
    emit(SuccessLoadedState());
  }
}
