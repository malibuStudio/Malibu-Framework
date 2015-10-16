##########################################################################
#
#
# modal.coffee
#
#
##########################################################################

# ========================================================================
# Delegate modal trigger click
# ========================================================================
$(document).delegate '[data-action=modal]', 'click', (e)->
  $el = $(e.target).attr('data-target')
  $obj = $(e.target).data()

  obj =
    overlay: $obj.overlay

  MODAL.open($el, obj)

# ========================================================================
# MODAL Object
# ========================================================================
@MODAL =
  # Duation Time Set
  duration:
    open: 0.15
    close: 0.3

  # Init
  open: (modal, obj)->
    $modal = $(modal)

    # Open Modal
    unless obj and obj.overlay is false
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

    # If overlay is false, add close event handler to .modal > .close only
    if obj and obj.overlay is false
      $('.close', $modal).on('click', (e)->
        e.preventDefault()
        MODAL.close($modal, obj)
      )
    else
      $('.close', $modal).add('.modal-overlay').on('click', (e)->
        e.preventDefault()
        MODAL.close($modal, obj)
      )


  # Close Modal
  close: ($modal, obj)->
    # Close GSAP
    TweenMax.to $modal, MODAL.duration.close,
      scale: 1.1
      opacity: 0
      display: 'none'
      clearProps: 'all'
    # Close Modal Overlay GSAP
    if $('.modal-overlay').length isnt 0
      TweenMax.to '.modal-overlay', MODAL.duration.close,
        opacity: 0,
        clearProps: 'all'
        onComplete: ->
          $('.modal-overlay').remove()





