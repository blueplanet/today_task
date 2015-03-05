angular.module('TodayTaskApp').controller "TodayTasksCtrl", ($scope, Task) ->

  $scope.init = ->
    @taskService = new Task()
    $scope.tasks = @taskService.find()

  $scope.addTask = (taskName) ->
    task = { 'name': taskName }

    $scope.tasks.unshift(task)

    $scope.taskName = ''

  $scope.deleteTask = (task) ->
    $scope.tasks.splice($scope.tasks.indexOf(task), 1)
