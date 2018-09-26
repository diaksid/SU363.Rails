((document, location, $, ProJ) ->
  ProJ.fn ?= {}


  ProJ.fn.submit = ->
    $('[data-submit]').on 'change', ->
      if @dataset.submit
        document.querySelector(@dataset.submit).submit()
      else
        @parentNode.submit()
    @

) document, location, jQuery, ProJ
