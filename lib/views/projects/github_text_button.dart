import 'package:flutter/material.dart';
import 'package:portafolio_carlos/constants/constants.dart';
import 'package:portafolio_carlos/controller/launch_url.dart';
import 'package:portafolio_carlos/widgets/hover_animated_widget.dart';

class GithubTextButton extends StatelessWidget {
  const GithubTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return HoverAnimatedWidget(
      defaultTextStyle: textTheme.bodyLarge?.copyWith(
        color: colorScheme.onSurface,
      ),
      hoverTextStyle: textTheme.bodyLarge?.copyWith(
        color: colorScheme.primary,
      ),
      onTap: () {
        launchLink(Links.githubRepository);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
                child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'View Github Repository',
                      style: textTheme.bodyLarge?.copyWith(
                        color: colorScheme.onSurface,
                        fontWeight: FontWeight.w500,
                      ),
                    ))),
            const SizedBox(width: 8),
            const Icon(Icons.outbound_outlined,size: 20)
          ],
        ),
      ),
    );
  }
}
