DEPTH = 80
FORWARD = 5
WIDTH = 6

function digLine()
    for i = 1,FORWARD do
        turtle.digDown()
        if i < FORWARD then
            turtle.forward()
        end
    end
end

for i = 1, DEPTH do
    local wp2 = WIDTH/2
    for j = 1,wp2 do
        digLine()
        turtle.turnRight()
        turtle.forward()
        turtle.turnRight()
        digLine()
        if j < wp2 then
            turtle.turnLeft()
            turtle.forward()
            turtle.turnLeft()
        end
    end
    turtle.turnRight()
    for k = 1,WIDTH - 1 do 
        turtle.forward()
    end
    turtle.turnRight()
    turtle.down()
end

for i = 1, DEPTH do
    turtle.up()
end
