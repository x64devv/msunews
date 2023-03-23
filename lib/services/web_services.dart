import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as client;
import 'package:jin_jin/model/article.dart';
import 'package:jin_jin/model/classified.dart';

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

  Future<Map<String, dynamic>> uploadArticle(Article article) async {
    try {
      var url = Uri.http(_baseUrl, "/posts-handler.php");
      var response = await client.post(
        url,
        body: {
          "add-article": true,
          "type": article.type,
          "title": article.title,
          "postedBy": article.postedBy,
          "category": article.category,
          "news-body": article.newsBody,
        },
      );

      if (!(response.statusCode == 200)) {
        throw (Exception("Something is not right, please try again!"));
      }
      var jsonResponse = jsonDecode(response.body);
      if (!jsonResponse['status']) {
        return {
          "status": false,
          "message": jsonResponse["error"],
        };
      }
      return {
        "status": true,
        "message": "Success",
      };
    } catch (e) {
      return _serverError(e.toString());
    }
  }

  Future<Map<String, dynamic>> uploadAd(Classified classified) async {
    try {
      var url = Uri.http(_baseUrl, "/posts-handler.php");
      var response = await client.post(
        url,
        body: {
          "add-classifiedAd": true,
          "title": classified.title,
          "postedBy": classified.postedBy,
        },
      );

      if (!(response.statusCode == 200)) {
        throw (Exception("Something is not right, please try again!"));
      }

      var jsonResponse = jsonDecode(response.body);
      if (!jsonResponse['status']) {
        return _serverError(jsonResponse['message']);
      }

      return {
        "status": true,
        "message": "success",
      };
    } catch (e) {
      return _serverError(e.toString());
    }
  }

  Future<Map<String, dynamic>> fetchNews() async {
    try {
      var url = Uri.http(_baseUrl, "/posts-handle.php");
      var response = await client.post(
        url,
        body: {
          "get-articles": true,
        },
      );

      if (!(response.statusCode == 200)) {
        throw (Exception("Something is not right, please try again!"));
      }

      var jsonResponse = jsonDecode(response.body);
      if (!jsonResponse['status']) {
        return _serverError(jsonResponse['message']);
      }

      debugPrint(response.body);
      return {
        "status": true,
        "message": "success",
      };
    } catch (e) {
      return _serverError(e.toString());
    }
  }

  Future<Map<String, dynamic>> fetchAds() async {
    try {
      var url = Uri.http(_baseUrl, "/posts-handle.php");
      var response = await client.post(
        url,
        body: {
          "get-ads": true,
        },
      );

      if (!(response.statusCode == 200)) {
        throw (Exception("Something is not right, please try again!"));
      }

      var jsonResponse = jsonDecode(response.body);
      if (!jsonResponse['status']) {
        return _serverError(jsonResponse['message']);
      }

      debugPrint(response.body);
      return {
        "status": true,
        "message": "success",
      };
    } catch (e) {
      return _serverError(e.toString());
    }
  }
}
