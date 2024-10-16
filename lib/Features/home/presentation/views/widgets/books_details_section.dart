import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'featured_list_view_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .2),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 43),
        const Text('The Jungle Book', style: Styles.textStyle30),
        const SizedBox(height: 6),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
            color: Colors.white.withOpacity(.7),
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 18),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 37),
        const BooksAction(),
      ],
    );
  }
}
