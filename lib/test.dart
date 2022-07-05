import 'package:flutter/material.dart';
import 'package:restaurant_reservation_app/components/constants.dart';
import 'package:restaurant_reservation_app/data/restaurant_data.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0XFF437D85),
          ),
          width: 350,
          height: 130,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  restaurants[0].image,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Japan Resto",
                      style: TextStyle(
                          fontSize: 20,
                          color: kTextColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Jakarta Selatan",
                      style: TextStyle(
                          fontSize: 18,
                          color: kTextColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Text("Restoran bintang 5 dengan tema ala Jepang",
                        style: TextStyle(
                          fontSize: 16,
                          color: kTextColor,
                          fontWeight: FontWeight.w400,
                          overflow: TextOverflow.clip,
                        ),
                        maxLines: 3),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
