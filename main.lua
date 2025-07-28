--[[ 
Grow a Garden Admin Panel
Modules connected locally (not raw links)
]]--

-- Load modules from files (assumes all are in same folder as this script)
local function loadModule(name)
    local ok, result = pcall(function()
        return loadstring(readfile(name .. ".lua"))()
    end)
    if not ok then warn("Failed to load " .. name) end
    return result
end

local CraftingTable = loadModule("CraftingTable")
local ItemModule = loadModule("ItemModule")
local MutationHandler = loadModule("MutationHandler")
local PetEggs = loadModule("PetEggs")
local PetList = loadModule("PetList")
local PetMutation = loadModule("PetMutation")

-- Convert mention.json to Lua (you should rename it to mention.lua)
local mention = loadModule("mention") or { authors = {"Unknown"} }

-- Optional: Connect extra features if you’ve scripted them
local AutoFarm = loadModule("AutoFarm")
local AutoCollect = loadModule("AutoCollect")
local AutoSubmitQuest = loadModule("AutoSubmitQuest")
local AutoSubmitAll = loadModule("AutoSubmitAll")
local InfiniteJump = loadModule("InfiniteJump")

-- CONTINUE BELOW WITH FULL UI CODE...
-- (Insert the full UI script we made earlier here: frame, dropdowns, toggles, etc.)
-- Use CraftingTable, ItemModule, etc., exactly the same way as before
