root = global ? window

angular.module("menus", ["ngResource"]).factory "Menu", ['$resource', ($resource) ->
  Menu = $resource("/menus/:id",
    id: "@id"
  ,
    update:
      method: "PUT"

    destroy:
      method: "DELETE"
  )
  Menu::destroy = (cb) ->
    Menu.remove
      id: @id
    , cb

  Menu
]
root.angular = angular
