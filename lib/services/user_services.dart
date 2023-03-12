import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:consultation_app/constant.dart';
import 'package:http/http.dart' as http;

import '../api_response.dart';
import '../models/users.dart';

Future<ApiResponse> login(String email,String password) async{
  ApiResponse apiResponse= ApiResponse();

  try{
    final response = await http.post(Uri.parse(loginUrl),headers: {
      'Accept':'application/json',
    },
    body: {
      'email':email ,'password':password
    },
    );
    print(response.body);
    switch(response.statusCode){
      case 200:
        apiResponse.data=User.fromJson(jsonDecode(response.body));
        break;
      case 422:
        {
          final errors = jsonDecode(response.body)['errors'];
          apiResponse.error = errors[errors.keys.elementAt(0)][0];
        }
        break;
      case 403:
        apiResponse.error=jsonDecode(response.body)['message'];
        break;
      default:
        apiResponse.error=somethingwentwrong;
        break;
    }
  }catch(e){
    print('user services: ${e.toString()}');
    apiResponse.error=serverError;
  }
  return apiResponse;
}

Future<ApiResponse> register(String name,String email,String password) async{
  ApiResponse apiResponse= ApiResponse();

  try{
    final response = await http.post(Uri.parse(registerUrl),headers: {
      'Accept':'application/json',
    },
      body: {
        'name':name,'email':email ,'password':password,'password_configration':password
      },
    );
    print(response.body);
    switch(response.statusCode){
      case 200:
        apiResponse.data=User.fromJson(jsonDecode(response.body));
        break;
      case 422:
        {
          final errors = jsonDecode(response.body)['errors'];
          apiResponse.error = errors[errors.keys.elementAt(0)][0];
        }
        break;
      case 403:
        apiResponse.error=jsonDecode(response.body)['message'];
        break;
      default:
        apiResponse.error=somethingwentwrong;
        break;
    }
  }catch(e){
    print(e.toString());
    apiResponse.error=serverError;
  }
  return apiResponse;
}

Future<ApiResponse> getUserDetail() async{
  ApiResponse apiResponse= ApiResponse();

  try{
    final prefs= await SharedPreferences.getInstance();
    String token='';
    if(prefs.getString('token')!=null){
      token=prefs.getString('token')!;
    }
    //prefs.setString('token', 'Bearer ${userInfo.token}');
    //String token = await getToken();
    final response = await http.get(Uri.parse(userUrl),headers: {
      'Accept':'application/json',
      //'Authorization':'Bearer $token',
    },
    );
    print(response.body);
    switch(response.statusCode){
      case 200:
        apiResponse.data=User.fromJson(jsonDecode(response.body));
        break;
      case 422:
        {
          final errors = jsonDecode(response.body)['errors'];
          apiResponse.error = errors[errors.keys.elementAt(0)][0];
        }
        break;
      case 403:
        apiResponse.error=jsonDecode(response.body)['message'];
        break;
      case 500:
        apiResponse.error=jsonDecode(response.body)['message'];
        break;
      default:
        apiResponse.error=somethingwentwrong;
        break;
    }
  }catch(e){
    print(e.toString());
    apiResponse.error=serverError;
  }
  return apiResponse;
}
