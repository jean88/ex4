/* Code is based on dartlero_example
 * 
 * Author : Dzenan Ridjanovic
 * Source : https://github.com/dzenanr/dartlero_example.git
 */

import 'package:unittest/unittest.dart';
import 'package:dartlero/dartlero.dart';
import 'package:ex4/ex4.dart';

testTasks(Tasks tasks) {
  group("Testing tasks", () {
    setUp(() {
      var taskCount = 0;
      expect(tasks.length, equals(taskCount));

      var design = new Task();
      expect(design, isNotNull);
      design.name = 'Backbone.js';
      design.description = 'Backbone.js gives structure to web applications by providing models with key-value binding and custom events, collections with a rich API of enumerable functions, views with declarative event handling, and connects it all to your existing API over a RESTful JSON interface';
      design.architectureExample = 'https://github.com/tastejs/todomvc/tree/gh-pages/architecture-examples/backbone';
      design.toDo = 'tester la solution';
      tasks.add(design);
      expect(tasks.length, equals(++taskCount));

      var prototype = new Task();
      expect(prototype, isNotNull);
      prototype.name = 'angularJS';
      prototype.description = 'HTML is great for declaring static documents, but it falters when we try to use it for declaring dynamic views in web-applications. AngularJS lets you extend HTML vocabulary for your application. The resulting environment is extraordinarily expressive, readable, and quick to develop.';
      prototype.architectureExample = 'https://github.com/tastejs/todomvc/tree/gh-pages/architecture-examples/angularjs';
      prototype.toDo = 'tester la solution';
      tasks.add(prototype);
      expect(tasks.length, equals(++taskCount));

      var production = new Task();
      expect(production, isNotNull);
      production.name = 'Ember.js';
      production.description = 'A framework for creating ambitious web applications';
      production.architectureExample = 'https://github.com/tastejs/todomvc/tree/gh-pages/architecture-examples/emberjs';
      production.toDo = 'tester la solution';
      tasks.add(production);
      expect(tasks.length, equals(++taskCount));

         });
    tearDown(() {
      tasks.clear();
      expect(tasks.isEmpty, isTrue);
    });
    test('Add task', () {
      var task = new Task();
      expect(task, isNotNull);
      task.name = 'dojo';
      task.description = 'Dojo saves you time and scales with your development process, using web standards as its platform. It’s the toolkit experienced developers turn to for building high quality desktop and mobile web applications.';
      task.architectureExample = 'https://github.com/tastejs/todomvc/tree/gh-pages/architecture-examples/dojo';
      task.toDo = 'tester la solution';
      var added = task.add(tasks);
      expect(added, isTrue);
      tasks.display('Add task');
    });
    test('Add Task Without Data', () {
      var taskCount = tasks.length;
      var task = new Task();
      expect(task, isNotNull);
      var added = task.add(task);
      expect(added, isTrue);
      tasks.display('Add Project Without Data');
    });
    test('Add Task Not Unique', () {
      var projectCount = tasks.length;
      var task = new Task();
      expect(task, isNotNull);
      task.name = 'Backbone.js';
      var added = tasks.add(task);
      expect(added, isFalse);
      tasks.display('Add Project Not Unique');
    });
    test('Find Task by Name', () {
      var searchName = 'Backbone.js';
      var task = tasks.find(searchName);
      expect(task, isNotNull);
      expect(task.name, equals(searchName));
      task.display('Find Project by Name');
    });
    test('Select Task by Function', () {
      var programmingTasks = tasks.select((p) => p.onProgramming);
      expect(programmingTasks.isEmpty, isFalse);
      expect(programmingTasks.length, equals(2));
      programmingTasks.display('Select Tasks by Function');
    });

     });
}

initDisplayModel() {
  TacheModel taskModel = new TacheModel();
  taskModel.init();
  taskModel.display();
}

testModel() {
  TacheModel taskModel = new TacheModel();
  Tasks tasks = taskModel.Taches;
  testTasks(tasks);
}

main() {
  //initDisplayModel();
  testModel();
}
