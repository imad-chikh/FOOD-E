import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NearestResturant extends StatelessWidget {
  const NearestResturant({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Nearest Resturants"),
            TextButton(onPressed: () {}, child: const Text("View More"))
          ],
        ),
        SizedBox(
          height: 170.h,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: 7,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 170.h,
                width: 100.h,
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Column(children: [
                  Placeholder(
                    fallbackHeight: 80.h,
                  ),
                   Text("Resturant Name"),
                ]),
              );
            },
          ),
        ),
      ],
    );
  }
}
