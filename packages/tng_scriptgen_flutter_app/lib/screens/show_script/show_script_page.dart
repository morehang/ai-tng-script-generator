import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:tng_scriptgen_flutter_app/services/script_repository.dart';
import 'package:tng_scriptgen_flutter_app/services/script_sync_service.dart';

@provide
class ShowScriptPage extends StatefulWidget {

  ScriptRepository _scriptRepository;
  ShowScriptPage(this._scriptRepository);

  @override
  ShowScriptPageState createState() => ShowScriptPageState(this._scriptRepository);

}


class ShowScriptPageState extends State<ShowScriptPage> {

  String _scriptText = '';
  String _scriptTitle = "";
  ScriptRepository _scriptRepository;

  ShowScriptPageState(this._scriptRepository);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(this._scriptTitle),
      ),
      body: SingleChildScrollView(
        child: Center(
     