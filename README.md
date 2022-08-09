# sliver_list_separator

[![pub package](https://img.shields.io/pub/v/sliver_list_separator.svg)](https://pub.dev/packages/sliver_list_separator)

A Flutter widget which creates a Sliver List with custom separator.

![](https://raw.githubusercontent.com/Flerma98/flutter_sliver_list_separator/master/readme_assets/example.gif)

## Getting Started

### Installing

In your Flutter project, add the package to your dependencies

`flutter pub add sliver_list_separator`

or

```yml
dependencies:
  ...
  sliver_list_separator: ^1.0.1
  ...
```

## Usage Example

A complete example on how to use this widget can be found in
the [example directory](https://github.com/Flerma98/flutter_sliver_list_separator/tree/master/example)
. But the basics are:

### Import the package

```dart
import 'package:sliver_list_separator/sliver_list_separator.dart';
```

### Create or use a list of items to display

```dart
final items = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];
```

### Create the widget

```dart
SliverListSeparator(
  builder: (context, index) {
    return ListTile(title: Text(items[index]));
  },
  separator: const Divider(),
  childCount: items.length
)
```