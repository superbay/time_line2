#app = angular.module('Tmodule', ["Tweet"])

@TweetCtrl = ($scope, $http) -> 
  $http.get('/home/index.json').success (data) ->
    console.log(data)
    $scope.tweets = data
  #Entry = $resource('/home/index')
