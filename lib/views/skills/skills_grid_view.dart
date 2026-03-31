import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart' show Brand;
import 'package:portafolio_carlos/constants/skills.dart';
import 'package:portafolio_carlos/views/skills/hover_scaling_card.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SkillsGridView extends StatelessWidget {
  const SkillsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return ResponsiveGridView.builder(
      itemCount: skills.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const ResponsiveGridDelegate(
        maxCrossAxisExtent: 160,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1,
      ),
      // maxRowCount: 1,
      itemBuilder: (context, index) {
        return HoverScalingCard(
          child: Card(
            color: colorScheme.surface,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 4, // Subtle elevation for depth
            shadowColor: colorScheme.shadow.withOpacity(0.2), // Shadow color
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  skills[index].brandIcon != null
                      ? Brand(
                          skills[index]
                              .brandIcon!, // Prioridad 1: Siempre intenta usar el Icono
                          size: 40,
                        )
                      : (skills[index].imagePath != null
                          ? Image.asset(
                              skills[index]
                                  .imagePath!, // Prioridad 2: Si no hay icono, usa la imagen
                              width: 40,
                              height: 40,
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(
                                Icons.image_not_supported,
                                size: 40,
                                color: Colors.grey,
                              ),
                            )
                          : const SizedBox(
                              // Fallback: Si no hay nada, no dibujes nada (o pon un icono genérico)
                              width: 45,
                              height: 45,
                              child: Icon(Icons.code, size: 45),
                            )),
                  const SizedBox(height: 4),
                  Flexible(
                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          skills[index].name,
                          overflow: TextOverflow.visible,
                          style: textTheme.bodyMedium?.copyWith(
                              color: colorScheme.onSurface, // Text color
                              fontWeight: FontWeight.w500,
                              overflow: TextOverflow.visible),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
