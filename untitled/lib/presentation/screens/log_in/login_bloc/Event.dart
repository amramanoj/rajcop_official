abstract class LoginEvent{}
class LoginButtonPressEvent extends LoginEvent{
  final String emailId;
  final String password;
  LoginButtonPressEvent({required this.emailId,required this.password});
}