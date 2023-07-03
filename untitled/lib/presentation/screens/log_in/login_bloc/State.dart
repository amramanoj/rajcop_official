abstract class LoginState{
  
}
class LoginValidationFailedState extends LoginState{
 final  String errorMsg;
 LoginValidationFailedState({required this.errorMsg});
}
class LoginInitialState extends LoginState{

}
 class LoginWrongCredentialsState extends LoginState{
   final  String msg;
  LoginWrongCredentialsState({required this.msg});
 }
 class SignInErrorState extends LoginState{
 final  String errorMsg;
  SignInErrorState({required this.errorMsg});
}
class LoginLoadingState extends LoginState{

}
 class LoginLoginSuccessState extends LoginState{


}
