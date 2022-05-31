import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Agregando bordes',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),

      home: MyHomePage(title: 'Mi foto'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(3, 20, 0, 0),
                child: Container(
                  width: 300,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xFFF06292),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Color(0xFFE91E63),
                      width: 3,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2, 15, 2, 25),
                    child: Text(
                      'Mendez Alvarez Jennifer Yadira',
                    ),
                  ),
                ),
              ),
              Divider(
                height: 60,
                thickness: 10,
                indent: 70,
                endIndent: 70,
                color: Color(0xFFE91E63),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                child: Container(
                  width: 165,
                  height: 165,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        'https://github.com/JenniferYadiraMendezAlvarez/imagenes/blob/main/mi%20foto.jpg?raw=true',
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Color(0xFFE91E63),
                    ),
                  ),
                ),
              ),
              Divider(
                height: 7,
                thickness: 10,
                indent: 70,
                endIndent: 70,
                color: Color(0xFFE91E63),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(3, 45, 0, 0),
                child: Container(
                  width: 300,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xFFF06292),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Color(0xFFE91E63),
                      width: 3,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 15, 2, 25),
                    child: Text(
                      'Grupo: 6-J Esp: Programacion',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
