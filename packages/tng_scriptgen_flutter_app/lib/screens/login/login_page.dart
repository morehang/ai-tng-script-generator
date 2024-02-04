
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';
import 'package:tng_scriptgen_flutter_app/services/script_generator_api_client.dart';

@provide
class LoginPage extends StatefulWidget {
  ScriptGeneratorApiClient _scriptGeneratorApiClient;

  LoginPage(this._scriptGeneratorApiClient);

  static String tag = 'login-page';

  @override
  LoginPageState createState() => new LoginPageState(_scriptGeneratorApiClient);