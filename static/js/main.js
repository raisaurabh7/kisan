var app = angular.module('myApp', []);
 app.config(function($interpolateProvider) {
    $interpolateProvider.startSymbol('[[');
    $interpolateProvider.endSymbol(']]');
  });
app.controller('myCtrl', function($scope, $http) {

      $http({
	    method : "GET",
	    url : "http://127.0.0.1:8000/api/orders/"
	  }).then(function mySuccess(response) {
	      $scope.myData = response.data;
	    }, function myError(response) {
	      $scope.myData = response.statusText;
	  });
});