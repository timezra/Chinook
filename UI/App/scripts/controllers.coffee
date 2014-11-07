"use strict"

angular.module("app.controllers", [])
  .controller("InfoCtrl", ["$scope", "$http", ($scope, $http) ->
    new class InfoCtrl
      constructor: ->
        $http.get("/api/info?_v=#{new Date().getTime()}")
          .success (data) ->
            $scope.info = data
  ])