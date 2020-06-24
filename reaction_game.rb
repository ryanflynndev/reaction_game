require 'ruby2d'

set background: 'red'
set title: 'Reaction Game'

#Message when you begin the game
begin_message = Text.new('Click to begin', x: 10, y: 10)
#Game state either started or not started
game_started = false
#Variable to store our square
square = nil
#The time when the user first started the game
start_time = nil
#The duration it took for them to click the square
duration = nil



on :mouse_down do |event|
    # x and y coordinates of the mouse button event
    

    if game_started
        #After the game has started
       if square.contains?(event.x, event.y)
            duration = ((Time.now - start_time) * 1000).round
            begin_message = Text.new("Great job! You took: #{duration} milliseconds, Click to go again!", x: 10, y: 10)
            square.remove
            game_started = false
       end
    else
        #Before the game starts

        begin_message.remove
        # Creates a square with random coordinates
        square = Square.new(
        x: rand((get :width) - 25), y: rand((get :height) - 25),
        size: 25,
        color: 'white',
  
        )
        start_time = Time.now
        game_started = true
    end
end



show