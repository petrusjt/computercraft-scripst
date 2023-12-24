function findSeedsToPlant()
    for i = 1, 16 do
        turtle.select(i)
        if turtle.getItemDetail().name == "minecraft:wheat_seeds" then
            io.write("Found seeds in inventory\n")
            break
        end
    end
end

function farm4x1()
    for i = 1, 4 do
        local hasBlock, data = turtle.inspectDown()
        if hasBlock and data.name == "minecraft:wheat" and data.state.age == 7 then
            --turtle.digDown()
            io.write("Harvesting wheat\n")
            findSeedsToPlant()
            --turtle.placeDown()
            io.write("Planting seed\n")
        else
            io.write("Not wheat or not fully grown\n")
        end
        turtle.forward()
    end
end

function farm4x4()
    farm4x1()
    turtle.turnRight()
    turtle.forward()
    turtle.turnRight()
    farm4x1()
    turtle.turnLeft()
    turtle.forward()
    turtle.turnLeft()
    farm4x1()
    turtle.turnRight()
    turtle.forward()
    turtle.turnRight()
    farm4x1()
    turtle.turnLeft()
    turtle.forward()
    turtle.turnLeft()
end

farm4x4()
