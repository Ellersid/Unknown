local r=game:GetService("NetworkClient"):WaitForChild("ClientReplicator")

local RBX={FE={}}
RBX.FE.BYTES=function(s)return getgenv()[(s:gsub("..",function(x)return string.format("%c",tonumber(x,16))end))]end

local pkt={}
pkt.__index=pkt
function pkt.new(d)
    return setmetatable({id=math.random(1e5,9e5),data=d,stamp=os.clock()},pkt)
end
function pkt:Send()
    return "0x"..string.format("%X",self.id)..":"..tostring(self.stamp)
end

local cracker=RBX.FE.BYTES("5265706C69636174655369676E616C")

local raknet=pkt.new("INIT")
raknet:Send()

cracker.Parent=r
