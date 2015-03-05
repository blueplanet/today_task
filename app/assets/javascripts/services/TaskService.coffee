angular.module('TodayTaskApp').factory 'Task', ($resource, $http) ->
  class Task
    constructor: (errorHandler) ->
      @service = $resource('/api/tasks/:id', { id: '@id' }, { update: { method: 'PUT' } } )
      @errorHandler = errorHandler

    find: ->
      @service.query()

    create: (attrs) ->
      new @service(task: attrs).$save ((task) -> attrs.id = task.id), @errorHandler
      attrs

    update: (task, attrs) ->
      new @service(task: attrs).$update {id: task.id}, (-> null), @errorHandler

    delete: (task) ->
      new @service().$delete { id: task.id }, (-> null), @errorHandler
