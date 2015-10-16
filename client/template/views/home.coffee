Template.home.events
  'click [data-action=load]': (e)->
    e.preventDefault()

    $(e.target).toggleClass('loading')

  'click .open': (e)->
    e.preventDefault()

    MODAL.init('.modal',
      overlay: true
    )
