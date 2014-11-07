"use strict"

angular.module("app", ["ui.router", "app.controllers", "app.directives", "app.filters", "app.services", "app.templates"])
  .config([
    "$stateProvider"
    "$urlRouterProvider"
    ($stateProvider, $urlRouterProvider) ->
      $urlRouterProvider.otherwise "/info"
      $stateProvider.state "info",
        url: "/info"
        templateUrl: "Content/partials/info.html"
  ])