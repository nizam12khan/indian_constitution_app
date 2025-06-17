class HomeController < ApplicationController
  def index
    @parts = Part.all
  end
end