import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:jin_jin/ui/utilities/theme_data.dart';

import '../../../ui/constants/size_config.dart';

class Editor extends StatefulWidget {
  const Editor({Key? key}) : super(key: key);

  @override
  State<Editor> createState() => _EditorState();
}

class _EditorState extends State<Editor> {
  HtmlEditorController controller = HtmlEditorController();
  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize!;
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text(
          "Compose Article",
          style: TextStyle(
              fontSize: defaultSize * 2.4,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(defaultSize * 2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HtmlEditor(
                controller: controller, //required
                htmlEditorOptions: HtmlEditorOptions(
                  hint: "Type you Text here",
                ),
                htmlToolbarOptions: HtmlToolbarOptions(
                    toolbarType: ToolbarType.nativeGrid
                ),
                otherOptions: OtherOptions(
                  height: 400,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async{
          String data = await controller.getText();
          print(data);
        },
        label: const Text('Submit'),
        icon: const Icon(Icons.check),
        backgroundColor: pinkClr,
      ),
    );
  }
}
