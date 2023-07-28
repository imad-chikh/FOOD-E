import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../common/theme/app_colors.dart';
import '../home_page/view.dart';
import 'controller.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          //logo
          SvgPicture.asset(
            "assets/images/logo.svg",
            height: 100.h,
          ),
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
          SizedBox(
              height: 50.h,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your password",
                  border: OutlineInputBorder(),
                ),
              )),
          //forgot password
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                  onTap: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: AppColors.primaryColor),
                  )),
            ],
          ),
          //password
          //sign in button
          InkWell(
              onTap: () {
                Get.to(() => const HomePage());
              },
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
          //divider
          const Row(children: [
            Expanded(child: Divider()),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("Sign In  with"),
            ),
            Expanded(child: Divider()),
          ]),
          //social media buttons

          Row(
            children: [
              Expanded(
                  child: InkWell(
                      onTap: () {},
                      child: Container(
                          height: 50.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3))
                              ],
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset("assets/images/facebook.svg"),
                              const Text(
                                "Facebook",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ))))),
              const SizedBox(width: 10),
              Expanded(
                  child: InkWell(
                      onTap: () {},
                      child: Container(
                          height: 50.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3))
                              ],
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset("assets/images/google.svg"),
                              const Text(
                                "Google",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ))))),
            ],
          ),

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
      ),
    ));
  }
}
