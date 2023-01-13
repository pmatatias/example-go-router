import 'package:bookstore/src/data.dart';
import 'package:bookstore/src/responsive.dart';
import 'package:bookstore/src/screens/author_details.dart';
import 'package:bookstore/src/screens/authors.dart';
import 'package:flutter/material.dart';

class AuthorLayout extends StatelessWidget {
  const AuthorLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        desktop: Row(
          children: [
            Expanded(child: AuthorsScreen()),
            Expanded(child: AuthorDetailsScreen(author: Author(1, '')))
          ],
        ),
        mobile: Column(children: []),
        tablet: Row());
  }
}
