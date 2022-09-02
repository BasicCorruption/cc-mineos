term.clear()
term.setCursorPos(1,1)

local wcy = 1

local function println(text)
    term.setCursorPos(1,wcy)
    term.write(text);
    wcy = wcy + 1
end

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

println("MineOS v0.1.0")
printCentered("xx:xx")
printBottom("Press enter to log in")

read()

shell.run("logonui")