class DashboardController < ApplicationController
  def index
    @widgets = [Widget.new('kittens')]
  end
end
