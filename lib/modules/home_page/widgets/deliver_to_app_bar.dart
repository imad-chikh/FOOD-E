import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliverTo extends StatelessWidget {
  const DeliverTo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CircleAvatar(
            radius: 25.r,
            backgroundColor: Colors.grey,
            child: const Placeholder(),
          ),
        ),
      ],
    );
  }
}
