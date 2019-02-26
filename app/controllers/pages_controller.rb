class PagesController < ApplicationController
  def home
  end

  def category
    @vehicles = Vehicle.where(category: "car")
  end
end
