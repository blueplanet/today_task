angular.module('TodayTaskApp').factory 'Task', ($resource, $http) ->
  class Task
    constructor: (errorHandler) ->
      @service = $resource('/api/tasks', { id: '@id' }, { update: { method: 'PUT' } } )
      @errorHandler = errorHandler

    find: ->
      @service.query()
