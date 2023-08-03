import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          // SizedBox(height: ),
          CustomAppBar(title: "Edit Note", icon: Icons.check),
          SizedBox(height: 30),
          CustomTextField(hint: "title"),
          SizedBox(height: 24),
          CustomTextField(hint: "content",maxLines: 5),
        ],
      ),
    );
  }
}
