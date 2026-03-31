import 'package:flutter/material.dart';
import 'package:portafolio_carlos/views/projects/github_text_button.dart';
import 'package:portafolio_carlos/views/projects/project_list_view.dart';
import 'package:portafolio_carlos/widgets/sticky_header_view.dart';
import 'package:sticky_headers/sticky_headers.dart';


class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return StickyHeader(
      header: const StickyHeaderView(
        title: 'Proyectos',
      ),
      content: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
        child: Container(
          color: Theme.of(context).colorScheme.surface,
          key: const GlobalObjectKey('project'),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProjectListView(),
              SizedBox(
                height: 10,
              ),
              GithubTextButton(),
            ],
          ),
        ),
      ),
    );
  }
}