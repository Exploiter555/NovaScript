local NovaScript = NovaScript.new()
local NovaScript = require(script.NovaScript)
local Main_system = Instance.new("ScreenGui")
				Main_system.Name = "Main System"
				Main_system.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
				Main_system.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local mouseImage = Instance.new("ImageLabel")
mouseImage.Parent = screenGui
mouseImage.Size = UDim2.new(0, 32, 0, 32)
mouseImage.BackgroundTransparency = 1
mouseImage.Image = "rbxassetid://<Your_Image_ID>"

mouse.Icon = ""

game:GetService("RunService").RenderStepped:Connect(function()
    mouseImage.Position = UDim2.new(0, mouse.X - 16, 0, mouse.Y - 16)
end)

local startTime = os.time() -- Get the current Unix time when the script starts

-- Function to check if 24 hours have passed
local function has24HoursPassed()
    local currentTime = os.time() -- Get the current time
    local timeElapsed = currentTime - startTime -- Calculate the time elapsed
    return timeElapsed >= 24 * 60 * 60 -- Check if 24 hours (in seconds) have passed
end

-- Example usage
while true do
    if has24HoursPassed() then
        Main_system:Destroy()
    		print("Not Available: System Reason: Time end")
    		-- loadstring
        break
    else
        print("Available: System")
    end
		wait(1)
end

				-- ui setup and tabs system
				local ui_main = Instance.new("Frame")
				local close = Instance.new("TextButton")
				local tabs = Instance.new("Frame")
				local tab_1 = Instance.new("ImageButton")
				local tab_2 = Instance.new("ImageButton")
				local tab_3 = Instance.new("InageButton")
				local tab_4 = Instance.new("ImageButton")
local Title = Instance.new("TextLabel")
				
				ui_main.Parent = Main_system
				ui_main.Size = UDim2.new(0, 300, 0, 400)
				ui_main.BackgroundColor3 = Color3.new(69, 69, 69)
				ui_main.Active = true
				ui_main.Draggable = true

tabs.Parent = ui_main
tabs.Size = UDim2.new(0, 50, 0, 400)

Title.Parent = tabs
Title.Text = "NovaScript"
Title.TextColor3 = UDim2.new(255, 0, 0)
Title.Font = Enum.Font.SourceSans
Title.Size = UDim2.new(0, 50, 0, 10)

tab_1.BackgroundColor3 = Color3.new(0, 30, 0)
tab_1.Size = UDim2.new(0, 50, 0, 10)
tab_1.Image = "rbxassetid://"
tab_1.Position = UDim2.new(0, 0, 0, 70)
tab_1.Parent = tabs
tab_2.FontSize = Enum.FontSize.Size18

tab_2.Size = UDim2.new(0, 50, 0, 10)
tab_2.Position = UDim2.new(0, 0, 0, 20)
tab_2.Image = "rbxassetid://"
tab_2.Parent = tabs
tab_2.BackgroundColor3 = Color3.new(0, 30, 0)
tab_2.FontSize = Enum.FontSize.Size18

tab_3.Size = UDim2.new(0, 50, 0, 10)
tab_3.Image = "rbxassetid://"
tab_3.Position = UDim2.new(0, 0, 0, 30)
tab_3.BackgroundColor3 = Color3.new(0, 30, 0)
tab_3.Parent = tabs
tab_3.FontSize = Enum.FontSize.Size18

