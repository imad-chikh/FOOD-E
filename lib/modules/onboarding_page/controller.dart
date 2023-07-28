import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();

  final List<OnBoardModel> onBoardData = [
    const OnBoardModel(
      title: "Order  for Food",
      description:
          "Goal support your motivation and inspire you to work harder",
      imgUrl: "assets/images/weight.png",
    ),
    const OnBoardModel(
      title: "Easy Payment",
      description:
          "Analyse personal result with detailed chart and numerical values",
      imgUrl: 'assets/images/graph.png',
    ),
    const OnBoardModel(
      title: "Fast Delivery",
      description:
          "Take before and after photos to visualize progress and get the shape that you dream about",
      imgUrl: 'assets/images/phone.png',
    ),
  ];

//on next tap function
  void onNextTap(OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      //print("nextButton pressed");
    }
  }
}
