import 'package:flutter/material.dart';
import 'package:portafolio_carlos/views/sidebar/hover_drawer_item.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HoverDrawerItem(
          label: 'Acerca de mí',
          onTap: () {
            scrollToWidget(const GlobalObjectKey('about'));
            dismissDrawer(context);
          },
        ),
        HoverDrawerItem(
          label: 'Habilidades',
          onTap: () {
            scrollToWidget(const GlobalObjectKey('skills'));
            dismissDrawer(context);
          },
        ),
        HoverDrawerItem(
          label: 'Proyectos',
          onTap: () {
            scrollToWidget(const GlobalObjectKey('project'));
            dismissDrawer(context);
          },
        ),
        // HoverDrawerItem(
        //   label: 'Experience',
        //   onTap: () {
        //     scrollToWidget(const GlobalObjectKey('experience'));
        //     dismissDrawer(context);
        //   },
        // ),
        HoverDrawerItem(
          label: 'Contáctame',
          onTap: () {
            scrollToWidget(const GlobalObjectKey('contact'));
            dismissDrawer(context);
          },
        ),
      ],
    );
  }

  void scrollToWidget(GlobalObjectKey widgetKey) async {
    final context = widgetKey.currentContext;
    if (context == null) {
      debugPrint('Null');
      return;
    }
    await Scrollable.ensureVisible(
      context,
      alignment: 0.1, // Positions the widget 30% from the top
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void dismissDrawer(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).smallerThan(TABLET)) {
      Navigator.of(context).pop();
    }
  }
}