tab_4.Size = UDim2.new(0, 50, 0, 10)
tab_4.Image = "rbxassetid://"
tab_4.Position = UDim2.new(0, 0, 0, 40)
tab_4.BackgroundColor3 = Color3.new(0, 30, 0)
tab_4.Parent = tabs
tab_4.FontSize = Enum.FontSize.Size18

				tab_1.MouseButton1Click:Connect(function()
-- Define frames for each tab
local tab_1_frame = Instance.new("Frame")
tab_1_frame.Name = "Home Page"
tab_1_frame.Size = UDim2.new(0, 200, 0, 200)
tab_1_frame.Position = UDim2.new(0.1, 0, 0.1, 0)
tab_1_frame.Parent = ui_main
						local Newest_Version = Instance.new("Frame")
						Newest_Version.Parent = tab_1_frame
						
						local Version = Instance.new("TextLabel")
						Version.Parent = Newest_Version
						Version.Font = Enum.Font.ArialBold
						Version.Text = "Version current: V.1.0"
						
						local update = Instance.new("TextLabel")
						update.Parent = Newest_Version
						update.Font = Enum.Font.ArialBold
						update.Text = "The V.1.0 Publish got \n - New Version gets to reports"
				end)
				tab_2.MouseButton1Click:Connect(function()
local tab_2_frame = Instance.new("Frame")
tab_2_frame.Name = "Executor Page"
tab_2_frame.Size = UDim2.new(0, 200, 0, 200)
tab_2_frame.Position = UDim2.new(0.3, 0, 0.1, 0)
tab_2_frame.Parent = ui_main
					
local button = Instance.new("TextButton")
button.Parent = tab_2_frame
button.BackgroundColor3 = Color3.new(0, 0, 0)
button.BorderColor3 = Color3.new(1, 1, 1)
button.Size = UDim2.new(0, 150, 0, 30)
button.Font = Enum.Font.SourceSans
button.FontSize = Enum.FontSize.Size24
button.Text = "Execute"
button.TextColor3 = Color3.new(1, 1, 1)

button.MouseButton1Click:Connect(function()
local code = game.Players.LocalPlayer.PlayerGui.Code.TextBox.Text
NovaScript:execute(code)
end)

local textBox = Instance.new("TextBox")
textBox.Parent = tab_2_frame
textBox.BackgroundColor3 = Color3.new(0, 0, 0)
textBox.BorderColor3 = Color3.new(1, 1, 1)
textBox.Size = UDim2.new(0, 300, 0, 100)
textBox.Font = Enum.Font.SourceSans
textBox.FontSize = Enum.FontSize.Size18
textBox.TextColor3 = Color3.new(1, 1, 1)
textBox.PlaceholderText = "Enter your code here..."

game.Players.LocalPlayer.PlayerGui.Setup,tp(textBox)
game.Players.LocalPlayer.PlayerGui.Setup,tp(button)

game.Players.LocalPlayer.PlayerGui:WaitForChild("Code")
game.Players.LocalPlayer.PlayerGui.Code:Destroy()
game.Players.LocalPlayer.PlayerGui:WaitForChild("Execute")
game.Players.LocalPlayer.PlayerGui.Execute:Destroy()
						

textBox.Parent = tab_2_frame
button.Parent = textBox
				end)

				tab_3.MouseButton1Click:Connect(function()
local tab_3_frame = Instance.new("Frame")
tab_3_frame.Name = "Scripts Page"
tab_3_frame.Size = UDim2.new(0, 200, 0, 200)
tab_3_frame.Position = UDim2.new(0.5, 0, 0.1, 0)
tab_3_frame.Parent = ui_main
local button_av = Instance.new("TextButton")
local ui_lib = Instance.new("Frame")
local textbox = Instance.new("TextBox")
local button = Instance.new("TextButton")

ui_lib.Parent = tab_3_frame
ui_lib.Size = UDim2.new(0, 200, 0, 200)

textbox.Parent = ui_lib
textbox.Placeholder = "Search here"
textbox.Text = ""
textbox.Font = Enum.Font.SourceSans
textbox.FontSize = Enum.FontSize.Size18
textbox.Size = UDim2.new(0, 30, 0, 10)

button.Parent = textbox
button.Size = UDim2.new(0, 5, 0, 10)
button.Position = UDim2.new(0, 25, 0, 0)
button.Text = "Search"
button.Font = Enum.Font.SourceSans
button.FontSize = Enum.FontSize.Size18

if textbox.Text == "Break In Story" or "Break in Story" then
		button_av.Parent = ui_lib
		button_av.Size = UDim2.new(0, 200, 0, 50)
		button_av.Text = "Break in Story Script"
		button_av.Position = UDim2.new(0, 0, 0, 15)
		button_av.Mousebutton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nikita365/Break-In-Story-/main/Break%20In%20Story%20Hub"))()
		end)
