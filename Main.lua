-- Gui to Lua
-- Version: 3.2
if game.CoreGui:FindFirstChild("SnowmeltUI") then
	game.CoreGui:FindFirstChild("SnowmeltUI"):Destroy()
end

-- Instances:

local SnowmeltUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local MainUI = Instance.new("UICorner")
local SideBar = Instance.new("Frame")
local TabsScrollingFrame = Instance.new("ScrollingFrame")
local TabsUIGrid = Instance.new("UIGridLayout")
local ButtContButton = Instance.new("TextButton")
local ButtContButton_2 = Instance.new("UICorner")
local MiscButton = Instance.new("TextButton")
local MiscButton_2 = Instance.new("UICorner")
local Icon = Instance.new("Frame")
local IconCorner = Instance.new("UICorner")
local IconText = Instance.new("TextLabel")
local SideBarUI = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Tabs = Instance.new("Folder")
local ButtonContainer = Instance.new("ScrollingFrame")
local ButtContUIGrid = Instance.new("UIGridLayout")
local MiscContainer = Instance.new("Frame")
local MiscUIList = Instance.new("UIListLayout")
local MiscButton_3 = Instance.new("TextButton")
local MiscButtonUI = Instance.new("UICorner")
local MiscLabel = Instance.new("Frame")
local MiscLabelUI = Instance.new("UICorner")
local MiscLabelText = Instance.new("TextLabel")
local Shadow = Instance.new("ImageLabel")

--Properties:
		pcall(function()
			function dragify(Frame)
				dragToggle = nil
				dragSpeed = .25 -- You can edit this.
				dragInput = nil
				dragStart = nil
				dragPos = nil

				function updateInput(input)
					Delta = input.Position - dragStart
					Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
					game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
				end

				Frame.InputBegan:Connect(function(input)
					if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
						dragToggle = true
						dragStart = input.Position
						startPos = Frame.Position
						input.Changed:Connect(function()
							if (input.UserInputState == Enum.UserInputState.End) then
								dragToggle = false
							end
						end)
					end
				end)

				Frame.InputChanged:Connect(function(input)
					if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
						dragInput = input
					end
				end)

				game:GetService("UserInputService").InputChanged:Connect(function(input)
					if (input == dragInput and dragToggle) then
						updateInput(input)
					end
				end)
			end
		end)
		dragify(Main)
SnowmeltUI.Name = "SnowmeltUI"
SnowmeltUI.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = SnowmeltUI
Main.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Main.Position = UDim2.new(0.343322396, 0, 0.306432724, 0)
Main.Size = UDim2.new(0, 503, 0, 370)

MainUI.CornerRadius = UDim.new(0.0149999997, 1)
MainUI.Name = "MainUI"
MainUI.Parent = Main

SideBar.Name = "SideBar"
SideBar.Parent = Main
SideBar.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
SideBar.BorderSizePixel = 0
SideBar.Size = UDim2.new(0, 153, 0, 370)

TabsScrollingFrame.Name = "TabsScrollingFrame"
TabsScrollingFrame.Parent = SideBar
TabsScrollingFrame.Active = true
TabsScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabsScrollingFrame.BackgroundTransparency = 1.000
TabsScrollingFrame.BorderSizePixel = 0
TabsScrollingFrame.Position = UDim2.new(0.0542168692, 0, 0.132432431, 0)
TabsScrollingFrame.Size = UDim2.new(0, 148, 0, 313)

TabsUIGrid.Name = "TabsUIGrid"
TabsUIGrid.Parent = TabsScrollingFrame
TabsUIGrid.SortOrder = Enum.SortOrder.LayoutOrder
TabsUIGrid.CellSize = UDim2.new(0, 136, 0, 25)



