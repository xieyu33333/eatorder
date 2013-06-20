root = global ? window

MenusIndexCtrl = ($scope, Menu) ->
  $scope.menus = Menu.query()
  $scope.destroy = ->
    dconfirm = confirm("Are you sure?")
    if dconfirm
      original = @menu
      @menu.destroy ->
        $scope.menus = _.without($scope.menus, original)

MenusIndexCtrl.$inject = ['$scope', 'Menu'];

MenusCreateCtrl = ($scope, $location, Menu) ->
  $scope.save = ->
    Menu.save $scope.menu, (menu) ->
      $location.path "/menus/#{menu.id}/edit"

MenusCreateCtrl.$inject = ['$scope', '$location', 'Menu'];

MenusShowCtrl = ($scope, $location, $routeParams, Menu) ->
  Menu.get
    id: $routeParams.id
  , (menu) ->
    self.original = menu
    $scope.menu = new Menu(self.original)

MenusShowCtrl.$inject = ['$scope', '$location', '$routeParams', 'Menu'];

MenusEditCtrl = ($scope, $location, $routeParams, Menu) ->
  self = this
  Menu.get
    id: $routeParams.id
  , (menu) ->
    self.original = menu
    $scope.menu = new Menu(self.original)

  $scope.isClean = ->
    angular.equals self.original, $scope.menu

  $scope.destroy = ->
    dconfirm = confirm("Are you sure?")
    if dconfirm
      $scope.menu.destroy ->
        $location.path "/menus"


  $scope.save = ->
    Menu.update $scope.menu, (menu) ->
      $location.path "/menus"

MenusEditCtrl.$inject = ['$scope', '$location', '$routeParams', 'Menu'];

# exports
root.SignUpCtrl  = SignUpCtrl
