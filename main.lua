--[[ 
    Grow a Garden Admin Panel (UI Only, Commands in Modules)
    Made for Delta Executor
    All modules must be saved in executor folder:
    CraftingTable.lua, ItemModule.lua, MutationHandler.lua,
    PetEggs.lua, PetList.lua, PetMutation.lua, mention.lua
]]

-- Load Modules
local function loadModule(name)
    local success, result = pcall(function()
        return loadstring(readfile(name .. ".lua"))()
    end)
    if not success then warn("❌ Failed to load:", name) end
    return result
end

local CraftingTable = loadModule("CraftingTable")
local ItemModule = loadModule("ItemModule")
local MutationHandler = loadModule("MutationHandler")
local PetEggs = loadModule("PetEggs")
local PetList = loadModule("PetList")
local PetMutation = loadModule("PetMutation")
local Mention = loadModule("mention")

-- UI Setup
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "GrowAGardenAdmin"

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 250, 0, 300)
Frame.Position = UDim2.new(0.05, 0, 0.2, 0)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.Active = true
Frame.Draggable = true

local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 12)

local UIListLayout = Instance.new("UIListLayout", Frame)
UIListLayout.Padding = UDim.new(0, 6)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "🌿 GaG Admin Panel"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18

-- Button Maker (UI-only trigger; assumes module handles function)
local function createButton(name)
    local btn = Instance.new("TextButton", Frame)
    btn.Size = UDim2.new(1, -10, 0, 30)
    btn.Position = UDim2.new(0, 5, 0, 0)
    btn.Text = "▶️ " .. name
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 14
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)

    local btnCorner = Instance.new("UICorner", btn)
    btnCorner.CornerRadius = UDim.new(0, 6)

    btn.MouseButton1Click:Connect(function()
        -- Only trigger the module's internal logic (no new commands here)
        print("🟢 Trigger:", name)
        -- Optional: modules can have .Run(), .Toggle(), .Enable() functions
        -- but we will not hardcode anything here
    end)
end

-- Create UI Buttons for your modules
createButton("Auto Farm")
createButton("Auto Collect")
createButton("Auto Submit Quest")
createButton("Auto Submit All")
createButton("Infinite Jump")

-- Optional footer credit
local Footer = Instance.new("TextLabel", Frame)
Footer.Size = UDim2.new(1, 0, 0, 20)
Footer.BackgroundTransparency = 1
Footer.Text = "made by lucifuge"
Footer.TextColor3 = Color3.fromRGB(100, 100, 100)
Footer.Font = Enum.Font.Gotham
Footer.TextSize = 12
