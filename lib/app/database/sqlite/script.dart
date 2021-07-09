final createTable = '''
CREATE TABLE contact(
    id INT PRIMARY KEY
    , nome VARCHAR(200) NOT NULL
    , telefone CHAR(16) NOT NULL
    , email VARCHAR(150) NOT NULL
    , url_avatar VARCHAR(300) NOT NULL 
  )
''';

final insert1 = ''' 
INSERT INTO contact(nome, telefone, email, url_avatar)
VALUES('Sidney','(21)972663965','sidneysil01@gmail.com', 'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png')

''';

final insert2 = ''' 
INSERT INTO contact(nome, telefone, email, url_avatar)
VALUES('Marcelo','(21)998456789','marcelo@gmail.com', 'https://cdn.pixabay.com/photo/2021/06/18/07/19/man-6345374_960_720.png')

''';

final insert3 = ''' 
INSERT INTO contact(nome, telefone, email, url_avatar)
VALUES('Raimundo','(21)996485548','raimundo@gmail.com', 'https://cdn.pixabay.com/photo/2021/06/07/06/42/man-6317130_960_720.png')

''';
