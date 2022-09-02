term.clear()
term.setCursorPos(1,1)
term.setCursorBlink(false)

local wcy = 1

local function println(text)
    term.setCursorPos(1,wcy)
    term.write(text);
    wcy = wcy + 1
end

println("[mineos] Starting bootloader")
sleep(0.1)
println("[mineos] Starting display driver")
sleep(0.1)
println("[mineos] Starting audio driver")
sleep(0.1)
println("[mineos] Starting serial driver")
sleep(0.1)
println("[mineos] Starting network adapters")
sleep(0.1)
println("[mineos] Searching for networks")
sleep(0.1)

term.clear()
wcy = 1

term.setCursorPos(1,1)
println("Use external monitor? (y/N) ")
local r1 = read();

wcy = 2

local uem = false
local mid = "monitor_0"

if r1 == "y" or r1 == "Y" then
    uem = true
    println("Using external monitor")
    term.clear()
    wcy = 1

    term.setCursorPos(1,1)
    println("Enter monitor id (ex: monitor_5): ")
    local r2 = read();

    wcy = 2

    mid = r2

    println("Using external monitor "..mid)

    sleep(1)
    shell.run("monitor "..mid.." kernel")
elseif r1 == "n" or r1 == "N" then
    uem = false
    println("Not using external monitor")
    shell.run("kernel")
else
    uem = false
    println("Not using external monitor")
    shell.run("kernel")
end




