import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_app/color_setting_button.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Text Example"),),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ColorSettingButton(),
          ],
        ),
      ),
    );
  }
}

//
// final currentColorProvider = StateProvider<Color>((ref) => Colors.blue);
//
// class ColorSettingButton extends ConsumerWidget{
//   const ColorSettingButton({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final color = ref.watch(currentColorProvider.state);
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(
//           Icons.square,
//           size: 150.0,
//           color: color.state,
//         ),
//         const SizedBox(width: 30.0,),
//         ElevatedButton(
//           onPressed: () {
//             showDialog(context: context, builder: (_){
//               return ColorSettingDialog();
//             });
//           },
//           child: const Icon(Icons.color_lens),
//         ),
//       ],
//     );
//   }
// }
//
//
// class ColorSettingDialog extends ConsumerWidget {
//   ColorSettingDialog({Key? key}) : super(key: key);
//
//   final showDetailModeProvider = StateProvider<bool>((ref) => false);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final color = ref.watch(currentColorProvider.state);
//     final showDetail = ref.watch(showDetailModeProvider.state);
//     return AlertDialog(
//       buttonPadding: const EdgeInsets.fromLTRB(0, 0, 30, 30),
//       title: const Text("表示色を選択してください"),
//       content: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Visibility(
//               visible: !showDetail.state,
//               child: BlockPicker(
//                 pickerColor: color.state,
//                 onColorChanged: ((Color selectedColor) => color.state = selectedColor),
//               ),
//             ),
//             Visibility(
//               visible: showDetail.state,
//               child: ColorPicker(
//                 pickerColor: color.state,
//                 onColorChanged: ((Color selectedColor) => color.state = selectedColor),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 20.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   const Text("色表示　詳細モード："),
//                   Checkbox(
//                     value: showDetail.state,
//                     onChanged: (boolean) {
//                       showDetail.state = !showDetail.state;
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       actions: [
//         ElevatedButton(
//           onPressed: (){
//             Navigator.of(context).pop();
//           },
//           child: const Text("設定"),
//         ),
//       ],
//     );
//   }
// }
