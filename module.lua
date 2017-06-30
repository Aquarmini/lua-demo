module={};
module.id="私有变量";
function module.print()
	print(module.id);
end

local function pr()
	print("私有方法");
	end

function module.prfunc( ... )
	print("共有方法调用私有方法");
	pr();
end

return module;