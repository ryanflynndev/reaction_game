require 'ruby2d'

set background: 'red'

begin_message = Text.new('Click to begin')
game_started = false
square = nil

on :mouse_down do |event|
    # x and y coordinates of the mouse button event
    puts event.x, event.y

    if game_started
       if square.contains?(event.x, event.y)
            puts "Clicked it!"
       end
    else
        begin_message.remove
    
        square = Square.new(
        x: 100, y: 200,
        size: 125,
        color: 'white',
  
        )

        game_started = true
    end
end



show