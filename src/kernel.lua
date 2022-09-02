term.clear()
term.setCursorPos(1,1)

local wcy = 1

local function println(text)
    term.setCursorPos(1,wcy)
    term.write(text);
    wcy = wcy + 1
end

println("MineOS v0.1.0")