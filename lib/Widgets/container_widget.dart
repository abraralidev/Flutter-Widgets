import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: 150,
            height: 150,
            // color: Colors.blue,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                // shape: BoxShape.circle,
                border: Border.all(color: Colors.red, width: 3),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(
                          0, 3) // It is use for changing position of shadow
                      ),
                ],
                gradient: const LinearGradient(colors: [
                  Colors.green,
                  Colors.blue,
                  Colors.yellow,
                ], begin: Alignment.topCenter, end: Alignment.centerRight),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1680003935289-0c8d65e1ae30?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"))),
            constraints: const BoxConstraints.expand(width: 200, height: 200),
            transform: Matrix4.rotationZ(20),
            transformAlignment: Alignment.center,
            child: const Text(
              "Hello World",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
