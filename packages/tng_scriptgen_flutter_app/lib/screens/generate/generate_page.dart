import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:inject/inject.dart';
import 'package:tng_scriptgen_flutter_app/services/script_generator_api_client.dart';

@provide
class GeneratePage extends StatefulWidget {
  ScriptGeneratorApiClient _scriptGeneratorApiClient;

  GeneratePage(this._scriptGeneratorApiClient);

  @override
  State<StatefulWidget> createState() {
    return GeneratePageState(_scriptGeneratorApiClient);
  }
}

class GeneratePageState extends State<GeneratePage> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool canContinue = false;

  ScriptGeneratorApiClient _scriptGeneratorApiClient;

  GeneratePageState(this._scriptGeneratorApiClient);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Scripts')),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Text(
                  'For debugging purposes, enter the credit card num