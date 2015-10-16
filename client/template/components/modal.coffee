$(document).delegate '[data-action=modal]', 'click', (e)->
  $target = $(e.target).attr('data-target')
  MODAL.init($target)


@MODAL =
  duration:
    open: 0.15
    close: 0.3
  init: (modal)->
    $modal = $(modal)

    MODAL.open($modal)

    $('.close', $modal).on('click', (e)->
      e.preventDefault()
      MODAL.close($modal)
    )


  open: ($modal)->

    TweenMax.to $modal, 0,
      display: 'block'

    TweenMax.to $modal, MODAL.duration.open,
      scale: 1
      opacity: 1

  close: ($modal)->

    TweenMax.to $modal, MODAL.duration.close,
      scale: 1.1
      opacity: 0
      display: 'none'
      clearProps: 'all'





