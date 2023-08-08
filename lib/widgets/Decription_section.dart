import 'package:flutter/material.dart';

class DescripttionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Column(
        children: [
           Text(
            'Lorem Ipsum is simply dummy text of the printing and '
            'typesetting industry.Lorem Ipsum has been the industrys standard dummy text ever since '
            'the 1500s,when an unknown printer took a galley of type and scrambled it to make a type specimen book. ',
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 10),
          buildRow(context, 'Course Length :', Icons.timer, '29 Hours'),
          const SizedBox(height: 10),
          buildRow(context, 'Rating :', Icons.star, '4.5'),
        ],
      ),
    );
  }

  Row buildRow(
      BuildContext context, String title, IconData icons, String subTitle) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Icon(
          icons,
          color: Theme.of(context).colorScheme.secondary,
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        )
      ],
    );
  }
}
