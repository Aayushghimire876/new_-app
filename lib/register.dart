// import 'package:flutter/material.dart';

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<RegisterformUI> createState() => _RegisterformUIState();
// }

// class _RegisterformUIState extends State<RegisterformUI> {
//   final _formkey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.all: (20)),
//         child: Form(
//           key: _formkey,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             spacing: 10,
//             children: [
//               Text(" Register Form"),
//               TextFormField(
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 decoration: InputDecoration(hintText: "Email:"),
//                 validator: (value) {
//                   if (value == "" || value == null) {
//                     return 'Email cannot be empty'; //we are passing the error here
//                   } else {
//                     return null; // this means no error is occured
//                   }
//                 },
//               ),

//               TextFormField(
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 decoration: InputDecoration(hintText: "password:"),
//                 validator: (value) {
//                   if (value == "" || value == null) {
//                     return 'Password cannot be empty'; //we are passing the error here
//                   } else {
//                     return null; // this means no error is occured
//                   }
//                 },
//               ),

//               ElevatedButton(onPressed: () {}, child: Text("Summit")),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
