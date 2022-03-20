import 'package:flutter/material.dart';
import 'package:new_project/src/home/pages/app_color_controller.dart';
import 'package:new_project/src/home/widgets/app_bar_custom/app_bar_custom.dart';
import 'package:new_project/src/home/widgets/bwolf_card/bwolf_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AppBarColorController controller = AppBarColorController();

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        controller: controller,
      ),
      floatingActionButton: BwolfCardWidget(
        onTap: controller.changeColorAppBar,
        title: "Float",
      ),
      body: Column(
        children: [
          TextField(
            controller: textEditingController,
          ),
          const SizedBox(
            height: 50,
          ),
          ValueListenableBuilder<TextEditingValue>(
              valueListenable: textEditingController,
              builder: (context, textValue, child) {
                return Text(textValue.text);
              }),
          SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width,
          ),
          BwolfCardWidget(
            onTap: () {
              print(textEditingController.text);
            },
            title: "Inner Button",
          ),
          //  ElevatedButton(onPressed: () {}, child: const Text("dasdas"))
        ],
      ),
    );
  }
}
