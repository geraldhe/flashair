-- read the Toshiba FlashAir-Config from /SD_WLAN/CONFIG and save it into a table
-- source: https://flashair-developers.com/en/documents/tutorials/lua/8/

local function loadConfig()
	local file = io.open("/SD_WLAN/CONFIG", "r" )
	config = {}
	for line in file:lines() do
		--Split the config file into variables and values
		--ie: APPMODE=5
		var, value = line:match("([^,]+)=([^,]+)")
		if var ~= nil and value ~= nil then
			config[var] = value
		end
	end
	return config
end

local config = loadConfig()
print("APPNAME: "..config["APPNAME"])
