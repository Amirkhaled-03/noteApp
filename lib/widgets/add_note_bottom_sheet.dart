import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

import 'custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25),
            CustomTextField(hint: "Title"),
            SizedBox(height: 25),
            CustomTextField(hint: "Content", maxLines: 5),
            SizedBox(height: 55),
            CustomButton(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

