LunchHub.Views.LunchDesires ||= {}

class LunchHub.Views.LunchDesires.NewView extends Backbone.View
  template: JST["backbone/templates/lunch_desires/new"]

  events:
    "submit #new-lunch_desire": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (lunch_desire) =>
        @model = lunch_desire
        window.location.hash = "/index"

      error: (lunch_desire, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
