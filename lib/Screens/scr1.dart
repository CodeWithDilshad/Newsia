// // ignore_for_file: prefer_const_constructors

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:newsia/Screens/src2.dart';

// class SliderWindow extends StatefulWidget {
//   const SliderWindow({super.key});

//   @override
//   State<SliderWindow> createState() => _SliderWindowState();
// }

// class _SliderWindowState extends State<SliderWindow> {

//   Future<List<News>> fetchNews() async {
//   final response = await http.get(Uri.parse('YOUR_API_ENDPOINT_HERE'));

//   if (response.statusCode == 200) {
//     final List<dynamic> data = jsonDecode(response.body);
//     return data.map((item) {
//       return News(
//         title: item['title'],
//         description: item['description'],
//         imageUrl: item['image_url'],
//       );
//     }).toList();
//   } else {
//     throw Exception('Failed to load news');
//   }
// }
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Slider window"),
//         ),
//         body: CarouselSlider(
//           items: news.map((item) {
//             return Builder(
//               builder: (BuildContext context) {
//                 return Container(
//                   // Customize the layout for each news item here
//                   child: Column(
//                     children: [
//                       Image.network(item.imageUrl),
//                       Text(item.title),
//                       Text(item.description),
//                     ],
//                   ),
//                 );
//               },
//             );
//           }).toList(),
//           options: CarouselOptions(
//             // Configure carousel options like autoPlay, height, etc.
//             autoPlay: true,
//             height: 200,
//           ),
//         ),
//       ),
//     );
//   }
// }
