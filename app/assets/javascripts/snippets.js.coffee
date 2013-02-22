# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

class PollingMachine
  constructor: (frequency, container, template) ->
    @frequency = frequency
    @container = $(container)
    @template = template
    @tick()

  tick: ->
    @container.empty()
    self = this
    setInterval (->
      $.ajax
        url: "snippets.json"
        success: (data) ->
          self.container.empty()
          for element in data
            snippet = $(Mustache.render(self.template, element))
            self.container.append(snippet)

        dataType: "json"

    ), @frequency





@app = window.app ? {}
@app.PollingMachine = PollingMachine
