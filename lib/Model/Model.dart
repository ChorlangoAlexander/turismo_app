class UserModel {
  String? user;
  String? email;
  String? nombres;
  String? apellidos;
  String? password;
  String? bio;
  String? photoUrl;
  List? followers;
  List? following;

  UserModel(
      {this.user,
      this.email,
      this.nombres,
      this.apellidos,
      this.password,
      this.bio,
      this.photoUrl,
      this.followers,
      this.following});

  factory UserModel.fromMap(map) {
    return UserModel(
      user: map['user'],
      email: map['email'],
      nombres: map['nombres'],
      apellidos: map['apellidos'],
      password: map['password'],
      bio: map['bio'],
      photoUrl: map['photoUrl'],
      followers: map["followers"],
      following: map["following"],
    );
  }
  //enviar datos al servidor
  Map<String, dynamic> tomMap() {
    return {
      'userid': user,
      'email': email,
      'nombres': nombres,
      'apellidos': apellidos,
      'password': password,
      'bio': bio,
      'photoUrl': photoUrl,
      'followers': followers,
      'following': following,
    };
  }
}
