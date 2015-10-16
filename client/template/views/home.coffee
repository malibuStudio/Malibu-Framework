Template.home.events
  'click .create': (e)->
    e.preventDefault()

    classes = $.trim($('.input').val())

    $('h1.r span').text(classes)
    $('.target-btn').attr('class', 'target-btn')
    $('.target-btn').addClass(classes)

    $('.input').val('')

  'click button': (e)->
    e.preventDefault()

    $('button').toggleClass('loading')