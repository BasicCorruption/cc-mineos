term.clear()
term.setCursorPos(1,1)

local wcy = 1

local _,th = term.getSize()
local cpy = math.floor(th/2)
wcy = cpy

local function println(text)
    term.setCursorPos(1,wcy)
    term.write(text);
    wcy = wcy + 1
end

local function printCentered(text)
    local w,h = term.getSize()
    local tx = math.floor(w/2 - #text/2)
    local ty = (wcy - 1) + math.floor(h/2)
    cx = tx
    cy = ty
    term.setCursorPos(tx,ty)
    term.write(text)
    wcy = wcy + 1
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

printBottom("MineOS v0.1.0")
printCentered("Username: ")
printCentered("Password: ")
