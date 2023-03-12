class email{
  int? id;
  String? subject;
  String? description;
  int? senderId;
  int? archiveNumber;
  DateTime? archiveDate;
  String? decision;
  int? statusId;
  String? finalDecision;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? sender;
  String? status;
  int? tags;
  String? attachments;
  String? activities;

  email({
    this.id,
    this.subject,
    this.description,
    this.senderId,
    this.archiveNumber,
    this.archiveDate,
    this.decision,
    this.statusId,
    this.finalDecision,
    this.createdAt,
    this.updatedAt,
    this.sender,
    this.status,
    this.tags,
    this.attachments,
    this.activities,
  });

  email.fromJson(Map<String,dynamic> json){
    id=json['id'];
    subject=json['subject'];
    description=json['description'];
    senderId=json['senderId'];
    decision=json['decision'];
    statusId=json['statusId'];
    finalDecision=json['finalDecision'];
    sender=json['sender'];
    status=json['status'];
    tags=json['tags'];
    attachments=json['attachments'];
    activities=json['activities'];

    archiveDate =
        DateTime.tryParse(json['archiveDate']??'');
    createdAt=DateTime.tryParse(json['created_at']??'');
    updatedAt=DateTime.tryParse(json['updated_at']??'');
  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data=<String,dynamic>{};
    data['id']=id;
    data['subject']=subject;
    data['description']=description;
    data['senderId']=senderId;
    data['decision']=decision;
    data['statusId']=statusId;
    data['finalDecision']=finalDecision;
    data['sender']=sender;
    data['status']=status;
    data['tags']=tags;
    data['attachments']=attachments;
    data['activities']=activities;
    data['archiveDate']=archiveDate;
    data['createdAt']=createdAt;
    data['updatedAt']=updatedAt;

    return data;
  }

}
