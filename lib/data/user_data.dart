class User {
  final String name;
  final String date;
  final String time;
  final String amount;

  const User({
    required this.name,
    required this.date,
    required this.time,
    required this.amount,
  });
}

List<User> users = const [
  User(
    name: "Aditya Kurniawan",
    date: "9 Juli 2022",
    time: "20.00 WIB",
    amount: "4 Orang"
  )
];
