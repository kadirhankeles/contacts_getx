class UserModel {
  String? name;
  String? number;

  UserModel({this.name, this.number});
  UserModel.init();

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['number'] = this.number;
    return data;
  }
}
