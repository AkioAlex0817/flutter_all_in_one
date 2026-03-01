import 'package:flutter/material.dart';
import 'package:offline/pages/main_page/status/main_page_status.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainPageStatus>(
      create: (_) => MainPageStatus(context),
      builder: (context, __) {
        final status = context.watch<MainPageStatus>();
        return Scaffold(
          appBar: AppBar(
            title: Text("Provider Sample"),
          ),
          body: SafeArea(
            child: Container(
              constraints: BoxConstraints.expand(),
              color: Colors.red,
            ),
          ),
        );
      },
    );
  }
}
