class LunchHub.Routers.LunchDesiresRouter extends Backbone.Router
  initialize: (options) ->
    @lunchDesires = new LunchHub.Collections.LunchDesiresCollection()
    @lunchDesires.reset options.lunchDesires

  routes:
    "new"      : "newLunchDesire"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newLunchDesire: ->
    @view = new LunchHub.Views.LunchDesires.NewView(collection: @lunchDesires)
    $("#lunch_desires").html(@view.render().el)

  index: ->
    @view = new LunchHub.Views.LunchDesires.IndexView(lunchDesires: @lunchDesires)
    $("#lunch_desires").html(@view.render().el)

  show: (id) ->
    lunchDesire = @lunchDesires.get(id)

    @view = new LunchHub.Views.LunchDesires.ShowView(model: lunchDesire)
    $("#lunch_desires").html(@view.render().el)

  edit: (id) ->
    lunchDesire = @lunchDesires.get(id)

    @view = new LunchHub.Views.LunchDesires.EditView(model: lunchDesire)
    $("#lunch_desires").html(@view.render().el)