end

if textbox.Text == "Fly" or "DevFly" or "fly" or "devfly" then
		button_av.Text = "Fly Script"
		button_av.MouseButton1Click:Connect(function()
			local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local mini = Instance.new("TextButton")
local mini2 = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)

up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "UP"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000

down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "DOWN"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "fly"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Fly GUI V3"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true

closebutton.Name = "Close"
closebutton.Parent = main.Frame
closebutton.BackgroundColor3 = Color3.fromRGB(225, 25, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 28)
closebutton.Text = "X"
closebutton.TextSize = 30
closebutton.Position =  UDim2.new(0, 0, -1, 27)

mini.Name = "minimize"
mini.Parent = main.Frame
mini.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini.Font = "SourceSans"
mini.Size = UDim2.new(0, 45, 0, 28)
mini.Text = "-"
mini.TextSize = 40
mini.Position = UDim2.new(0, 44, -1, 27)

mini2.Name = "minimize2"
mini2.Parent = main.Frame
mini2.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini2.Font = "SourceSans"
mini2.Size = UDim2.new(0, 45, 0, 28)
mini2.Text = "+"
mini2.TextSize = 40
mini2.Position = UDim2.new(0, 44, -1, 57)
mini2.Visible = false

speeds = 1

local speaker = game:GetService("Players").LocalPlayer

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

nowe = false

