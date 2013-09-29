/* Code is based on dartlero_example
 * 
 * Author : Dzenan Ridjanovic
 * Source : https://github.com/dzenanr/dartlero_example.git
 */

part of ex4;

class Task extends ConceptEntity<Task> {

  String applicationName;
  String description;
  Uri architectureExample;
  String toDo;

  Task newEntity() => new Task();

  Map<String, Object> toJson() {
       
    Map<String, Object> entityMap = super.toJson();
    entityMap['applicationName'] = applicationName;
    entityMap['description'] = description;
    entityMap['architectureExample'] = architectureExample;
    entityMap['toDo'] = toDo;
     
    return entityMap;
  }

  fromJson(Map<String, Object> entityMap) {
        
    super.fromJson(entityMap);
    applicationName = entityMap['applicationName'];
    description = entityMap['description'];
    architectureExample = entityMap['architectureExample'];
    toDo = entityMap['toDo'];
        
  }

}

class Tasks extends ConceptEntities<Task> {

  Tasks newEntities() => new Tasks();
  Task newEntity() => new Task();

}
