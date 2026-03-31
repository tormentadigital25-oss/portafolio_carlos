import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portafolio_carlos/constants/constants.dart';
import 'package:portafolio_carlos/controller/launch_url.dart';
import 'package:portafolio_carlos/views/contact/social_icons.dart';
import 'package:portafolio_carlos/widgets/hover_animated_widget.dart';

class ContactAtView extends StatelessWidget {
  const ContactAtView({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          Contact.headingsSecondary,
          textAlign: TextAlign.center,
          style: textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 10),
        HoverAnimatedWidget(
          onTap: () {
            sendEmail();
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Icon(Icons.email),
                SizedBox(width: 10),
                FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      Links.email,
                    )),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Wrap(
          alignment: WrapAlignment.center,
          spacing: 20, // Espacio horizontal entre iconos
          runSpacing: 10,
          children: [
            SocialIcons(
              icon: FontAwesomeIcons.github,
              label: 'GitHub',
              url: Links.github,
            ),
            SizedBox(width: 16),
            SocialIcons(
              icon: FontAwesomeIcons.linkedin,
              label: 'LinkedIn',
              url: Links.linkedin,
            ),
          ],
        ),
      ],
    );
  }
}