game:GetService("StarterGui"):SetCore("SendNotification", { 
        Title = "Fly GUI by MaksBloxX";
        Text = "Go to Sub MaksBloxX";
        Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 5;

Frame.Active = true -- main = gui
Frame.Draggable = true

onof.MouseButton1Down:connect(function()

        if nowe == true then
                nowe = false

                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
                speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
        else 
                nowe = true



                for i = 1, speeds do
                        spawn(function()

                                local hb = game:GetService("RunService").Heartbeat        


                                tpwalking = true
                                local chr = game.Players.LocalPlayer.Character
                                local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                                while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                                        if hum.MoveDirection.Magnitude > 0 then
                                                chr:TranslateBy(hum.MoveDirection)
                                        end
                                end

                        end)
                end
                game.Players.LocalPlayer.Character.Animate.Disabled = true
                local Char = game.Players.LocalPlayer.Character
                local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

                for i,v in next, Hum:GetPlayingAnimationTracks() do
                        v:AdjustSpeed(0)
                end
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
                speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
        end




        if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



                local plr = game.Players.LocalPlayer
                local torso = plr.Character.Torso
                local flying = true
                local deb = true
                local ctrl = {f = 0, b = 0, l = 0, r = 0}
                local lastctrl = {f = 0, b = 0, l = 0, r = 0}
                local maxspeed = 50
                local speed = 0


                local bg = Instance.new("BodyGyro", torso)
                bg.P = 9e4
                bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                bg.cframe = torso.CFrame
                local bv = Instance.new("BodyVelocity", torso)
                bv.velocity = Vector3.new(0,0.1,0)
                bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
                if nowe == true then
                        plr.Character.Humanoid.PlatformStand = true
                end
                while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
                        game:GetService("RunService").RenderStepped:Wait()

                        if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                                speed = speed+.5+(speed/maxspeed)
                                if speed > maxspeed then
                                        speed = maxspeed
                                end
                        elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                                speed = speed-1
                                if speed < 0 then
                                        speed = 0
                                end
                        end
                        if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                                lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                        elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                        else
                                bv.velocity = Vector3.new(0,0,0)
                        end
                        --        game.Players.LocalPlayer.Character.Animate.Disabled = true
                        bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
                end
                ctrl = {f = 0, b = 0, l = 0, r = 0}
                lastctrl = {f = 0, b = 0, l = 0, r = 0}
                speed = 0
                bg:Destroy()
                bv:Destroy()
                plr.Character.Humanoid.PlatformStand = false
                game.Players.LocalPlayer.Character.Animate.Disabled = false
                tpwalking = false




        else
                local plr = game.Players.LocalPlayer
                local UpperTorso = plr.Character.UpperTorso
                local flying = true
                local deb = true
                local ctrl = {f = 0, b = 0, l = 0, r = 0}
                local lastctrl = {f = 0, b = 0, l = 0, r = 0}
                local maxspeed = 50
                local speed = 0


                local bg = Instance.new("BodyGyro", UpperTorso)
                bg.P = 9e4
                bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                bg.cframe = UpperTorso.CFrame
                local bv = Instance.new("BodyVelocity", UpperTorso)
                bv.velocity = Vector3.new(0,0.1,0)
                bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
                if nowe == true then
                        plr.Character.Humanoid.PlatformStand = true
                end
                while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
                        wait()

                        if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                                speed = speed+.5+(speed/maxspeed)
                                if speed > maxspeed then
                                        speed = maxspeed
                                end
                        elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                                speed = speed-1
                                if speed < 0 then
                                        speed = 0
                                end
                        end
                        if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                                lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                        elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                        else
                                bv.velocity = Vector3.new(0,0,0)
                        end

                        bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
                end
                ctrl = {f = 0, b = 0, l = 0, r = 0}
                lastctrl = {f = 0, b = 0, l = 0, r = 0}
                speed = 0
                bg:Destroy()
                bv:Destroy()
                plr.Character.Humanoid.PlatformStand = false
                game.Players.LocalPlayer.Character.Animate.Disabled = false
                tpwalking = false



        end




end)

local tis

up.MouseButton1Down:connect(function()
        tis = up.MouseEnter:connect(function()
                while tis do
                        wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
                end
        end)
end)

up.MouseLeave:connect(function()
        if tis then
                tis:Disconnect()
                tis = nil
        end
end)

local dis

down.MouseButton1Down:connect(function()
        dis = down.MouseEnter:connect(function()
                while dis do
                        wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
                end
        end)
end)

down.MouseLeave:connect(function()
        if dis then
                dis:Disconnect()
                dis = nil
        end
end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
        wait(0.7)
        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
        game.Players.LocalPlayer.Character.Animate.Disabled = false

end)


plus.MouseButton1Down:connect(function()
        speeds = speeds + 1
        speed.Text = speeds
        if nowe == true then


                tpwalking = false
                for i = 1, speeds do
                        spawn(function()

                                local hb = game:GetService("RunService").Heartbeat        


                                tpwalking = true
                                local chr = game.Players.LocalPlayer.Character
                                local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                                while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                                        if hum.MoveDirection.Magnitude > 0 then
                                                chr:TranslateBy(hum.MoveDirection)
                                        end
                                end

                        end)
                end
        end
end)
mine.MouseButton1Down:connect(function()
        if speeds == 1 then
                speed.Text = 'cannot be less than 1'
                wait(1)
                speed.Text = speeds
        else
                speeds = speeds - 1
                speed.Text = speeds
                if nowe == true then
                        tpwalking = false
                        for i = 1, speeds do
                                spawn(function()

                                        local hb = game:GetService("RunService").Heartbeat        


                                        tpwalking = true
                                        local chr = game.Players.LocalPlayer.Character
                                        local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                                        while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                                                if hum.MoveDirection.Magnitude > 0 then
                                                        chr:TranslateBy(hum.MoveDirection)
                                                end
                                        end

                                end)
                        end
                end
        end
end)

closebutton.MouseButton1Click:Connect(function()
        main:Destroy()
end)

mini.MouseButton1Click:Connect(function()
        up.Visible = false
        down.Visible = false
        onof.Visible = false
        plus.Visible = false
        speed.Visible = false
        mine.Visible = false
        mini.Visible = false
        mini2.Visible = true
        main.Frame.BackgroundTransparency = 1
        closebutton.Position =  UDim2.new(0, 0, -1, 57)
end)

mini2.MouseButton1Click:Connect(function()
        up.Visible = true
        down.Visible = true
        onof.Visible = true
        plus.Visible = true
        speed.Visible = true
        mine.Visible = true
        mini.Visible = true
        mini2.Visible = false
        main.Frame.BackgroundTransparency = 0 
        closebutton.Position =  UDim2.new(0, 0, -1, 27)
end)
		end)
end

if textbox.Text == "Noclip" or "Go through walls" then
		button_av.Text = "NoClip"
		button_av.MouseBtton1Click:Connect(function()
				local Workspace = game:GetService("Workspace")

local CoreGui = game:GetService("CoreGui")

local Players = game:GetService("Players")

local Noclip = Instance.new("ScreenGui")

local BG = Instance.new("Frame")

local Title = Instance.new("TextLabel")

local Toggle = Instance.new("TextButton")

local StatusPF = Instance.new("TextLabel")

local Status = Instance.new("TextLabel")

local Credit = Instance.new("TextLabel")

local Clipon = false



Noclip.Name = "Noclip"

Noclip.Parent = game.CoreGui



BG.Name = "BG"

BG.Parent = Noclip

BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)

BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)

