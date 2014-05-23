TodoCtrl = ($scope) ->
    $scope.check = ->
        #check form is valid
        0 < +$scope.a - (+$scope.b + +$scope.c)


    $scope.valid_input = (bool) ->
        #actions to take if valid/invalid
        #potentially seperate out each input into own watch
        if bool #valid input
            $("#btn-submit").removeAttr('disabled')
            return true
        else #invalid input
            $("#btn-submit").attr('disabled', 'disabled')
            return false

    $scope.calculate = ->
        # function called on click
        $("#return").text(Math.sqrt(+$scope.a - (+$scope.b + +$scope.c)))

angular.module("todoApp", [])
    .controller("TodoCtrl", TodoCtrl)


