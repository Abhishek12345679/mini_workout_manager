import 'package:flutter/material.dart';

class WorkoutSessionView extends StatefulWidget {
  const WorkoutSessionView({super.key});

  @override
  State<WorkoutSessionView> createState() => _WorkoutSessionViewState();
}

class _WorkoutSessionViewState extends State<WorkoutSessionView>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Today'),
            Tab(text: 'This Week'),
            Tab(text: 'This Month'),
          ],
        ),
      ),
      body: SafeArea(
        child: TabBarView(
          controller: _tabController,
          children: [
            Container(color: Colors.red),
            Container(color: Colors.green),
            GridView.builder(
              itemCount: 31,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7, mainAxisExtent: 100),
              itemBuilder: (context, index) {
                return Text((index + 1).toString());
              },
            )
          ],
        ),
      ),
    );
  }
}
