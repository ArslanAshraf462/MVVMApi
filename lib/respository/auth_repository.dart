import '../res/app_url.dart';
import '/data/network/baseapiservices.dart';

import '../data/network/networkapiservices.dart';

class AuthRepository{
BaseApiServices _apiServices = NetworkApiServices();
Future<dynamic> loginApi(dynamic data) async{
  try{
    dynamic response = await _apiServices.getPostApiResponse(AppUrl.loginEndPoint, data);
    return response;
  }catch(e){
    throw e;
  }
}

Future<dynamic> registerApi(dynamic data) async{
  try{
    dynamic response = await _apiServices.getPostApiResponse(AppUrl.registrationEndPoint, data);
    return response;
  }catch(e){
    throw e;
  }
}

}