BG.BorderSizePixel = 2

BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)

BG.Size = UDim2.new(0, 210, 0, 127)

BG.Active = true

BG.Draggable = true



Title.Name = "Title"

Title.Parent = BG

Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)

Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)

Title.BorderSizePixel = 2

Title.Size = UDim2.new(0, 210, 0, 33)

Title.Font = Enum.Font.Highway

Title.Text = "Noclip"

Title.TextColor3 = Color3.new(1, 1, 1)

Title.FontSize = Enum.FontSize.Size32

Title.TextSize = 30

Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)

Title.TextStrokeTransparency = 0



Toggle.Parent = BG

Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)

Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)

Toggle.BorderSizePixel = 2

Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)

Toggle.Size = UDim2.new(0, 146, 0, 36)

Toggle.Font = Enum.Font.Highway

Toggle.FontSize = Enum.FontSize.Size28

Toggle.Text = "Toggle"

Toggle.TextColor3 = Color3.new(1, 1, 1)

Toggle.TextSize = 25

Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)

Toggle.TextStrokeTransparency = 0



StatusPF.Name = "StatusPF"

StatusPF.Parent = BG

StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)

StatusPF.BackgroundTransparency = 1

StatusPF.Position = UDim2.new(0.314285725, 0, 0.708661377, 0)

StatusPF.Size = UDim2.new(0, 56, 0, 20)

StatusPF.Font = Enum.Font.Highway

StatusPF.FontSize = Enum.FontSize.Size24

StatusPF.Text = "Status:"

StatusPF.TextColor3 = Color3.new(1, 1, 1)

StatusPF.TextSize = 20

StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)

StatusPF.TextStrokeTransparency = 0

StatusPF.TextWrapped = true



Status.Name = "Status"

Status.Parent = BG

Status.BackgroundColor3 = Color3.new(1, 1, 1)

Status.BackgroundTransparency = 1

Status.Position = UDim2.new(0.580952346, 0, 0.708661377, 0)

Status.Size = UDim2.new(0, 56, 0, 20)

Status.Font = Enum.Font.Highway

Status.FontSize = Enum.FontSize.Size14

Status.Text = "off"

Status.TextColor3 = Color3.new(0.666667, 0, 0)

Status.TextScaled = true

Status.TextSize = 14

Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)

Status.TextWrapped = true

Status.TextXAlignment = Enum.TextXAlignment.Left



Credit.Name = "Credit"

Credit.Parent = BG

Credit.BackgroundColor3 = Color3.new(1, 1, 1)

Credit.BackgroundTransparency = 1

Credit.Position = UDim2.new(0.195238099, 0, 0.866141737, 0)

Credit.Size = UDim2.new(0, 128, 0, 17)

Credit.Font = Enum.Font.SourceSans

Credit.FontSize = Enum.FontSize.Size18

Credit.Text = "Created by MaksBloxX"

