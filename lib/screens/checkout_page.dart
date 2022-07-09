// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:restaurant_reservation_app/components/constants.dart';
import 'package:restaurant_reservation_app/components/default_button.dart';
import 'package:restaurant_reservation_app/screens/success_page.dart';
import 'package:restaurant_reservation_app/data/user_data.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                  child: Text(
                "Checkout",
                style: kPageTitleText,
              )),
              const Text(
                "Nama Pemesan",
                style: kParagraphText,
              ),
              Text(
                users[0].name,
                style: kCheckoutFormText,
              ),
              const Text(
                "Tanggal Reservasi",
                style: kParagraphText,
              ),
              Text(
                users[0].date,
                style: kCheckoutFormText,
              ),
              const Text(
                "Jam Reservasi",
                style: kParagraphText,
              ),
              Text(
                users[0].time,
                style: kCheckoutFormText,
              ),
              const Text(
                "Jumlah Orang",
                style: kParagraphText,
              ),
              Text(
                users[0].amount,
                style: kCheckoutFormText,
              ),
              const Text(
                "Kode Promo",
                style: kParagraphText,
              ),
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: kPrimaryColor),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: const Text(
                    "TOKYOCUISINE5STARS",
                    style: kCheckoutFormText,
                  )),
              const Text(
                "Total Harga",
                style: kParagraphText,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Meja Reservasi", style: kParagraphText),
                  Text("Rp. 120.000,-", style: kCheckoutFormText),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Promo", style: kParagraphText),
                  Text("- (Rp. 50.000,-)", style: kCheckoutFormText),
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Harga", style: kParagraphText),
                  Text("Rp. 70.000,-", style: kCheckoutFormText),
                ],
              ),
              Center(
                  child: Button(
                dest: SuccessPage(),
                text: "Checkout",
              ))
            ],
          ),
        ),
      ),
    );
  }
}
