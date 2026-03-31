import 'package:flutter/material.dart';
import 'package:portafolio_carlos/widgets/intro/intro.view.dart';
import 'package:portafolio_carlos/widgets/intro/links_view.dart';


class HeadingView extends StatelessWidget {
  const HeadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Container(
        color: Theme.of(context).colorScheme.surface,
        child: const Column(
          children: [
            IntroView(),
            LinksView(),
          ],
        ),
      ),
    );
  }
}