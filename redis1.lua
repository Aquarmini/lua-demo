redis.pcall('select',4);
local arr = redis.pcall('keys','*');
local result = {};
for key,val in pairs(arr) do
	local tp=redis.pcall('type',val);
	if tp['ok'] == "hash" then
		local charge_at = redis.pcall('hget',val,'charge_at');
		local paid_at = redis.pcall('hget',val,'paid_at');
		if charge_at == "" and paid_at ~= '' then
			result[#result+1]=val;
		end
	end
end
return result;

-- /Users/limx/Applications/github/demo-lua/redis1.lua