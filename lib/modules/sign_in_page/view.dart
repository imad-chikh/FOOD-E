import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../common/theme/app_colors.dart';
import 'controller.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text("Login to your Account!"),

        //phone number
        SizedBox(
            height: 50.h,
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Phone Number",
                hintText: "Enter your phone number",
                border: OutlineInputBorder(),
              ),
            )),
        //password
        //sign in button
        InkWell(
            onTap: () {},
            child: Container(
                width: double.infinity,
                height: 50.h,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white),
                )))),
        //sign up button
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Don't have an account?"),
            InkWell(
                onTap: () {},
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: AppColors.primaryColor),
                ))
          ],
        )
      ]),
    )));
  }
}
