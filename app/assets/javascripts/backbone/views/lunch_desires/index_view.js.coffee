LunchHub.Views.LunchDesires ||= {}

class LunchHub.Views.LunchDesires.IndexView extends Backbone.View
  template: JST["backbone/templates/lunch_desires/index"]

  initialize: () ->
    console.log(@options)
    @options.lunchDesires.bind('reset', @addAll)

  addAll: () =>
    @options.lunchDesires.each(@addOne)

  addOne: (lunchDesire) =>
    view = new LunchHub.Views.LunchDesires.LunchDesireView({model : lunchDesire})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(lunchDesires: @options.lunchDesires.toJSON() ))
    @addAll()

    return this
