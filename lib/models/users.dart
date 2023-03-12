
class User{
  int? id;
  String? name;
  String? email;
  String? image;
  DateTime? emailVerifidAt;
  int? roleId;
  String? token;
  DateTime? createdAt;
  DateTime? updatedAt;

  User({
    this.id,
    this.name,
    this.email,
    this.image,
    this.emailVerifidAt,
    this.roleId,
    this.token,
    this.createdAt,
    this.updatedAt,
  });

  User.fromJson(Map<String,dynamic> json){
    id=json['user']['id'];
    name=json['user']['name'];
    email=json['user']['email'];
    image=json['user'][image]??'';
    emailVerifidAt =
        DateTime.tryParse(json['user']['email_verified_at']??'');
    roleId=json['user']['role_id'];
    token=json['token'];
    createdAt=DateTime.tryParse(json['user']['created_at']??'');
    updatedAt=DateTime.tryParse(json['user']['updated_at']??'');
  }

  User.fromJson2(Map<String,dynamic> json){
    id=json['id'];
    name=json['name'];
    email=json['email'];
    image=json[image]??'';
    emailVerifidAt =
        DateTime.tryParse(json['email_verified_at']??'');
    roleId=json['role_id'];
    createdAt=DateTime.tryParse(json['created_at']??'');
    updatedAt=DateTime.tryParse(json['updated_at']??'');
  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data=<String,dynamic>{};
    data['id']=id;
    data['name']=name;
    data['email']=email;
    data['image']=image;
    data['emailVerifidAt']=emailVerifidAt;
    data['roleId']=roleId;
    data['token']=token;
    data['createdAt']=createdAt;
    data['updatedAt']=updatedAt;

    return data;
  }

  }
