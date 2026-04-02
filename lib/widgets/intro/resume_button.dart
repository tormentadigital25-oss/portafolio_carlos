import 'package:flutter/material.dart';
import 'package:portafolio_carlos/constants/constants.dart';
import 'package:portafolio_carlos/controller/launch_url.dart';


class ResumeButton extends StatelessWidget {
  const ResumeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ElevatedButton.icon(
      onPressed: () {
        launchLink(Links.resume);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      label: const Text('Ver Resumen'),
      icon: Icon(
        Icons.picture_as_pdf,
        color: colorScheme.onPrimary,
      ),
    );
  }
}