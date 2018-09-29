((window, document, $, ProJ) ->
  ProJ.fn ?= {}


  ProJ.fn.onload = ->
    ProJ('[data-click]').each -> @.on 'click', @dataset.click
    ProJ
      .lazyload()
      .redactor()
      .ymaps()
    $('[data-tooltip]').tooltip placement: (n, e) -> e.dataset.tooltip or 'auto'
    @


  ProJ.fn.onready = ->
    (new WOW offset: 0).init()
    ProJ('a.is-active, .is-active > a, a.active, .active > a').deactive()
    ProJ('[data-ymet]').ymet()
    ProJ('[data-w3c]').w3c()
    ProJ.fn.submit()
    ProJ
      .base64()
      .mailto()
      .scroll()
      .lightbox()
    @

) window, document, jQuery, ProJ
