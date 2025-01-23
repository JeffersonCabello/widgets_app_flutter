import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = "buttons_screen";

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: const ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class ButtonsView extends StatelessWidget {
  const ButtonsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text("Elevated Buttons")),
            const ElevatedButton(
                onPressed: null, child: Text("Elevated Disabled")),
            ElevatedButton.icon(
              onPressed: () {},
              label: const Text("Elevated Icon"),
              icon: const Icon(Icons.access_alarm_rounded),
            ),
            FilledButton(onPressed: () {}, child: const Text("Filled")),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.adb_rounded),
                label: const Text("Filled Icon")),
            OutlinedButton(onPressed: () {}, child: const Text("Outline")),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.youtube_searched_for),
              label: const Text("Outlined Icon"),
            ),
            TextButton(onPressed: () {}, child: const Text("Text")),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.wifi_sharp),
                label: const Text("Text Icon")),
            const CustomButton(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add_home_work)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.web_asset_rounded),
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(colors.primary),
                  iconColor: WidgetStatePropertyAll(colors.onSecondary)),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "Hola Mundo",
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
