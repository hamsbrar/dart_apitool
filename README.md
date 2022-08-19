# Dart API Tool

A tool to analyze the public API of a package and create a model of it.
This model can be stored and later compared against a new version of the package to get the needed semantic version jump.

## Installation

To install activate the tool via dart pub:
```bash
dart pub global activate dart_apitool
```

## Usage

After activation the tool is usable via
```bash
dart-apitool
```

```
A set of utilities for Package APIs

Usage: dart-apitool <command> [arguments]

Global options:
-h, --help    Print this usage information.

Available commands:
  diff      Creates a diff of 2 given packages.
  extract   Extracts the API from the given package ref.

Run "dart-apitool help <command>" for more information about a command.
```

### extract

```
Extracts the API from the given package ref.

Usage: dart-apitool extract [arguments]
-h, --help                 Print this usage information.
    --input (mandatory)    Input package ref. Package reference can be one of:
                           - directory path pointing to a package on disk
                             (e.g. /path/to/package)
                           - an extract file generated by dart-apitool
                             (e.g. packageApi.json)
                           - any package from pub
                             (e.g. pub://package_name/version)
    --output               Output file for the extracted Package API.
                           If not specified the extracted API will be printed to the console.
```

### diff

```
Creates a diff of 2 given packages.

Usage: dart-apitool diff [arguments]
-h, --help                   Print this usage information.
    --old (mandatory)        Old package reference. Package reference can be one of:
                             - directory path pointing to a package on disk
                               (e.g. /path/to/package)
                             - an extract file generated by dart-apitool
                               (e.g. packageApi.json)
                             - any package from pub
                               (e.g. pub://package_name/version)
    --new (mandatory)        New package reference. Package reference can be one of:
                             - directory path pointing to a package on disk
                               (e.g. /path/to/package)
                             - an extract file generated by dart-apitool
                               (e.g. packageApi.json)
                             - any package from pub
                               (e.g. pub://package_name/version)
    --[no-]check-versions    Determines if the version change matches the actual changes.
                             Influences tool return value.
                             (defaults to on)
```

## Limitations
It doesn't cover all potential API changes that might lead to breaking changes.

### It does not look into implementations
Imagine a class:
```dart
class MyClass<T> {
  String doSomething(T arg) {
    final castedArg = arg as SomeBaseClass;
    return castedArg.baseClassMethod();
  }
}
```
that got changed to
```dart
class MyClass<T> {
  String doSomething(T arg) {
    final castedArg = arg as SomeOtherBaseClass;
    return castedArg.otherBaseClassMethod();
  }
}
```
Changes in the implementation are not detected.

### It has no idea what a Plugin, Swift or Kotlin is
Any changes on platform-specific level are not detected.

🪛 Changing the minSdkVersion?

🪓 Updating your Podspec with breaking changes? 

`dart-apitool` won't care! 🤷

### Verdict

You have to keep your eyes 👀 open and always remember the public API! 

`dart-apitool` can help you find problematic changes on Dart API level, but it can't detect everything. 😉
