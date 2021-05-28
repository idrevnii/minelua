function refuel()
    if turtle.getFuelLevel() < 1000 then
        turtle.refuel(64)
    end
end

function isEmptyBlock()
    return not turtle.detect()
end


function placeWood()
    if turtle.getItemCount() > 0 then
        turtle.place()
    end
end

function checkAndPlace()
    if isEmptyBlock() then
        placeWood()
    end
end

function start() 
    while turtle.getItemCount() > 0 do
        refuel()
        checkAndPlace()
        turtle.up()
        checkAndPlace()
        turtle.down()
        sleep(5)
    end
end

start()