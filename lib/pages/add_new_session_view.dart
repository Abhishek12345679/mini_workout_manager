import 'package:flutter/material.dart';

class AddNewSessionView extends StatefulWidget {
  const AddNewSessionView({super.key});

  @override
  State<AddNewSessionView> createState() => _AddNewSessionViewState();
}

class _AddNewSessionViewState extends State<AddNewSessionView> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('New Workout'),
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                autocorrect: false,
                controller: _searchController,
                decoration: InputDecoration(
                  fillColor: Colors.white10,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.all(10.0),
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Enter Workout Name',
                ),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
