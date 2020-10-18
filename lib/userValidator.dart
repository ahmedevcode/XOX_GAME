class UserValidationMixin{
  String validateNickName(String value){
    if(value.length<3){
      return "Nickname en az 3 karakter olmalıdır!";
    }
    else if(value.length>14){
      return "Nickname en fazla 14 karakter olmalıdır!";
    }
  }
}