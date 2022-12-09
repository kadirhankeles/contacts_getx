import 'package:contacts_getx/model/user_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RegisterController extends GetxController{
  RxList<UserModel> userList = [UserModel.init()].obs;
  GetStorage getStorage= GetStorage();

 @override
  void onInit() {
    // TODO: implement onInit
        print("basladi ${getStorage.read("rr")}");
      List ramo=  ((getStorage.read("list")??[]));
    userList.value= ramo.map((e) => UserModel.fromJson(e)).toList();
    print(userList);
    super.onInit();
  }

  

  void addUser(String name, String number){
    userList.add(UserModel(name: name,number: number));
    print(userList[0].name);
    print(userList[0].number);
    
  }
  dataSave(){
    getStorage.write("rr","userList");
    getStorage.write("list",userList);
  }
}