Credit.TextColor3 = Color3.new(1, 1, 1)

Credit.TextSize = 16

Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)

Credit.TextStrokeTransparency = 0

Credit.TextWrapped = true



Toggle.MouseButton1Click:connect(function()

        if Status.Text == "off" then                Clipon = true

                Status.Text = "on"

                Status.TextColor3 = Color3.new(0,185,0)

                Stepped = game:GetService("RunService").Stepped:Connect(function()

                        if not Clipon == false then

                                for a, b in pairs(Workspace:GetChildren()) do

                if b.Name == Plr.Name then

                for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do

                if v:IsA("BasePart") then

                v.CanCollide = false

                end end end end

                        else

                                Stepped:Disconnect()

                        end

                end)

        elseif Status.Text == "on" then

                Clipon = false

                Status.Text = "off"

                Status.TextColor3 = Color3.new(170,0,0)

        end

end)
		end)
end
				end)
				tab_4.MouseButton1Click:Connect(function
local tab_4_frame = Instance.new("Frame")
tab_4_frame.Name = "Settings Page"
tab_4_frame.Size = UDim2.new(0, 200, 0, 200)
tab_4_frame.Position = UDim2.new(0.7, 0, 0.1, 0)
tab_4_frame.Parent = ui_main
				end)
				close.Parent = ui_main
				close.Size = UDim2.new(0, 50, 0, 50)
				close.Text = "X"
				close.MouseButton1Click:Conenct(function()
						ui_main.Visible = false
						tab_1_frame.Visible = false
						tab_2_frame.Visible = false
						tab_3_frame.Visible = false
						tab_4_frame.Visible = false
						
						local Open = Instance.new("TextButton")
						Open.Parent = Main_system
						Open.Size = UDim2.new(0, 50, 0, 50)
						Open.Active = true
						Open.Draggable = true
						Open.MouseButton1Click:Connect(function()
								 loadstring(game:Httpget(https://raw.githubusercontent.com/Exploiter555/NovaScript/main/main_system.lua))()
						end)
				end)

local currentTab = 1
local maxTabs = 4
local selectedBorderColor = Color3.fromRGB(255, 255, 255)
local defaultBorderColor = Color3.fromRGB(0, 0, 0) 

local function updateTabs()
    for i = 1, maxTabs do
        local tab = script.Parent:FindFirstChild("tab_"..i)  -- Adjust this to your GUI structure
        if tab then
            tab.Visible = (i == currentTab)
            if i == currentTab then
                tab.BorderColor3 = selectedBorderColor  -- Set the border color of the current tab
            else
                tab.BorderColor3 = defaultBorderColor   -- Reset the border color of other tabs
            end
        end
    end
end

-- Initial update to show the first tab
updateTabs()

-- Handling the Up and Down arrow key inputs
local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Up then
        currentTab = currentTab - 1
        if currentTab < 1 then
            currentTab = maxTabs
        end
        updateTabs()
    elseif input.KeyCode == Enum.KeyCode.Down then
        currentTab = currentTab + 1
        if currentTab > maxTabs then
            currentTab = 1
        end
        updateTabs()
    end
end)

local function buggyFunction()
    local data = nil
    local result = data.someProperty
    return result
end

local function logError(message)
    print("ERROR: " .. message)
end

local function executeWithLogging(func)
    local success, result = pcall(func)
    if not success then
        logError("Function failed with error: " .. tostring(result))
    else
        print("Function executed successfully. Result: " .. tostring(result))
    end
end

executeWithLogging(buggyFunction)

local playerGui = player:WaitForChild("PlayerGui")
print("PlayerGui loaded")

local frame = playerGui:FindFirstChild("ui")
if frame then
    print("Frame found")
else
    warn("Frame not found")
end

local function logError(message)
    warn(message)
end

local function safeExecute(func)
    local success, result = pcall(func)
    if not success then
        logError(result)
    end
    return success, result
end

safeExecute(function()
    local a = 10
    local b = 0
    print(a / b)
end)