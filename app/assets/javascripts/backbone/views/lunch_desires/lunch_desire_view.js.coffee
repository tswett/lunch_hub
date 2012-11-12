LunchHub.Views.LunchDesires ||= {}

class LunchHub.Views.LunchDesires.LunchDesireView extends Backbone.View
  template: JST["backbone/templates/lunch_desires/lunch_desire"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
