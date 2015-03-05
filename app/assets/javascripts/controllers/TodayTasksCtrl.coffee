angular.module('TodayTaskApp').controller "TodayTasksCtrl", ($scope) ->

  $scope.init = ->
    $scope.tasks = [
      { 'name': 'task1', completed: false },
      { 'name': 'task2', completed: false },
      { 'name': 'task3', completed: false }
    ]

  $scope.addTask = (taskName) ->
    task = { 'name': taskName }

    $scope.tasks.unshift(task)

    $scope.taskName = ''

  $scope.deleteTask = (task) ->
    $scope.tasks.splice($scope.tasks.indexOf(task), 1)
