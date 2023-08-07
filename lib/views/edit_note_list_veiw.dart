import 'package:flutter/material.dart';
import 'package:notes_app/constanse.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_list_veiw.dart';

class EditNoteListView extends StatefulWidget {
  const EditNoteListView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteListView> createState() => _EditNoteListViewState();
}

class _EditNoteListViewState extends State<EditNoteListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kcolors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kcolors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kcolors[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: kcolors[index],
                isSelected: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
