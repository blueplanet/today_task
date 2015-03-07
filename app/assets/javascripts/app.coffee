app = angular.module('TodayTaskApp', ['ui.bootstrap', 'ngResource', 'xeditable'])

app.config ($httpProvider) ->
  authToken = $("meta[name=\"csrf-token\"]").attr("content")
  $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken

app.run (editableOptions) ->
  editableOptions.theme = 'bs3'

$(document).on 'page:load', ->
  $('[ng-app]').each ->
    module = $(this).attr('ng-app')
    angular.bootstrap(this, [module])
