class WelcomeController < ApplicationController
  def index
    @numberOfRubies = Ruby.count
    @numberOfCSSs = Css.count
    @numberOfJavascripts = Javascript.count
    @numberOfHTMLs = Html.count
  end
end
