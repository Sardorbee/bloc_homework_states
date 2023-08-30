class UserModel {
  final int id;
  final String firstName;
  final String lastName;
  final int age;
  final String gender;
  final String jobTitle;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.gender,
    required this.jobTitle,
  });

  // Factory constructor to create a UserModel instance from a JSON map
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as int? ?? 0,
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      age: json['age'] as int? ?? 0,
      gender: json['gender'] as String? ?? '',
      jobTitle: json['jobTitle'] as String? ?? '',
    );
  }

  // Convert the UserModel instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'age': age,
      'gender': gender,
      'jobTitle': jobTitle,
    };
  }

  UserModel copyWith({
    int? id,
    String? firstName,
    String? lastName,
    int? age,
    String? gender,
    String? jobTitle,
  }) {
    return UserModel(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      age: age ?? this.age,
      gender: gender ?? this.gender,
      jobTitle: jobTitle ?? this.jobTitle,
    );
  }

  @override
  String toString() {
    return """
    id: $id
    firstName: $firstName,
    lastName: $lastName,
    age: $age,
    gender: $gender, 
    jobTitle: $jobTitle
    """;
  }
}
