class FooController < ApplicationController
  def bar
     #   redirect_to(:action => 'demo')
    demo #call demo method
  end

  def demo
    render('demo')#render demo.html
  end

end
