require 'ruby2d'

set background: 'green'

begin_message = Text.new('Click to begin')

on :mouse_down do |event|
    # x and y coordinates of the mouse button event
    puts event.x, event.y
    begin_message.remove
end

show