((window, document, $, ProJ) ->
  ProJ.fn ?= {}


  ProJ.fn.onload = ->
    ProJ('[data-click]').each -> @.on 'click', @dataset.click
    ProJ
      .lazyload()
      .ymaps()
    ProJ.fn.redactor()
    $('[data-tooltip]').tooltip placement: (n, e) -> e.dataset.tooltip or 'auto'
    @


  ProJ.fn.onready = ->
    (new WOW offset: 0).init()
    ProJ('a.is-active, .is-active > a, a.active, .active > a').deactive()
    ProJ('[data-ymet]').ymet()
    ProJ('[data-w3c]').w3c()
    ProJ
      .base64()
      .mailto()
      .scroll()
      .lightbox()
    ProJ.fn.submit()
    @

) window, document, jQuery, ProJ
