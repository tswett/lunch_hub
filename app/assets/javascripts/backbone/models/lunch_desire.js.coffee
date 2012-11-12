class LunchHub.Models.LunchDesire extends Backbone.Model
  paramRoot: 'lunch_desire'

  defaults:
    name_of_person: null
    name_of_restaurant: null

class LunchHub.Collections.LunchDesiresCollection extends Backbone.Collection
  model: LunchHub.Models.LunchDesire
  url: '/lunch_desires'
