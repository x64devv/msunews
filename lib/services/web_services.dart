import 'dart:convert';

import 'package:http/http.dart' as client;

import '../model/user.dart';

class WebService {
  final _baseUrl = "newsdroid.hoolixyz.io";
  // final _exceptionError = {
  //   "status": false,
  //   "message": "Error occured, sign up failed please try again!",
  // };
  Map<String, dynamic> _serverError(message) => {
        "status": false,
        "message": message,
      };

  Future<Map<String, dynamic>> signUpUser(User user) async {
    try {
      var url = Uri.http(_baseUrl, "/signup.php");
      var response = await client.post(
        url,
        body: {
          "name": user.name,
          "email": user.email,
          "password": user.password,
          "role": user.role,
        },
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = jsonDecode(response.body);
        if (jsonResponse['success']) {
          return {
            "signedup": true,
            "message": "success",
          };
        }

        return _serverError(jsonResponse['message']);
      }

      throw (Exception("Something is not right, Please try again!"));
    } catch (e) {
      return _serverError(e.toString());
    }
  }

  Future<Map<String, dynamic>> signInUser(String email, String password) async {
    try {
      var url = Uri.http(_baseUrl, "/signin.php");
      var response = await client.post(
        url,
        body: {
          "email": email,
          "password": password,
        },
      );

      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);
        if (!jsonResponse['loggedin']) {
          return _serverError(jsonResponse['message']);
        }

        return {
          "status": true,
          "user": User(
              id: jsonResponse['id'],
              name: jsonResponse['name'],
              email: email,
              password: password,
              role: jsonResponse['role']),
        };
      }

      throw (Exception("Something is not right, Please try again!"));
    } catch (e) {
      return _serverError(e.toString());
    }
  }
}
