$(document).delegate '[data-action=modal]', 'click', (e)->
  $el = $(e.target).attr('data-target')
  $eT = $(e.target)

  obj =
    overlay: $eT.attr('data-overlay')

  MODAL.init($el, obj)

@MODAL =
  duration:
    open: 0.15
    close: 0.3

  init: (modal, obj)->
    $modal = $(modal)

    MODAL.open($modal, obj)

    if obj.overlay is 'true'
      $('.close', $modal).add('.modal-overlay').on('click', (e)->
        e.preventDefault()
        MODAL.close($modal, obj)
      )
    else
      $('.close', $modal).on('click', (e)->
        e.preventDefault()
        MODAL.close($modal, obj)
      )

  open: ($modal, obj)->
    if obj.overlay is 'true'
      overlay = $(document.createElement('div')).addClass('modal-overlay')
      $('#viewport').append(overlay)

      TweenMax.to '.modal-overlay', MODAL.duration.open,
        opacity: 1
        onComplete: ->
          $(overlay).css('pointer-events', 'auto')

    TweenMax.to $modal, 0,
      display: 'block'

    TweenMax.to $modal, MODAL.duration.open,
      scale: 1
      opacity: 1



  close: ($modal, obj)->
    TweenMax.to $modal, MODAL.duration.close,
      scale: 1.1
      opacity: 0
      display: 'none'
      clearProps: 'all'
    if obj.overlay is 'true'
      TweenMax.to '.modal-overlay', MODAL.duration.close,
        opacity: 0,
        clearProps: 'all'
        onComplete: ->
          $('.modal-overlay').remove()





