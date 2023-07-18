import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('AuthPage')),
        body: const SafeArea(child: Text('AuthController')));
  }
}
