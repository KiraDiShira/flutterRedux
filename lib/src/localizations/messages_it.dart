// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = MessageLookup();

// ignore: unused_element
final _keepAnalysisHappy = Intl.defaultLocale;

// ignore: non_constant_identifier_names
typedef MessageIfAbsent(String message_str, List args);

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'it';

  static m0(task) => "Deleted \"${task}\"";

  final messages = _notInlinedMessages(_notInlinedMessages);

  static _notInlinedMessages(_) => {
        "activeTodos": MessageLookupByLibrary.simpleMessage("It - Active Todos"),
        "addTodo": MessageLookupByLibrary.simpleMessage("It - Add Todo"),
        "cancel": MessageLookupByLibrary.simpleMessage("It - Cancel"),
        "clearCompleted":
            MessageLookupByLibrary.simpleMessage("It - Clear completed"),
        "completedTodos":
            MessageLookupByLibrary.simpleMessage("It - Completed Todos"),
        "delete": MessageLookupByLibrary.simpleMessage("It - Delete"),
        "deleteTodo": MessageLookupByLibrary.simpleMessage("It - Delete Todo"),
        "deleteTodoConfirmation":
            MessageLookupByLibrary.simpleMessage("It - Delete this todo?"),
        "editTodo": MessageLookupByLibrary.simpleMessage("It - Edit Todo"),
        "emptyTodoError":
            MessageLookupByLibrary.simpleMessage("It - Please enter some text"),
        "filterTodos": MessageLookupByLibrary.simpleMessage("It - Filter Todos"),
        "markAllComplete":
            MessageLookupByLibrary.simpleMessage("It - Mark all complete"),
        "markAllIncomplete":
            MessageLookupByLibrary.simpleMessage("It - Mark all incomplete"),
        "newTodoHint":
            MessageLookupByLibrary.simpleMessage("It - What needs to be done?"),
        "notesHint":
            MessageLookupByLibrary.simpleMessage("It - Additional Notes..."),
        "saveChanges": MessageLookupByLibrary.simpleMessage("It - Save changes"),
        "showActive": MessageLookupByLibrary.simpleMessage("It - Show Active"),
        "showAll": MessageLookupByLibrary.simpleMessage("It - Show All"),
        "showCompleted": MessageLookupByLibrary.simpleMessage("It - Show Completed"),
        "stats": MessageLookupByLibrary.simpleMessage("It - Stats"),
        "todoDeleted": m0,
        "todoDetails": MessageLookupByLibrary.simpleMessage("It - Todo Details"),
        "todos": MessageLookupByLibrary.simpleMessage("It - Todos"),
        "undo": MessageLookupByLibrary.simpleMessage("It - Undo")
      };
}
