import 'package:flutter/material.dart';
import 'package:todoer/src/features/home/home.page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });

    return const Scaffold(
        backgroundColor: Colors.red,
        body: Center(
            child: Row(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
              width: 60,
              height: 60,
              child: Stack(
                children: [
                  Center(
                      child: Icon(Icons.account_circle,
                          color: Colors.white, size: 50)),
                  Center(
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      ),
                    ),
                  )
                ],
              )),
          SizedBox(width: 20),
          Text('Hello There', style: TextStyle(color: Colors.white))
        ])));
  }
}
