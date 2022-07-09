import 'package:flutter/material.dart';
import 'package:restaurant_reservation_app/components/constants.dart';
import 'package:restaurant_reservation_app/data/restaurant_data.dart';
import 'package:restaurant_reservation_app/components/default_button.dart';
import 'package:restaurant_reservation_app/screens/checkout_page.dart';
import 'package:restaurant_reservation_app/screens/homepage.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool fav = false;

  void _onTap() {
    setState(() {
      if (fav == false) {
        fav = true;
      } else {
        fav = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: Image.asset(
                restaurants[0].image,
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        restaurants[0].name,
                        style: kPageTitleText,
                      ),
                      InkWell(
                        onTap: _onTap,
                        child: Icon(
                          Icons.favorite,
                          color: fav ? Colors.red : Colors.grey,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.location_pin),
                      Text(
                        restaurants[0].place,
                        style: kParagraphText,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star),
                      Text(
                        restaurants[0].rating.toString(),
                        style: kParagraphText,
                      )
                    ],
                  ),
                  Text(
                    restaurants[0].detail,
                    textAlign: TextAlign.justify,
                    style: kParagraphText,
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: const Button(
          text: "Pesan Disini",
          dest: CheckoutPage(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
