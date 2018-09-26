class StaticsController < ApplicationController
  def home
    @title = t 'static.home.title'
    @keywords = t 'static.home.keywords', default: ''
    @description = t 'static.home.description', default: ''
    @header = t 'static.home.header'
  end

  def about
    @title = t 'static.about.title'
    @keywords = t 'static.about.keywords', default: ''
    @description = t 'static.about.description', default: ''
    @header = t 'static.about.header'
  end

  def privacy
    @title = t 'static.privacy.title'
    @keywords = t 'static.privacy.keywords', default: ''
    @description = t 'static.privacy.description', default: ''
    @header = t 'static.privacy.header'
  end

  def objects
    @title = t 'target.index.title'
    @keywords = t 'target.index.keywords', default: ''
    @description = t 'target.index.description', default: ''
    @header = t 'target.index.header'
  end
end
