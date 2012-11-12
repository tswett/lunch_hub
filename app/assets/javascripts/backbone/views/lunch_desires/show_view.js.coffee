LunchHub.Views.LunchDesires ||= {}

class LunchHub.Views.LunchDesires.ShowView extends Backbone.View
  template: JST["backbone/templates/lunch_desires/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
