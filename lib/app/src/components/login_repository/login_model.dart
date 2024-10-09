class LoginModel {
  int? success;
  String? message;
  Customerdata? customerdata;
  String? guestId;

  LoginModel({this.success, this.message, this.customerdata, this.guestId});

  LoginModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    customerdata = json['customerdata'] != null ? Customerdata.fromJson(json['customerdata']) : null;
    guestId = json['guest_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['message'] = message;
    if (customerdata != null) {
      data['customerdata'] = customerdata!.toJson();
    }
    data['guest_id'] = guestId;
    return data;
  }
}

class Customerdata {
  String? id;
  String? name;
  String? email;
  String? mobile;
  String? referee;
  String? referralCode;
  int? status;
  String? token;
  int? otpverificationstatus;
  int? emailverificationstatus;

  Customerdata({this.id, this.name, this.email, this.mobile, this.referee, this.referralCode, this.status, this.token, this.otpverificationstatus, this.emailverificationstatus});

  Customerdata.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    referee = json['referee'];
    referralCode = json['referral_code'];
    status = json['status'];
    token = json['token'];
    otpverificationstatus = json['otpverificationstatus'];
    emailverificationstatus = json['emailverificationstatus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['mobile'] = mobile;
    data['referee'] = referee;
    data['referral_code'] = referralCode;
    data['status'] = status;
    data['token'] = token;
    data['otpverificationstatus'] = otpverificationstatus;
    data['emailverificationstatus'] = emailverificationstatus;
    return data;
  }
}
