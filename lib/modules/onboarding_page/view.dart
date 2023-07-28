import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:get/get.dart';

import 'controller.dart';

class OnboardingPage extends GetView<OnboardingController> {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('OnboardingPage')),
        body: Scaffold(
          body: OnBoard(
            pageController: controller.pageController,
            // Either Provide onSkip Callback or skipButton Widget to handle skip state
            onSkip: () {
              // print('skipped');
            },
            // Either Provide onDone Callback or nextButton Widget to handle done state
            onDone: () {
              // print('done tapped');
            },
            onBoardData: controller.onBoardData,
            titleStyles: const TextStyle(
              color: Colors.deepOrange,
              fontSize: 18,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.15,
            ),
            descriptionStyles: TextStyle(
              fontSize: 16,
              color: Colors.brown.shade300,
            ),
            pageIndicatorStyle: const PageIndicatorStyle(
              width: 100,
              inactiveColor: Colors.deepOrangeAccent,
              activeColor: Colors.deepOrange,
              inactiveSize: Size(8, 8),
              activeSize: Size(12, 12),
            ),
            // Either Provide onSkip Callback or skipButton Widget to handle skip state
            skipButton: TextButton(
              onPressed: () {
                // print('skipButton pressed');
              },
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.deepOrangeAccent),
              ),
            ),

            // Either Provide onDone Callback or nextButton Widget to handle done state
            nextButton: OnBoardConsumer(
              builder: (context, ref, child) {
                final state = ref.watch(onBoardStateProvider);
                return InkWell(
                  onTap: () => controller.onNextTap(state),
                  child: Container(
                    width: 230,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(
                        colors: [Colors.redAccent, Colors.deepOrangeAccent],
                      ),
                    ),
                    child: Text(
                      state.isLastPage ? "Done" : "Next",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
