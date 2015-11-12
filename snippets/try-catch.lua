--pcall is something like try-catch
--source: http://www.lua.org/pil/8.4.html

local status, err = pcall(function() print(nonexistentfunction()) end)
print(status)
print(err.code)
print(err)
