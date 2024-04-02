import 'dart:convert';

UsersModel usersModelFromJson(String str) =>
    UsersModel.fromJson(json.decode(str));

String usersModelToJson(UsersModel data) => json.encode(data.toJson());

class UsersModel {
  UsersModel({
    this.uid,
    this.name,
    this.keyName,
    this.email,
    this.creationTime,
    this.lastSignInTime,
    this.photoUrl,
    this.status,
    this.updatedTime,
    this.partner,
    this.client,
  });

  String? uid;
  String? name;
  String? keyName;
  String? email;
  String? creationTime;
  String? lastSignInTime;
  String? photoUrl;
  String? status;
  String? updatedTime;
  List<Partner>? partner;
  List<Client>? client;

  factory UsersModel.fromJson(Map<String, dynamic> json) => UsersModel(
        uid: json["uid"],
        name: json["name"],
        keyName: json["keyName"],
        email: json["email"],
        creationTime: json["creationTime"],
        lastSignInTime: json["lastSignInTime"],
        photoUrl: json["photoUrl"],
        status: json["status"],
        updatedTime: json["updatedTime"],
      );

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "name": name,
        "keyName": keyName,
        "email": email,
        "creationTime": creationTime,
        "lastSignInTime": lastSignInTime,
        "photoUrl": photoUrl,
        "status": status,
        "updatedTime": updatedTime,
      };
}

class Partner {
  Partner({this.connection, this.chatId, this.lastTime, this.chat});

  String? connection;
  String? chatId;
  String? lastTime;
  List<Chat>? chat;

  factory Partner.fromJson(Map<String, dynamic> json) => Partner(
        connection: json["connection"],
        chatId: json["chat_id"],
        lastTime: json["lastTime"],
      );

  Map<String, dynamic> toJson() => {
        "connection": connection,
        "chat_id": chatId,
        "lastTime": lastTime,
      };
}

class Client {
  Client({this.connection, this.chatId, this.lastTime, this.chat});

  String? connection;
  String? chatId;
  String? lastTime;
  List<Chat>? chat;

  factory Client.fromJson(Map<String, dynamic> json) => Client(
        connection: json["connection"],
        chatId: json["chat_id"],
        lastTime: json["lastTime"],
      );

  Map<String, dynamic> toJson() => {
        "connection": connection,
        "chat_id": chatId,
        "lastTime": lastTime,
      };
}

class Chat {
  Chat({
    this.connection,
    this.chatId,
    this.lastTime,
  });

  String? connection;
  String? chatId;
  String? lastTime;

  factory Chat.fromJson(Map<String, dynamic> json) => Chat(
        connection: json["connection"],
        chatId: json["chat_id"],
        lastTime: json["lastTime"],
      );

  Map<String, dynamic> toJson() => {
        "connection": connection,
        "chat_id": chatId,
        "lastTime": lastTime,
      };
}
