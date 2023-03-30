import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Homeprovider extends ChangeNotifier{
  WebViewController? webviewController;
  List link=[
    "https://www.swiggy.com/",
    "https://www.zomato.com/",
    "https://online.kfc.co.in/",
    "https://pizzaonline.dominos.co.in/",
    "https://www.mcdonalds.com/",
    "https://www.pizzahut.co.in/",
    "https://lapinozpizza.in/",
  ];
  List logoList = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
    "assets/images/5.png",
    "assets/images/6.png",
    "assets/images/7.png"
  ];
  void initController(int index){
    webviewController = WebViewController();
    webviewController!.loadRequest(Uri.parse("${link[index]}"),);
  }
}