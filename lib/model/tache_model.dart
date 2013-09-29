/* Code is based on dartlero_example
 * 
 * Author : Dzenan Ridjanovic
 * Source : https://github.com/dzenanr/dartlero_example.git
 */


part of ex4;

class TacheModel extends ConceptModel {

  static final String Tache = 'Tache';

  Map<String, ConceptEntities> newEntries() {
    var Taches = new Tasks();
    var map = new Map<String, ConceptEntities>();
    map[Tache] = Taches;
    return map;
  }

  Tasks get Taches => getEntry(Tache);

  init() {
    var design = new Task();
    design.name = 'Backbone.js';
    design.description = 'Backbone.js gives structure to web applications by providing models with key-value binding and custom events, collections with a rich API of enumerable functions, views with declarative event handling, and connects it all to your existing API over a RESTful JSON interface';
    design.architectureExample = 'https://github.com/tastejs/todomvc/tree/gh-pages/architecture-examples/backbone';
    design.toDo = 'tester la solution';
    
    Taches.add(design);

    var prototype = new Task();
    prototype.name = 'angularJS';
    prototype.description = 'HTML is great for declaring static documents, but it falters when we try to use it for declaring dynamic views in web-applications. AngularJS lets you extend HTML vocabulary for your application. The resulting environment is extraordinarily expressive, readable, and quick to develop.';
    prototype.architectureExample = 'https://github.com/tastejs/todomvc/tree/gh-pages/architecture-examples/angularjs';
    prototype.toDo = 'tester la solution';
    
    
    Taches.add(prototype);

    var production = new Task();
    production.name = 'Ember.js';
    production.description = 'A framework for creating ambitious web applications';
    production.architectureExample = 'https://github.com/tastejs/todomvc/tree/gh-pages/architecture-examples/emberjs';
    production.toDo = 'tester la solution';
    
    
    Taches.add(production);
  }

  display() {
    print('Tache Model');
    print('=============');
    Taches.display('Taches');
    print(
      '============= ============= ============= '
      '============= ============= ============= '
    );
  }

}


