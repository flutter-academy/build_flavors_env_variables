import 'package:flutter/material.dart';
import 'package:flutter_build_env/config.dart';
import 'package:flutter_build_env/env/prod.dart';
import 'package:flutter_build_env/main.dart';

void main() => runApp(
    new ConfigWrapper(config: Config.fromJson(config), child: new MyApp()));
