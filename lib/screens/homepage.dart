import 'package:flutter/material.dart';
import 'package:restaurant_reservation_app/components/constants.dart';
import 'package:restaurant_reservation_app/data/restaurant_data.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 36),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("Halo, Aditya", style: kPageTitleText),
            const SizedBox(
              height: 8,
            ),
            const Text("Ingin makan dimana hari ini?"),
            const SizedBox(
              height: 48,
            ),
            TextFormField(
                decoration: const InputDecoration(
              suffixIcon: Icon(Icons.search),
              labelText: "Cari Resto",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            )),
            const SizedBox(
              height: 36,
            ),
            const Text("Resto Terpopuler",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: restaurants.length,
                separatorBuilder: ((context, index) => const SizedBox(
                      height: 16,
                    )),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    child: RestoCard(index: index),
                  );
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class RestoCard extends StatelessWidget {
  const RestoCard({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0XFF437D85),
      ),
      width: 350,
      height: 130,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(children: [
          SizedBox(
            height: 100,
            width: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                restaurants[index].image,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  restaurants[index].name,
                  style: const TextStyle(
                      fontSize: 20,
                      color: kTextColor,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  restaurants[index].place,
                  style: const TextStyle(
                      fontSize: 18,
                      color: kTextColor,
                      fontWeight: FontWeight.w500),
                ),
                Text(restaurants[index].description,
                    style: const TextStyle(
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
    );
  }
}
