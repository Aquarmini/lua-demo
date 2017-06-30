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
