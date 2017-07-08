package.path = "/Users/limx/.luarocks/share/lua/5.2/?.lua;"..package.path;
package.cpath = "/Users/limx/.luarocks/lib/lua/5.2/?.so;"..package.cpath;
local redis = require 'redis'; 
local client = redis.connect('127.0.0.1', 6379);
client:auth('910123');
local response = client:ping()           -- true  
print(response)

cot = client:incr('lua:redis');
print(cot);

cot = client:hincrby('lua:hash','key',1);
print(cot);
  
--for i=100,105 do  
--   client:zadd("test1",i,i)  
--   client:set("post_"..i,"a"..i)  
--end 