MiscButton.Name = "MiscButton"
MiscButton.Parent = TabsScrollingFrame
MiscButton.BackgroundColor3 = Color3.fromRGB(3, 104, 255)
MiscButton.Size = UDim2.new(0, 200, 0, 50)
MiscButton.Font = Enum.Font.GothamSemibold
MiscButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MiscButton.TextSize = 14.000
MiscButton.Text = "Home"
MiscButton.MouseButton1Click:Connect(function()
    ButtonContainer.Visible = false
	MiscContainer.Visible = true
end)
MiscButton_2.CornerRadius = UDim.new(0.100000001, 1)
MiscButton_2.Name = "MiscButton"
MiscButton_2.Parent = MiscButton
ButtContButton.Name = "ButtContButton"
ButtContButton.Parent = TabsScrollingFrame
ButtContButton.BackgroundColor3 = Color3.fromRGB(3, 104, 255)
ButtContButton.Size = UDim2.new(0, 200, 0, 50)
ButtContButton.Font = Enum.Font.GothamSemibold
ButtContButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ButtContButton.TextSize = 14.000
ButtContButton.Text = "Scripts"
ButtContButton.MouseButton1Click:Connect(function()
    ButtonContainer.Visible = true
	MiscContainer.Visible = false
end)
ButtContButton_2.CornerRadius = UDim.new(0.100000001, 1)
ButtContButton_2.Name = "ButtContButton"
ButtContButton_2.Parent = ButtContButton
Icon.Name = "Icon"
Icon.Parent = SideBar
Icon.BackgroundColor3 = Color3.fromRGB(3, 104, 255)
Icon.BorderSizePixel = 0
Icon.Position = UDim2.new(0.0662650317, 0, 0.0270270277, 0)
Icon.Size = UDim2.new(0, 30, 0, 30)

IconCorner.CornerRadius = UDim.new(0.100000001, 1)
IconCorner.Name = "IconCorner"
IconCorner.Parent = Icon

IconText.Name = "IconText"
IconText.Parent = Icon
IconText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
IconText.BackgroundTransparency = 1.000
IconText.Size = UDim2.new(0, 30, 0, 30)
IconText.Font = Enum.Font.GothamSemibold
IconText.Text = "FE"
IconText.TextColor3 = Color3.fromRGB(255, 255, 255)
IconText.TextSize = 14.000
IconText.TextTransparency = 0.150

SideBarUI.CornerRadius = UDim.new(0.0500000007, 1)
SideBarUI.Name = "SideBarUI"
SideBarUI.Parent = SideBar


TabsScrollingFrame.ScrollBarImageTransparency = 1

Title.Name = "Title"
Title.Parent = SideBar
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.295180649, 0, 0.0270270277, 0)
Title.Size = UDim2.new(0, 102, 0, 30)
Title.Font = Enum.Font.GothamSemibold
Title.Text = "Snowmelt Hub Beta"--"Snowmelt Hub"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 11.000
Title.TextTransparency = 0.150

Tabs.Name = "Tabs"
Tabs.Parent = Main

ButtonContainer.Name = "ButtonContainer"
ButtonContainer.Parent = Main
ButtonContainer.Active = true
ButtonContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonContainer.BackgroundTransparency = 1.000
ButtonContainer.BorderSizePixel = 0
ButtonContainer.Position = UDim2.new(0.321640223, 0, 0.0270270277, 0)
ButtonContainer.Size = UDim2.new(0, 331, 0, 354)
ButtonContainer.ScrollBarThickness = 5

ButtContUIGrid.Name = "ButtContUIGrid"
ButtContUIGrid.Parent = ButtonContainer
ButtContUIGrid.SortOrder = Enum.SortOrder.LayoutOrder
function Button(name,size,callback)
	
	local ButtContainerButton = Instance.new("Frame")
	local ButtContainerUICorner = Instance.new("UICorner")
	local Image = Instance.new("ImageLabel")
	local InsideButtonBC = Instance.new("TextButton")
	local InsideButtonBCCorner = Instance.new("UICorner")
	ButtContainerButton.Name = "ButtContainerButton"
	ButtContainerButton.Parent = ButtonContainer
	ButtContainerButton.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	ButtContainerButton.BorderSizePixel = 0
	ButtContainerButton.Position = UDim2.new(0.261437923, 0, 0.0648648664, 0)
	ButtContainerButton.Size = UDim2.new(0, 100, 0, 100)

	ButtContainerUICorner.CornerRadius = UDim.new(0.0500000007, 1)
	ButtContainerUICorner.Name = "ButtContainerUICorner"
	ButtContainerUICorner.Parent = ButtContainerButton

	Image.Name = "Image"
	Image.Parent = ButtContainerButton
	Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Image.BackgroundTransparency = 1.000
	Image.Position = UDim2.new(0.144999996, 0, 0, 0)
	Image.Size = UDim2.new(0, 71, 0, 71)
	Image.Image = "rbxassetid://4384392025"
	Image.ScaleType = Enum.ScaleType.Fit

	InsideButtonBC.Name = "InsideButtonBC"
	InsideButtonBC.Parent = ButtContainerButton
	InsideButtonBC.BackgroundColor3 = Color3.fromRGB(3, 104, 255)
	InsideButtonBC.Position = UDim2.new(0.0700000003, 0, 0.709999979, 0)
	InsideButtonBC.Size = UDim2.new(0, 85, 0, 21)
	InsideButtonBC.Font = Enum.Font.GothamSemibold
	InsideButtonBC.Text = name
	InsideButtonBC.TextColor3 = Color3.fromRGB(255, 255, 255)
	InsideButtonBC.TextSize = size or 12.000
	InsideButtonBC.TextWrapped = true

	InsideButtonBCCorner.CornerRadius = UDim.new(0.0500000007, 1)
	InsideButtonBCCorner.Name = "InsideButtonBCCorner"
	InsideButtonBCCorner.Parent = InsideButtonBC
	InsideButtonBC.MouseButton1Click:Connect(callback)
