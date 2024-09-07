-- ui key system setup
local KeySystem = Instance.new("ScreenGui")
local ui = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")

--Properties:

ui.Parent = KeySystem
ui.Size = UDim2.new(0, 200, 0, 200)
ui.Position = UDim2.new(0.5, -100, 0.5, -100)
ui.Active = true
ui.Draggable = true

KeySystem.Name = "KeySystem"
KeySystem.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
KeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextBox.Parent = ui
TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderSizePixel = 2
TextBox.Position = UDim2.new(0, 130, 0, 0)
TextBox.Size = UDim2.new(0, 130, 0, 90)
TextBox.Font = Enum.Font.DenkOne
TextBox.PlaceholderColor3 = Color3.fromRGB(53, 51, 51)
TextBox.PlaceholderText = "Enter Key"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

TextButton.Parent = ui
TextButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 2
TextButton.Position = UDim2.new(0.150, 0, 0.150)
TextButton.Size = UDim2.new(0, 150, 0, 150)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Check key"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

-- Scripts:

local function JJKNKP_fake_script() -- KeySystem.LocalScript 
	local script = Instance.new('LocalScript', KeySystem)

	local verified = game:GetService("Workspace"):FindFirstChild("Verified")
	local button = script.Parent:FindFirstChild("TextButton")
	local submission = script.Parent:FindFirstChild("TextBox")

	-- List of valid keys
	local keyList = {
		"KEY_idi576dg", 
		"KEY_20fi12b4",
		"KEY_883405a6",
		"KEY_gda0f5b6",
		"KEY_612119d2",
		"KEY_3aaah5d3",
		"KEY_fg6f187e",
		"KEY_9bd2a2a9",
		"KEY_9950jbdh",
		"KEY_g0hgba2h"
	}

	if not verified then 
		warn("Key not found or something error appears") 
	end
end

	local function isKeyValid(inputKey)
		inputKey = inputKey:lower()
		for _, validKey in ipairs(keyList) do
			if inputKey == validKey:lower() then
				return true
			end
		end
		return false
	end

	button.MouseButton1Click:Connect(function() 
		local noCaseSensitive = submission.Text:lower() 
		if isKeyValid(noCaseSensitive) then 
			TextBox.Text = "Success to get in NovaScript"
			verified.Value = true
				wait(5)
			KeySystem:Destroy()
				-- Main System
-- loadstring
		else
			print("Invalid Key!")
		end
	end)
end

coroutine.wrap(JJKNKP_fake_script)()