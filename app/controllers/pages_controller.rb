class PagesController < ApplicationController

  def home
    render layout: "layout_landingpage"
  end
end
