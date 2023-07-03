import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/data/repository/mainRepository.dart';
import 'package:untitled/presentation/screens/log_in/login_bloc/Event.dart';
import 'package:untitled/presentation/screens/log_in/login_bloc/State.dart';

class LoginBloc extends Bloc<LoginEvent,LoginState>{
  LoginBloc():super(LoginInitialState()){
on<LoginButtonPressEvent>((event, emit) async{
  if(EmailValidator.validate(event.emailId)){
if(event.password.length<8){
  emit(LoginValidationFailedState(errorMsg: "password must be 8 digit"));
}
else{
  emit(LoginLoadingState());
  bool data=await DummyData().userdata(email: event.emailId, password: event.password);

  if(data){
    emit(LoginLoginSuccessState());
  }
  else{
    emit(LoginWrongCredentialsState(msg: "WrongCredentials plz try again.."));
  }
}








  }else{
    emit(LoginValidationFailedState(errorMsg: "wrong  email Id"));
  }

});
  }
}