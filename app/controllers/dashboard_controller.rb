class DashboardController < ApplicationController
  def index
    @widgets = [Widget.new('kittens'), Widget.new('flot')]
  end
end
