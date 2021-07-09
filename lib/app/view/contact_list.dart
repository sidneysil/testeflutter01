import 'package:agenda_crud/app/database/sqlite/connection.dart';
import 'package:agenda_crud/app/my_app.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class ContactList extends StatelessWidget {
  // todas classes imutaveis(StatelessWidget) devemos usar atributos com valores finais(final)
  final lista = [
    {
      'nome': 'Sidney',
      'telefone': '(21)972663965',
      'avatar':
          'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png'
    },
    {
      'nome': 'Marcelo',
      'telefone': '(21)998456789',
      'avatar':
          'https://cdn.pixabay.com/photo/2021/06/18/07/19/man-6345374_960_720.png'
    },
    {
      'nome': 'Raimundo',
      'telefone': '(21)996485548',
      'avatar':
          'https://cdn.pixabay.com/photo/2021/06/07/06/42/man-6317130_960_720.png'
    },
  ];

  Future<List<Map<String, dynamic>>> _buscar() async {
    Database db = await Connection.get();
    return db.query('contact');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _buscar(),
        builder: (context, futuro) {
          if (futuro.hasData) {
            var lista = futuro.data;
            return Scaffold(
              appBar: AppBar(
                title: Text('Lista de Contatos'),
                actions: [
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      Navigator.of(context).pushNamed(MyApp.CONTACT_FORM);
                    },
                  )
                ],
              ),
              body: ListView.builder(
                itemCount: lista.length,
                itemBuilder: (context, i) {
                  var contato = lista[i];
                  var avatar = CircleAvatar(
                    backgroundImage: NetworkImage(contato['url_avatar']),
                  );
                  return ListTile(
                    leading: avatar,
                    title: Text(contato['nome']),
                    subtitle: Text(contato['telefone']),
                    trailing: Container(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: null,
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: null,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            return Scaffold();
          }
        });
  }
}
