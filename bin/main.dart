// ignore_for_file: avoid_print

import 'package:args/args.dart';
import 'package:dart_apitool/model/class_declaration.dart';
import 'package:dart_apitool/model/executable_declaration.dart';
import 'package:dart_apitool/model/field_declaration.dart';
import 'package:dart_apitool/project_api_analyzer.dart';

void main(List<String> arguments) async {
  final listArgParser = ArgParser();

  final parser = ArgParser();
  final listCommandParser = parser.addCommand('list', listArgParser);
  listCommandParser.addOption('root',
      abbr: 'r', mandatory: true, help: 'root directory');

  final argResults = parser.parse(arguments);
  final cmd = argResults.command;
  if (cmd != null) {
    switch (cmd.name) {
      case 'list':
        await _handleListCommand(cmd);
        break;
      default:
    }
  }
}

Future _handleListCommand(ArgResults cmd) async {
  final String rootDir = cmd['root'];
  final analyzer = ProjectApiAnalyzer(projectPath: rootDir);
  final projectApi = await analyzer.analyze();

  print('----- Project root:');
  _printFields(projectApi.fieldDeclarations);
  _printExecutables(projectApi.executableDeclarations);
  _printClasses(projectApi.classDeclarations);
}

void _printClasses(List<ClassDeclatation> classDeclarations) {
  print('** Classes:');
  for (final cd in classDeclarations) {
    print('-- ${cd.signature}');
    _printFields(cd.fieldDeclarations, indent: '    ');
    _printExecutables(cd.executableDeclarations, indent: '    ');
  }
}

void _printExecutables(
  List<ExecutableDeclaration> executableDeclarations, {
  String indent = '',
}) {
  print('$indent** Executables:');
  for (final exd in executableDeclarations) {
    print('  $indent${exd.signature}');
  }
}

void _printFields(
  List<FieldDeclaration> fieldDeclarations, {
  String indent = '',
}) {
  print('$indent** Fields:');
  for (final fd in fieldDeclarations) {
    print('  $indent${fd.signature}');
  }
}