end

MiscContainer.Name = "MiscContainer"
MiscContainer.Parent = Main
MiscContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MiscContainer.BackgroundTransparency = 1.000
MiscContainer.Position = UDim2.new(0.321640223, 0, 0.0270270277, 0)
MiscContainer.Size = UDim2.new(0, 331, 0, 354)
MiscContainer.Visible = false

MiscUIList.Name = "MiscUIList"
MiscUIList.Parent = MiscContainer
MiscUIList.SortOrder = Enum.SortOrder.LayoutOrder
MiscUIList.Padding = UDim.new(0, 5)

MiscButton_3.Name = "MiscButton"
MiscButton_3.Parent = MiscContainer
MiscButton_3.BackgroundColor3 = Color3.fromRGB(3, 104, 255)
MiscButton_3.Size = UDim2.new(0, 326, 0, 23)
MiscButton_3.Font = Enum.Font.GothamSemibold
MiscButton_3.Text = "Copy Discord Invite"
MiscButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
MiscButton_3.TextSize = 13.000
MiscButton_3.TextWrapped = true

MiscButtonUI.CornerRadius = UDim.new(0.0500000007, 1)
MiscButtonUI.Name = "MiscButtonUI"
MiscButtonUI.Parent = MiscButton_3

MiscLabel.Name = "MiscLabel"
MiscLabel.Parent = MiscContainer
MiscLabel.BackgroundColor3 = Color3.fromRGB(3, 104, 255)
MiscLabel.Position = UDim2.new(0, 0, 0.0793201104, 0)
MiscLabel.Size = UDim2.new(0, 326, 0, 23)

MiscLabelUI.CornerRadius = UDim.new(0.0500000007, 1)
MiscLabelUI.Name = "MiscLabelUI"
MiscLabelUI.Parent = MiscLabel

MiscLabelText.Name = "MiscLabelText"
MiscLabelText.Parent = MiscLabel
MiscLabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MiscLabelText.BackgroundTransparency = 1.000
MiscLabelText.Position = UDim2.new(0.0214723926, 0, 0, 0)
MiscLabelText.Size = UDim2.new(0, 319, 0, 23)
MiscLabelText.Font = Enum.Font.GothamSemibold
MiscLabelText.Text = "Made by Gelatek."
MiscLabelText.TextColor3 = Color3.fromRGB(255, 255, 255)
MiscLabelText.TextSize = 13.000
MiscLabelText.TextXAlignment = Enum.TextXAlignment.Left

Shadow.Name = "Shadow"
Shadow.Parent = Main
Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow.BackgroundTransparency = 1.000
Shadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
Shadow.Position = UDim2.new(-0.05, 0,-0.045, 0)
Shadow.Size = UDim2.new(0, 548, 0, 403)
Shadow.ZIndex = 0
Shadow.Image = "rbxassetid://1316045217"
Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
Shadow.ImageTransparency = 0.200

Button("Elio Biasto",12, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatek/SnowmeltHub/main/Scripts/ElioBiasto.lua"))()
end)
Button("Krystal Dance",12, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatek/SnowmeltHub/main/Scripts/KrystalDance.lua"))()
end)
Button("Carnage",12, function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Gelatek/SnowmeltHub/main/Scripts/Carnage.lua'))()
end)
Button("Banzai Bazooka",10.5, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatek/SnowmeltHub/main/Scripts/BanzaiBazooka.lua"))()
end)
Button("Neptunian V",12, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatek/SnowmeltHub/main/Scripts/NeptunianV.lua"))()
end)
Button("Gale Fighter",12, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatek/SnowmeltHub/main/Scripts/GaleFighter.lua"))()
end)
Button("Dual Ultima",12, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatek/SnowmeltHub/main/Scripts/DualUltima.lua"))()
end)
Button("Rainbow King(no)",10, function()

end)
