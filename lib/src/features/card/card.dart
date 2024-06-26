import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String buttonText;

  CourseCard({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(imageUrl),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Expanded(
              child: Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(buttonText),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Background color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CoursesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Exclusive Courses'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Our Exclusive Courses',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('View More'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  CourseCard(
                    imageUrl: '../../../assets/img/icons/lenovo.jpg',
                    title: 'Comprehensive Curriculum',
                    description: 'tgwefgnfiguvbfivbhfivhfig',
                    buttonText: 'Get It Now',
                  ),
                  CourseCard(
                    imageUrl: '../../../assets/img/icons/lenovo.jpg',
                    title: 'Practical Learning',
                    description: 'fivbfigbiughighrighrgrg',
                    buttonText: 'Get It Now',
                  ),
                  CourseCard(
                    imageUrl: '../../../assets/img/icons/lenovo.jpg',
                    title: 'Track Records',
                    description: 'jdbdbibfidfbififfv',
                    buttonText: 'Get It Now',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
