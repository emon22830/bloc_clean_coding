
import 'package:bloc_clean_coding/config/components/internet_exception_widget.dart';
import 'package:bloc_clean_coding/config/components/loading_widget.dart';
import 'package:bloc_clean_coding/config/components/round_button.dart';
import 'package:bloc_clean_coding/config/routes/routes_name.dart';
import 'package:bloc_clean_coding/data/exceptions/app_exceptions.dart';
import 'package:bloc_clean_coding/services/splash/splash_services.dart';
import 'package:bloc_clean_coding/view/home/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices _splashServices = SplashServices();


  @override
  void initState(){
    super.initState();

    _splashServices.isLogin(context);
  }
  Widget build(BuildContext context) {
    return Scaffold(


      body: SafeArea(
        child: Center(
          child: Text('Splash Screen',style: TextStyle(fontSize: 50),),
        ),
      ),










//       floatingActionButton: FloatingActionButton(
//           onPressed: (){
//            throw NoInternetException('No Internet Connection');
//           }
//       ),
// body: Padding(
//   padding: const EdgeInsets.all(8.0),
//   child: SafeArea(
//     child: Center(
//       child: Column(
//         children: [
//
//
//
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 28.0),
//             child: InternetExceptionWidget(onPress: (){
//
//             },),
//           )
//
//
//
//           // SizedBox(height: 20,),
//           // RoundButton(title: 'Login', onPress: (){}),
//           // SizedBox(height: 20,),
//           // RoundButton(
//           //     title: 'SignUp',
//           //     height: 100,
//           //     onPress: (){
//           //
//           // }
//           // ),
//           // LoadingWidget(),
//           // Center(
//           //   child: TextButton(
//           //     onPressed: (){
//           //       Navigator.pushNamed(context, RoutesName.homeScreen);
//           //       // Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeScreen()));
//           //     },
//           //     child: Text('Home'),
//           //   ),
//           // ),
//         ],
//       ),
//     ),
//   ),
// ),
    );
  }
}
