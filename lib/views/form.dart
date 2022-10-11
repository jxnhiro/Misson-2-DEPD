part of '../pages.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  Color darkblue = Color(0xFF0c1d37);
  Color brown = Color(0xFF37260c);
  Color light_gray = Color(0xFF727d90);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkblue,
        title: Text("Booking - Hunter x Hunter"),
      ),
    );
  }
}
