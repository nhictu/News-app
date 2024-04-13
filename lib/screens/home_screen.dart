import 'package:flutter/material.dart';
import 'package:mvvm_news_app/screens/general_screen.dart';
import 'package:mvvm_news_app/screens/health_screen.dart';
import 'package:mvvm_news_app/screens/science_screen.dart';
import 'package:mvvm_news_app/screens/technology_screen.dart';
import 'package:mvvm_news_app/screens/top_headlines_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "Tin Tức Mới",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Color.fromARGB(255, 148, 212, 235)),
            isScrollable: true,
            tabs: const [
              Tab(text: "Tổng quan"),
              Tab(text: "Sức khỏe"),
              Tab(text: "Công nghệ"),
              Tab(text: "Khoa học"),
              Tab(text: "Tìm kiếm hàng đầu"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            GeneralScreen(),
            HealthScreen(),
            TechnologyScreen(),
            ScienceScreen(),
            TopHeadlinesScreen(),
          ],
        ),
      ),
    );
  }
}
