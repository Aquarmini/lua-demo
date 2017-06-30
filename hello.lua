print "Hello World";

if true then
	print "true";
else 
	print "false";
end

function func()
	c = "I am Global param!";
	local c1 = "I am local param!";
end

print(c,c1);

func();

print(c,c1);

pa={};
pa['key']='value';
print (pa);
print (pa['key']);

key = 0;
while(key < 10)
do
	print ("Key=" .. key);
	key=key+1;
end

myprint = function(params)
	print("这是打印的数据，%s",params);
end

myprint("aaa");

function max(a1,a2,callback)
	if(a1>a2) then 
		callback(a1);
	else
		callback(a2);
	end
end

max(11,22,myprint);
max(33,22,myprint);
max(44,44,myprint);

arr = {1,2,3,4,"key","value",5,6,7,8};
for key,val in ipairs(arr) do
	print (key,val);
end

function avr(...)
	local result=0;
	local param = {...};
	for i,v in ipairs(param) do
		result=result+v;
	end
	print ("共 "..#param.." 个数字");
	print ("平均数为"..result/#param);
end

avr(2,3,44,53,2,3,4,5,677,88);

str = "是我";
print("字符串",str);
str = [[是我]];
print("字符串",str);
str = [["是我"]];
print("字符串",str);

str = "i am limx";
print(string.upper(str));

table = {};
table['key']='value';
table['k2']='vvv';
for i,v in pairs(table) do
	print(i,v);
end
print(table['k2']);

require("module");
print(module.id);
module.print();
module.prfunc();
