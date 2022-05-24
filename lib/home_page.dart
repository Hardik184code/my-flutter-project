// ignore_for_file: sized_box_for_whitespace, library_prefixes
import 'dart:convert';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List song;

  ReadData() {
    DefaultAssetBundle.of(context).loadString("json/song").then((s) {
      setState(() {
        song = json.decode(s);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    ReadData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                color: Color(0xFFEC9292),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ImageIcon(
                        AssetImage("assets/menu.png"),
                        color: Color(0xFFBF4B4B),
                        size: 28,
                      ),
                      Row(
                        children: const [
                          ImageIcon(
                            AssetImage("assets/search.png"),
                            color: Color(0xFFBF4B4B),
                            size: 28,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          ImageIcon(
                            AssetImage("assets/music.webp"),
                            size: 28,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Text(
                  'Romantic Songs',
                  style: TextStyle(
                    color: Color(
                      0xFF111213,
                    ),
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                    fontFamily: "font/Roboto-Regular.ttf",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 230,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      left: -25,
                      child: Container(
                        height: 230,
                        child: PageView.builder(
                            controller: PageController(viewportFraction: 0.8),
                            itemCount: song == null ? 0 : song.length,
                            itemBuilder: (_, i) {
                              return Container(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.only(right: 20),
                                decoration: BoxDecoration(
                                  color: Color(0xFFBF4B4B),
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                      image: AssetImage(song[i]["img"]),
                                      fit: BoxFit.fill),
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          backgroundColor: Color(0xFFF2E9E9),
        ),
      ),
    );
  }
}
