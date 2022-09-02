term.clear()

local cx = 1
local cy = 1

local function printCentered(text)
    local w,h = term.getSize()
    local tx = math.floor(w/2 - #text/2)
    local ty = math.floor(h/2)
    cx = tx
    cy = ty
    term.setCursorPos(tx,ty)
    term.write(text)
end

local function printBottom(text)
    local w,h = term.getSize()
    local tx = math.floor(w/2 - #text/2)
    local ty = h - 1
    cx = tx
    cy = ty
    term.setCursorPos(tx,ty)
    term.write(text)
end

printCentered("ComputerCraft Tweaked")

sleep(2)

local r = 0
repeat
    printBottom("Starting.  ")
    sleep(1/3)
    printBottom("Starting.. ")
    sleep(1/3)
    printBottom("Starting...")
    sleep(1/3)
    r=r+1
until r == 10

shell.run("bootloader")