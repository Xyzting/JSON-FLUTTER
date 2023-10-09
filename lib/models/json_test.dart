class JsonTest {
  String? name;
  int? userId;
  String? email;

  JsonTest({this.name, this.userId, this.email});

  JsonTest.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    userId = json['userId'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['userId'] = userId;
    data['email'] = email;
    return data;
  }
}
