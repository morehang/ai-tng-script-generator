import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:tng_scriptgen_flutter_app/screens/generate/generate_page.dart';
import 'package:tng_scriptgen_flutter_app/screens/home/home_page.dart';
import 'package:tng_scriptgen_flutter_app/screens/login/login_page.dart';
import 'package:tng_scriptgen_flutter_app/screens/script-list/script_list_page.dart';
import 'package:tng_scriptgen_flutter_app/screens/show_script/show_script_page.dart';
import 'package:tng_scriptgen_flutter_app/services/script_generator_api_client.dart';
import 'package:tng_scriptgen_flutter_app/services/script_repository.dart';
import 'package:tng_scriptgen_flutter_app/services/script_sync_service.dart';
import 'main.inject.dart' as g;

@Injector()
abstract class Main {
  @provide
  MyApp get app;
  static Future<Main> create(
      ) async {
    return await g.Main$Injector.create();
  }
}

void main() async {
  var container = await Main.create();
  runApp(container.app);
}

@provide
class MyApp extends StatelessWidget {

  final ScriptGeneratorApiClient _scriptGeneratorApiClient;
  final ScriptSyncService _scriptSyncService;
  final ScriptRepository _scriptRepository;


  MyApp(this._scriptRepository, this._scriptSyncService, this._scriptGeneratorApiClient) {
    this._scriptRepository.initialize();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(_scriptGeneratorApiClient),
      routes: <String, WidgetBuilder>{
        // Set named routes
        '/login': (BuildContext context) => LoginPage(_scriptGeneratorApiClient),
        '/home': (BuildContext context) => HomePage(),
        '/generate': (BuildContext context) => GeneratePage(_scriptGeneratorApiClient),
        '/script-list': (BuildContext context) => ScriptListPage(this._scriptRepository, this._scriptSyncService),
        '/script': (BuildContext context) => ShowScriptPage(this._scriptRepository),
      },
    );
  }
}

/*

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() async {
    debugPrint('\n\n 🍎 🍎 🍎  setting remote MongoDB Stitch App ID ....');
  