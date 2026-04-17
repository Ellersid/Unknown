local r=game:GetService("NetworkClient"):WaitForChild("ClientReplicator")

local RBX={FE={}}
RBX.FE.BYTES=function(s)return getgenv()[(s:gsub("..",function(x)return(string.format("%c",tonumber(x,16)))end))]end

local cracker=RBX.FE.BYTES("5265706C69636174655369676E616C")
cracker.Parent=r
print("Sucessfully done fucked roblox's FilteringEnabled Setting")
