import 'package:flutter/material.dart';
import 'package:lesson_89/services/cv_service.dart';
import 'package:lesson_89/ui/widgets/about_me.dart';
import 'package:lesson_89/ui/widgets/academic_widget.dart';
import 'package:lesson_89/ui/widgets/contact_widget.dart';
import 'package:lesson_89/ui/widgets/project_url.dart';
import 'package:lesson_89/ui/widgets/skills_widget.dart';
import 'package:lesson_89/ui/widgets/summary_widget.dart';

import '../widgets/button_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late PageController _pageViewController;
  late TabController _tabController;
  int _currentPageIndex = 0;

  final CvService cvService = CvService();

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
    _tabController.dispose();
  }

  void updatePage(int currentPageIndex) {
    _tabController.index = currentPageIndex;
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }

  void _updateCurrentPageIndex(int index) {
    _tabController.index = index;
    _pageViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              cvService.downloadCv("https://www.myperfectresume.com/resume/templates/pdf");
            },
            icon: const Icon(Icons.picture_as_pdf),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _pageViewController,
            onPageChanged: updatePage,
            children: [
              AboutMe(),
              SummaryWidget(),
              AcademicWidget(),
              ProjectUrl(),
              ContactWidget(),
              SkillsWidget()
            ],
          ),
          ButtonController(
            tabController: _tabController,
            currentPageIndex: _currentPageIndex,
            onUpdateCurrentPageIndex: _updateCurrentPageIndex,
          ),
        ],
      ),
    );
  }
}
