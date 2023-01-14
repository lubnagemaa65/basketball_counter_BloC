import 'package:bas/cubit/counter_states.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(CounterAIncreamentState());
   
   int teamAPoints = 0;

  int teamBPoints = 0;


  void teamIncreament({required String team,required int buttonNumber}){
if(team=='A'){
  teamAPoints=buttonNumber;
  emit(CounterAIncreamentState());
}
else{
    teamBPoints = buttonNumber;
      emit(CounterBIncreamentState());
}
  }

}