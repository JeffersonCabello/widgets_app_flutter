import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = "snackbar_screen";

  const SnackbarScreen({super.key});

  void showCustonSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text("Hola mundo"),
      action: SnackBarAction(label: "Ok!", onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Estas Seguro?"),
        content: const Text(
            "Non laborum ipsum magna excepteur consequat. Qui incididunt ut cupidatat sit consequat incididunt dolore reprehenderit ullamco laboris. Culpa elit ea laboris ut ut veniam eiusmod. Velit ea aliquip non nisi voluptate nulla mollit excepteur labore veniam laboris in. Sunt labore dolore duis sunt officia amet tempor dolore minim ipsum ullamco. Ea est fugiat id dolore dolor ex. Consectetur anim id dolor ex deserunt consequat mollit amet qui."),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancelar")),
          FilledButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Aceptar"))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbars y Dialogos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        "Veniam Lorem laborum nisi non sit. Voluptate pariatur do labore sunt labore veniam anim aute incididunt enim. Anim laboris dolor nulla eu enim ullamco cillum duis id sunt adipisicing. Occaecat adipisicing elit laboris enim laboris tempor non consectetur aute. Labore sint magna ex ut eiusmod. Dolor ipsum deserunt ipsum est duis minim elit sit pariatur consequat incididunt officia. Ex dolor amet laboris incididunt proident ipsum culpa aute exercitation pariatur.")
                  ]);
                },
                child: const Text("Licencias Usadas")),
            const SizedBox(
              height: 10,
            ),
            FilledButton.tonal(
                onPressed: () {
                  openDialog(context);
                },
                child: const Text("Mostrar dialogo de pantalla"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Mostrar Snackbar"),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustonSnackBar(context),
      ),
    );
  }
}
