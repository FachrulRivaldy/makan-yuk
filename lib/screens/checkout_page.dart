import 'package:flutter/material.dart';
import 'package:restaurant_reservation_app/components/constants.dart';
import 'package:restaurant_reservation_app/components/default_button.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
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
              const Text(
                "Aditya Kurniawan",
                style: kCheckoutFormText,
              ),
              const Text(
                "Tanggal Reservasi",
                style: kParagraphText,
              ),
              const Text(
                "9 Juli 2022",
                style: kCheckoutFormText,
              ),
              const Text(
                "Jam Reservasi",
                style: kParagraphText,
              ),
              const Text(
                "20.00 WIB",
                style: kCheckoutFormText,
              ),
              const Text(
                "Jumlah Orang",
                style: kParagraphText,
              ),
              const Text(
                "4 Orang",
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
              // Button()
            ],
          ),
        ),
      ),
    );
  }
}
