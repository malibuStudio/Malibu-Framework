Template.home.events
  'click [data-action=load]': (e)->
    e.preventDefault()

    $(e.target).toggleClass('loading')