// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:myflutix/services/services.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   // Melakukan inisialisasi Firebase saat aplikasi dijalankan.
//   await Firebase.initializeApp();

//   runApp(const MyApp());
// }

// // Kelas MyApp adalah kelas utama dari aplikasi.
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.white,
//                   backgroundColor: Colors.red, // Warna latar tombol
//                 ),
//                 onPressed: () async {
//                   // Ketika tombol "Sign Up" ditekan, panggil metode signUp dari AutServices
//                   // untuk mendaftarkan pengguna dengan data yang telah ditentukan.
//                   await AutServices.signUp(
//                       "sifa@gmail.com",
//                       "123456",
//                       "anton",
//                       ["Romantic", "Horror", "Sci-Fi", "Drama"],
//                       "Korean");
//                 },
//                 child: const Text('Sign Up'),
//               ),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.white,
//                   backgroundColor:
//                       Color.fromARGB(255, 52, 123, 255), // Warna latar tombol
//                 ),
//                 onPressed: () async {
//                   // Ketika tombol "Sign In" ditekan, panggil metode signIn dari AutServices
//                   // untuk mengotentikasi pengguna dengan data yang telah ditentukan.
//                   await AutServices.signIn("sifa@gmail.com", "123456");
//                 },
//                 child: const Text('Sign In'),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myflutix/ui/pages/MyTicketPage.dart';
import 'package:myflutix/ui/pages/TicketSuccess.dart';
import 'package:myflutix/ui/pages/WalletTopup.dart';
import 'package:myflutix/ui/pages/checkout.dart';
import 'package:myflutix/ui/pages/checkoutFail.dart';
import 'package:myflutix/ui/pages/checkoutSucces.dart';
import 'package:myflutix/ui/pages/home_page.dart';
import 'package:myflutix/ui/pages/orderSeat.dart';


void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // // Melakukan inisialisasi Firebase saat aplikasi dijalankan.
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/' :(context) => const OrderSeat(),        
        '/checkOut' :(context) => const checkOut(),           
        '/checkOutFail' :(context) => const checkOutFail(),           
        '/checkOutSucces' :(context) => const CheckoutSucces(),   
        '/MovieTicketSuccessScreen' :(context) => TopupPage(),
        '/homepage' :(context) => MyHomePage(),
      },
      initialRoute: '/checkOut',
    );
  }
}