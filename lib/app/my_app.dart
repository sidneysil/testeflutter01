import 'package:agenda_crud/app/view/contact_form.dart';
import 'package:agenda_crud/app/view/contact_list.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static const HOME = '/';
  static const CONTACT_FORM = 'contact-form';

  @override
  Widget build(BuildContext context) {
    var home = HOME;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        home: (context) => ContactList(),
        'contact-form': (context) => ContactForm()
      },
    );
  }
}
