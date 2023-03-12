
class AllSenders {
  List<sender>? senders;

  AllSenders({this.senders});

  AllSenders.fromJson(Map<String, dynamic> json) {
    if (json['senders'] != null) {
      senders = <sender>[];
      json['senders'].forEach((v) {
        senders!.add(new sender.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.senders != null) {
      data['senders'] = this.senders!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class sender{
  int? id;
  String? name;
  String? mobile;
  String? address;
  String? category_id;
  DateTime? created_at;
  DateTime? updated_at;
  String? mails_count;

  sender({
    this.id,
    this.name,
   this.mobile,
   this.address,
   this.category_id,
   this.created_at,
   this.updated_at,
   this.mails_count,
  });

  sender.fromJson(Map<String,dynamic> json){
    id=json['sender']['id'];
    name=json['sender']['name'];
    mobile=json['sender']['mobile'];
    address=json['sender']['address'];
    category_id=json['sender']['category_id'];
    created_at=DateTime.tryParse(json['sender']['created_at']??'');
    updated_at=DateTime.tryParse(json['sender']['updated_at']??'');
    mails_count=json['sender']['mails_count'];

  }


  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data=Map<String,dynamic>();
    data['id']=id;
    data['name']=name;
    data['mobile']=mobile;
    data['address']=address;
    data['category_id']=category_id;
    data['created_at']=created_at;
    data['updated_at']=updated_at;
    data['mails_count']=mails_count;
    return data;
  }


}
