angular.module('TodayTaskApp').controller "TodayTasksCtrl", ($scope, Task) ->

  $scope.init = ->
    @taskService = new Task(serverErrorHandler)
    $scope.tasks = @taskService.find()

  $scope.addTask = (taskName) ->
    task = @taskService.create(name: taskName, completed: false)
    $scope.tasks.unshift(task)

    $scope.taskName = ''

  $scope.toggleTask = (task) ->
    @taskService.update(task, completed: task.completed)

  $scope.deleteTask = (task) ->
    @taskService.delete(task)
    $scope.tasks.splice($scope.tasks.indexOf(task), 1)

  serverErrorHandler = ->
    alert("サーバーでエラーが発生しました。画面を更新し、もう一度試してください。")
