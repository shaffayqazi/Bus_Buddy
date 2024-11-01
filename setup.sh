#!/bin/bash

# Define the base directory for models
MODEL_DIR="./lib/models"

# Create the models directory if it doesn't exist
mkdir -p $MODEL_DIR

# Define the content for each model

# Admin model
cat <<EOL > $MODEL_DIR/admin.dart
class Admin {
  final String adminID;
  final String name;
  final String email;
  final String password;

  Admin({
    required this.adminID,
    required this.name,
    required this.email,
    required this.password,
  });

  factory Admin.fromJson(Map<String, dynamic> json) {
    return Admin(
      adminID: json['adminID'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'adminID': adminID,
      'name': name,
      'email': email,
      'password': password,
    };
  }
}
EOL

# User model
cat <<EOL > $MODEL_DIR/user.dart
class User {
  final String userID;
  final String name;
  final String email;
  final int age;
  final String gender;
  final String phone;
  final String address;
  final String password;

  User({
    required this.userID,
    required this.name,
    required this.email,
    required this.age,
    required this.gender,
    required this.phone,
    required this.address,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userID: json['userID'],
      name: json['name'],
      email: json['email'],
      age: json['age'],
      gender: json['gender'],
      phone: json['phone'],
      address: json['address'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userID': userID,
      'name': name,
      'email': email,
      'age': age,
      'gender': gender,
      'phone': phone,
      'address': address,
      'password': password,
    };
  }
}
EOL

# Driver model
cat <<EOL > $MODEL_DIR/driver.dart
class Driver {
  final String driverID;
  final String name;
  final int age;
  final String phone;
  final String drivingLicenseNumber;
  final String password;

  Driver({
    required this.driverID,
    required this.name,
    required this.age,
    required this.phone,
    required this.drivingLicenseNumber,
    required this.password,
  });

  factory Driver.fromJson(Map<String, dynamic> json) {
    return Driver(
      driverID: json['driverID'],
      name: json['name'],
      age: json['age'],
      phone: json['phone'],
      drivingLicenseNumber: json['drivingLicenseNumber'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'driverID': driverID,
      'name': name,
      'age': age,
      'phone': phone,
      'drivingLicenseNumber': drivingLicenseNumber,
      'password': password,
    };
  }
}
EOL

# Van model
cat <<EOL > $MODEL_DIR/van.dart
class Van {
  final String vanNumber;
  final String plateNumber;
  final int capacity;
  final String specifiedRoute;
  final String driverID;

  Van({
    required this.vanNumber,
    required this.plateNumber,
    required this.capacity,
    required this.specifiedRoute,
    required this.driverID,
  });

  factory Van.fromJson(Map<String, dynamic> json) {
    return Van(
      vanNumber: json['vanNumber'],
      plateNumber: json['plateNumber'],
      capacity: json['capacity'],
      specifiedRoute: json['specifiedRoute'],
      driverID: json['driverID'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'vanNumber': vanNumber,
      'plateNumber': plateNumber,
      'capacity': capacity,
      'specifiedRoute': specifiedRoute,
      'driverID': driverID,
    };
  }
}
EOL

# Ride model
cat <<EOL > $MODEL_DIR/ride.dart
class Ride {
  final String rideID;
  final String userID;
  final String busID;
  final String startLocation;
  final String endLocation;
  final DateTime rideTime;
  final String status;

  Ride({
    required this.rideID,
    required this.userID,
    required this.busID,
    required this.startLocation,
    required this.endLocation,
    required this.rideTime,
    required this.status,
  });

  factory Ride.fromJson(Map<String, dynamic> json) {
    return Ride(
      rideID: json['rideID'],
      userID: json['userID'],
      busID: json['busID'],
      startLocation: json['startLocation'],
      endLocation: json['endLocation'],
      rideTime: DateTime.parse(json['rideTime']),
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'rideID': rideID,
      'userID': userID,
      'busID': busID,
      'startLocation': startLocation,
      'endLocation': endLocation,
      'rideTime': rideTime.toIso8601String(),
      'status': status,
    };
  }
}
EOL

# Payment model
cat <<EOL > $MODEL_DIR/payment.dart
class Payment {
  final String paymentID;
  final String userID;
  final String rideID;
  final double amount;
  final String method;
  final DateTime paymentDate;

  Payment({
    required this.paymentID,
    required this.userID,
    required this.rideID,
    required this.amount,
    required this.method,
    required this.paymentDate,
  });

  factory Payment.fromJson(Map<String, dynamic> json) {
    return Payment(
      paymentID: json['paymentID'],
      userID: json['userID'],
      rideID: json['rideID'],
      amount: json['amount'].toDouble(),
      method: json['method'],
      paymentDate: DateTime.parse(json['paymentDate']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'paymentID': paymentID,
      'userID': userID,
      'rideID': rideID,
      'amount': amount,
      'method': method,
      'paymentDate': paymentDate.toIso8601String(),
    };
  }
}
EOL

echo "All model files created successfully in $MODEL_DIR."
