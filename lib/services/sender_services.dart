import 'dart:convert';
import 'package:consultation_app/models/sender.dart';
import 'package:consultation_app/constant.dart';
import 'package:http/http.dart' as http;
import '../api_response.dart';
import '../models/users.dart';

Future<ApiResponse> getSenderDetail() async{
  ApiResponse apiResponse= ApiResponse();

  try{
    //String token= await getToken();
    final response = await http.get(Uri.parse(sendersUrl),headers: {
      'Accept':'application/json',
    //  'Authorization':'Bearer $token',
    },
    );
    print(response.body);
    switch(response.statusCode){
      case 200:
        apiResponse.data=sender.fromJson(jsonDecode(response.body));
        print(apiResponse.runtimeType);
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
// Future<List<sender>> getSenders() async{
//   ApiResponse apiResponse= ApiResponse();
//
//   try{
//     //String token= await getToken();
//     List<sender> allSenders=sender() as List<sender>;
//     final response = await http.get(Uri.parse(sendersUrl),headers: {
//       'Accept':'application/json',
//     //  'Authorization':'Bearer $token',
//     },
//     );
//     print(response.body);
//     switch(response.statusCode){
//       case 200:
//         var jsonObject = jsonDecode(response.body);
//          allSenders = allSenders.fromJson(jsonObject);
//         break;
//       case 422:
//         {
//           final errors = jsonDecode(response.body)['errors'];
//           apiResponse.error = errors[errors.keys.elementAt(0)][0];
//         }
//         break;
//       case 403:
//         apiResponse.error=jsonDecode(response.body)['message'];
//         break;
//       case 500:
//         apiResponse.error=jsonDecode(response.body)['message'];
//         break;
//       default:
//         apiResponse.error=somethingwentwrong;
//         break;
//     }
//   }catch(e){
//     print(e.toString());
//     apiResponse.error=serverError;
//   }
//   return allsenders();
// }


class AllSendersApi {
  Future<List<sender>> allSenders() async {
    var url = Uri.parse(sendersUrl);
    var response = await http.get(url,
      headers: {
        'Accept':'application/json',
        //  'Authorization':'Bearer $token',
      },);
    if (response.statusCode == 200) {
      var jsonObject = jsonDecode(response.body);
      AllSenders allSenders = AllSenders.fromJson(jsonObject);
      return allSenders.senders!;    }
    else {}    return [];  }}


