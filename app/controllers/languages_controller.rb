class LanguagesController < ApplicationController
  def index
    @languages = Language.all.order("language ASC")
  end

  def new
    @language = Language.new
  end
end
