// ignore_for_file: prefer_const_constructors
// import 'package:carousel_slider/carousel_state.dart';

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart' as http;

class MyCarousel extends StatefulWidget {
  @override
  _MyCarouselState createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  final String apiUrl =
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=96b9899434d04821acdb41e4e74be3ce'; // Replace with your News API endpoint

  List<dynamic> newsData = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        newsData = data['articles'];
      });
    } else {
      throw Exception('Failed to load news data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Carousel'),
        centerTitle: true,
        backgroundColor: Colors.pink[300],
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              print("The button is clicked");
            },
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                height: 300,
                enableInfiniteScroll: true,
                // enlargeCenterPage: true,
              ),
              items: newsData
                  .where((item) => item['urlToImage'] != null)
                  .map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Card(
                        elevation: 5.0,
                        child: Column(
                          children: [
                            Image.network(item['urlToImage']),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                item['title'] ?? 'No title available',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: EdgeInsets.all(8.0),
                            //   child: Text(
                            //     item['description'] ??
                            //         'No description available',
                            //     style: TextStyle(fontSize: 16.0),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: newsData.length,
              itemBuilder: (context, index) {
                final item = newsData[index];
                return Card(
                  elevation: 5.0,
                  margin: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: item['urlToImage'] != null
                        ? Image.network(item['urlToImage'])
                        : Placeholder(),
                    title: Text(item['title'] ?? "No Title Available"),
                    // subtitle:
                    //     Text(item['description'] ?? "No Description aailable"),
                  ),
                );
              },
            ),
          ) 
        ],
      ),
    );
  }
}
