class StaticsController < ApplicationController
  def home
    @title = t '.title'
    @keywords = t '.keywords', default: ''
    @description = t '.description', default: ''
    @header = t '.header'
    @suffix = nil
  end


  def about
    @title = t '.title'
    @keywords = t '.keywords', default: ''
    @description = t '.description', default: ''
    @header = t '.header'
  end


  def privacy
    @title = t '.title'
    @keywords = t '.keywords', default: ''
    @description = t '.description', default: ''
    @header = t '.header'
  end
end
