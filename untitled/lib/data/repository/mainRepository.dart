class DummyData{
  String userEmail="amramanoj@gmail.com";
  String password="12345678";
  String mobileNum="6378820280";
  String age="30";
  userdata({required String email,required String password})async {
    var data=await Future.delayed(const Duration(seconds: 3));
if(email==userEmail&&password==this.password){
  return true;
}
   return false;

  }
}