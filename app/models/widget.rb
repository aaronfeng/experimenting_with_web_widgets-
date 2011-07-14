class Widget
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def height
    300
  end

  def width
    300
  end

  def render(view)
    view.render :partial => 'widgets/iframe', :locals => { :widget => self }
  end

  def base
    Rails.root.join('app', 'widgets', name)
  end

  def home_page
    base.join('index.html')
  end

  def resource(path)
    base.join(path)
  end
end
