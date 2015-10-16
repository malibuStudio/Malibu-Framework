Template.home.events
  'click [data-action=load]': (e)->
    e.preventDefault()

    $(e.target).toggleClass('loading')

  'click .open': (e)->
    e.preventDefault()

    MODAL.open('.modal',
      overlay: false
    )

Template.home.onRendered ->
  TAGS('tags',
    placeholder: '#Tag'
  )