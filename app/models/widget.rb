class Widget
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def title
    name
  end

  def id
    SecureRandom.uuid
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
