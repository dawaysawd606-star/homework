import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
          centerTitle: true,
        ),
        body: ListView(
          children: const [
            ImageSection(),
            TitleSection(),
            ButtonSection(),
            TextSection(),
          ],
        ),
      ),
    );
  }
}

// ================= Image Section =================
class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/lake.jpg', // ضع هنا مسار صورتك
      width: double.infinity,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}

// ================= Title Section =================
class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red),
          SizedBox(width: 4),
          Text('41'),
        ],
      ),
    );
  }
}

// ================= Button Section =================
class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        ButtonColumn(icon: Icons.call, label: 'CALL'),
        ButtonColumn(icon: Icons.near_me, label: 'ROUTE'),
        ButtonColumn(icon: Icons.share, label: 'SHARE'),
      ],
    );
  }
}

class ButtonColumn extends StatelessWidget {
  final IconData icon;
  final String label;

  const ButtonColumn({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.deepPurple),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            color: Colors.deepPurple,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

// ================= Text Section =================
class TextSection extends StatelessWidget {
  const TextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. '
        'Situated 1,578 meters above sea level, it is one of the larger Alpine lakes. '
        'A gondola ride from Kandersteg, followed by a half-hour walk through pastures '
        'and pine forest, leads you to the lake, which warms to 20 degrees Celsius in '
        'the summer. Activities enjoyed here include rowing, and riding the summer '
        'toboggan run.',
        softWrap: true,
      ),
    );
  }
}
