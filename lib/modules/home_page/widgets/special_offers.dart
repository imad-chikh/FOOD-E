import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //text
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Special Offers"),
            TextButton(onPressed: () {}, child: const Text("See All"))
          ],
        ),
        //list of offers
        SizedBox(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  // width: 150,
                  // width: double.infinity,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      //image
                      Container(
                        height: 100,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage("assets/images/food.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      //text
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text("Food Name"),
                            Text("Food Description"),
                            Text("Food Price"),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
