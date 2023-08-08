class BioData{
  int? id;
  String? email, f_name, l_name, avatar;
  BioData({
    this.id,
    this.email,
    this.f_name,
    this.l_name,
    this.avatar,
});

  factory BioData.fromJson(Map<String,dynamic> json){
    return BioData(
        id: json['id'] == null ? null:json['id'],
        email: json['email'] == null ? null:json['email'],
        f_name: json['first_name'] == null ? null:json['first_name'],
        l_name: json['last_name'] == null ? null:json['last_name'],
        avatar: json['avatar'] == null ? null:json['avatar']
    );
  }
}