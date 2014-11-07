"use strict"

beforeEach(module 'app.controllers')

describe 'InfoCtrl', ->

  beforeEach inject ($rootScope, $httpBackend, $controller) ->
    @scope = $rootScope.$new()
    @httpBackend = $httpBackend
    $controller 'InfoCtrl',
      $scope: @scope

  it 'should get server info', ->
    expectedInfo = Version: "4.0", Runtime: "Mono"
    @httpBackend.whenGET(/\/api\/info\?_v=\d+/).respond expectedInfo

    @httpBackend.flush()

    expect(@scope.info).toEqual expectedInfo
