

class UserDetails{
  String userId;
  String? userName;
  String? userEmail;
  String? userPhone;
  String? userDistrict;
  String? userUpazila;
  String? userAddress;
  String? userimg;



  UserDetails({required this.userId, this.userName, this.userEmail, this.userPhone,
      this.userDistrict, this.userUpazila, this.userAddress,this.userimg});

  factory UserDetails.fromJson(Map<String , dynamic> json) => UserDetails(
      userId: json["user_id"] == null ? null :json["user_id"],
      userName: json["user_name"] == null ? null :json["user_name"],
      userEmail: json["user_email"] == null ? null :json["user_email"],
      userimg: json["user_img"] == null ? null :json["user_img"],
      userUpazila: json["user_upazila"] == null ? null :json["user_upazila"],
      userPhone: json["user_phone"] == null ? null :json["user_phone"],
      userDistrict: json["user_district"] == null ? null :json["user_district"],
      userAddress: json["user_address"] == null ? null :json["user_address"],
  );

  Map<String , dynamic> toJson() => {
    "user_id" : userId == null ? null: userId,
    "user_name" : userName == null ? null: userName,
    "user_email" : userEmail == null ? null: userEmail,
    "user_address" : userAddress == null ? null: userAddress,
    "user_district" : userDistrict == null ? null: userDistrict,
    "user_phone" : userPhone == null ? null: userPhone,
    "user_upazila" : userUpazila == null ? null: userUpazila,
    "user_img" : userimg == null ? null: userimg,

  };
}