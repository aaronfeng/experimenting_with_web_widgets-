class DashboardController < ApplicationController
  def index
    @widgets = [Widget.new('ticker'), Widget.new('kittens'),
                Widget.new('flot'), Widget.new('kittens'), Widget.new('flot')]
  end
end
