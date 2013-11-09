root = global ? window


UsersIndexCtrl = ($scope, User) ->
  $scope.users = User.query()
  $scope.destroy = ->
    dconfirm = confirm("Are you sure?")
    if dconfirm
      original = @user
      @user.destroy ->
        $scope.users = _.without($scope.users, original)

UsersIndexCtrl.$inject = ['$scope', 'User'];



root.UsersIndexCtrl   = UsersIndexCtrl 