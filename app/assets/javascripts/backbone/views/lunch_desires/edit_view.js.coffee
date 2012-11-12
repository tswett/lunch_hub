LunchHub.Views.LunchDesires ||= {}

class LunchHub.Views.LunchDesires.EditView extends Backbone.View
  template : JST["backbone/templates/lunch_desires/edit"]

  events :
    "submit #edit-lunch_desire" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (lunch_desire) =>
        @model = lunch_desire
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
