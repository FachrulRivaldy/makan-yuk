import 'package:flutter/material.dart';
import 'package:restaurant_reservation_app/components/constants.dart';
import 'package:restaurant_reservation_app/components/default_button.dart';
import 'package:restaurant_reservation_app/data/user_data.dart';
import 'package:restaurant_reservation_app/screens/homepage.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Success",
                style: kPageTitleText,
              ),
              SizedBox(
                height: 15,
              ),
              SuccessCard(),
            ],
          ),
        ),
        floatingActionButton: const Button(
          dest: Homepage(),
          text: "Back To Home",
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

class SuccessCard extends StatelessWidget {
  const SuccessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          border: Border.all(color: kPrimaryColor),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      width: 350,
      height: 250,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "Nama",
                style: kParagraphText,
              ),
              Text(
                users[0].name,
                style: kCheckoutFormText,
              ),
              const Text(
                "Jam",
                style: kParagraphText,
              ),
              Text(
                users[0].time,
                style: kCheckoutFormText,
              ),
              const Text(
                "Total Harga",
                style: kParagraphText,
              ),
            ],
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "Tanggal",
                style: kParagraphText,
              ),
              Text(
                users[0].date,
                style: kCheckoutFormText,
              ),
              const Text(
                "Jumlah",
                style: kParagraphText,
              ),
              Text(
                users[0].amount,
                style: kCheckoutFormText,
              ),
              const Text(
                "Rp. 70.000,-",
                style: kParagraphText,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
