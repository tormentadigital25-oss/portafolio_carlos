import 'package:flutter/material.dart';
import 'package:portafolio_carlos/constants/projects.dart';
import 'package:portafolio_carlos/controller/launch_url.dart';
import 'package:portafolio_carlos/views/projects/project_list_items.dart';
import 'package:portafolio_carlos/widgets/card_view.dart';
import 'package:portafolio_carlos/widgets/hover_animated_card.dart';






class ProjectListView extends StatelessWidget {
  const ProjectListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: projects.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return HoverAnimatedCard(
            child: CardView(
              onTap: () {
                launchLink(projects[index].link);
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ProjectListItems(index: index),
              ),
            ),
          );
        });
  }
}