import 'package:desktop_drop/src/drop_item.dart';
import 'package:flutter/painting.dart';

abstract class DropEvent {
  Offset location;

  DropEvent({required this.location});

  @override
  String toString() => '$runtimeType($location)';
}

class DropEnterEvent extends DropEvent {
  DropEnterEvent({required super.location});
}

class DropExitEvent extends DropEvent {
  DropExitEvent({required super.location});
}

class DropUpdateEvent extends DropEvent {
  DropUpdateEvent({required super.location});
}

class DropDoneEvent extends DropEvent {
  final List<DropItem> files;

  DropDoneEvent({
    required super.location,
    required this.files,
  });

  @override
  String toString() => '$runtimeType($location, $files)';
}
