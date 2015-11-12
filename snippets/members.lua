--get all members of an object
--source: http://stackoverflow.com/a/2620398

## get all members of an object
for key,value in pairs(lfs) do
    print(" - " .. key);
end
