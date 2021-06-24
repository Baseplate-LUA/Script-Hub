-- Gui to Lua
-- Version: 3.2
-- Skyware UI Libary

--<< Documentation >>--

--<< CreateWindow() - This Creates A Window In Which You Can Use Other Functions In. >>-- 

--<< CreateButton() - This Creates A Button That Can Be Connected To A Function To Execute On Click. >>-- 

--<< Documentation >>--

local Libary = {}

if game.CoreGui:FindFirstChild("SkywareDaddy") then
	game.CoreGui:FindFirstChild("SkywareDaddy"):Destroy()
end

--<< Variables >>--

local TweenService = game:GetService("TweenService")

local SidebarOpen = true
local SideBarDB = false

--<< Variables >>--

--<< CreateWindow() >>--

function Libary:CreateWindow()
	local SkywareDaddy = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local Corner = Instance.new("UICorner")
	Sidebar = Instance.new("Frame")
	local Corner_2 = Instance.new("UICorner")
	local Sidebar_2 = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	SideContainer = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	Script = Instance.new("Frame")

	--<< Properties >>--

	SkywareDaddy.Name = "SkywareDaddy"
	SkywareDaddy.Parent = game.CoreGui
	SkywareDaddy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = SkywareDaddy
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(30, 32, 36)
	Main.BorderSizePixel = 0
	Main.ClipsDescendants = true
	Main.Position = UDim2.new(0.499732912, 0, 0.46793589, 0)
	Main.Size = UDim2.new(0, 609, 0, 352)

	Corner.Name = "Corner"
	Corner.Parent = Main

	Sidebar.Name = "Sidebar"
	Sidebar.Parent = Main
	Sidebar.AnchorPoint = Vector2.new(0.5, 0.5)
	Sidebar.BackgroundColor3 = Color3.fromRGB(40, 42, 48)
	Sidebar.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Sidebar.Position = UDim2.new(0.102, 0, 0.5, 0)
	Sidebar.Size = UDim2.new(0.203612462, 0, 1, 0)

	Corner_2.Name = "Corner"
	Corner_2.Parent = Sidebar

	Sidebar_2.Name = "Sidebar"
	Sidebar_2.Parent = Sidebar
	Sidebar_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Sidebar_2.BackgroundColor3 = Color3.fromRGB(40, 42, 48)
	Sidebar_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Sidebar_2.BorderSizePixel = 0
	Sidebar_2.Position = UDim2.new(0.898522258, 0, 0.5, 0)
	Sidebar_2.Size = UDim2.new(0.197044328, 0, 1, 0)

	Title.Name = "Title"
	Title.Parent = Sidebar
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.0564516149, 0, 0.0665024593, 0)
	Title.Size = UDim2.new(0.870967984, 0, 0.0689285323, 0)
	Title.Font = Enum.Font.SourceSans
	Title.Text = "Skyware"
	Title.TextColor3 = Color3.fromRGB(199, 199, 199)
	Title.TextScaled = true
	Title.TextSize = 24.000
	Title.TextWrapped = true

	SideContainer.Name = "SideContainer"
	SideContainer.Parent = Sidebar
	SideContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SideContainer.BackgroundTransparency = 1.000
	SideContainer.Position = UDim2.new(0.0806451663, 0, 0.173295453, 0)
	SideContainer.Size = UDim2.new(0.838709712, 0, 0.798295438, 0)

	UIListLayout.Parent = SideContainer
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	Script.Name = "Script"
	Script.Parent = Main
	Script.AnchorPoint = Vector2.new(0.5, 0.5)
	Script.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Script.BackgroundTransparency = 1.000
	Script.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Script.Position = UDim2.new(0.602134585, 0, 0.5, 0)
	Script.Size = UDim2.new(0.794088602, 0, 1, 0)

	--<< Properties >>--

	--<< Scripts >>--

	--<< Scripts >>--

end

--<< CreateWindow() >>--

--<< CreateTab() >>--

function Libary:CreateTab(TabName)

	local TextButton = Instance.new("TextButton")
	local TextLabel = Instance.new("TextLabel")
	local Window = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local UIPadding = Instance.new("UIPadding")

	--<< Properties >>--

	TextButton.Parent = SideContainer
	TextButton.Name = TabName
	TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
	TextButton.BackgroundColor3 = Color3.fromRGB(40, 42, 48)
	TextButton.BackgroundTransparency = 0.500
	TextButton.BorderSizePixel = 0
	TextButton.Size = UDim2.new(1, 0, 0, 35)
	TextButton.Font = Enum.Font.SourceSans
	TextButton.Text = ""
	TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.TextSize = 14.000

	TextLabel.Parent = TextButton
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0, 0, 0.139999822, 0)
	TextLabel.Size = UDim2.new(1, 0, 0.685714304, 0)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = TabName
	TextLabel.TextColor3 = Color3.fromRGB(130,130,130)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true

	Window.Name = TabName
	Window.Parent = Script
	Window.AnchorPoint = Vector2.new(0, 0)
	Window.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Window.BackgroundTransparency = 1.000
	Window.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Window.Position = UDim2.new(0.087, 0,0, 0)
	Window.Size = UDim2.new(0.827, 0,1, 0)
	Window.Visible = false
	Window.ScrollBarImageTransparency = 1
	Window.ScrollBarThickness = 0
	Window.CanvasSize = UDim2.new(0,0,0,0)

	UIListLayout.Parent = Window
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	UIPadding.Parent = Script
	UIPadding.PaddingTop = UDim.new(0, 15)

	UIListLayout.Padding = UDim.new(0,5)

	--<< Properties >>--

	--<< Scripts >>--

	local Toggled = false

	TextButton.MouseEnter:Connect(function()
		if Toggled == false then
			TweenService:Create(TextLabel, TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(199,199,199)}):Play()
		end
	end)

	TextButton.MouseLeave:Connect(function()
		if Toggled == false then
			TweenService:Create(TextLabel, TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(130,130,130)}):Play()
		end
	end)

	TextButton.MouseButton1Down:Connect(function()
		if Script:FindFirstChild(TabName) then
			if Script:FindFirstChild(TabName).Visible == false then
				for _, v in pairs(Script:GetChildren()) do
					if v:IsA("ScrollingFrame") then
						v.Visible = false
					end
				end

				for _, v in pairs(SideContainer:GetChildren()) do
					if v:IsA("TextButton") then
						TweenService:Create(v.TextLabel, TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(130,130,130)}):Play()
					end
				end 

				if Script:FindFirstChild(TabName) then
					if Script:FindFirstChild(TabName).Visible == false then
						Toggled = true
						TweenService:Create(TextLabel, TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(199,199,199)}):Play()
						Script:FindFirstChild(TabName).Visible = true
					end
				end
			end
		end
	end)
	--<< Scripts >>--

	--<< CreateTab() >>--	

	local Lib = {}

	--<< CreateButton() >>--	

	function Lib:CreateButton(ButtonText, callback)

		local Debounce = false
		local CanChange = true

		local TextButton = Instance.new("TextButton")
		local TextLabel = Instance.new("TextLabel")
		local UICorner = Instance.new("UICorner")

		callback = callback or function() end	

		ButtonText = ButtonText or "No Text Specified"

		TextButton.Parent = Window
		TextButton.BackgroundColor3 = Color3.fromRGB(40, 42, 48)
		TextButton.Position = UDim2.new(0, 0, 0.0426136367, 0)
		TextButton.Size = UDim2.new(1, 0, -0.00945542101, 40)
		TextButton.Font = Enum.Font.SourceSans
		TextButton.Text = ""
		TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.TextSize = 15.000
		TextButton.AutoButtonColor = true

		TextLabel.Parent = TextButton
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.Position = UDim2.new(0, 0, 0.18859905, 0)
		TextLabel.Size = UDim2.new(1, 0, 0.622802079, 0)
		TextLabel.Font = Enum.Font.SourceSans
		TextLabel.Text = ButtonText
		TextLabel.TextColor3 = Color3.fromRGB(130,130,130)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14.000
		TextLabel.TextWrapped = true

		Window.CanvasSize = Window.CanvasSize + UDim2.new(0,0,0,35)

		UICorner.Parent = TextButton

		TextButton.MouseEnter:Connect(function()
			if CanChange == true then
				TweenService:Create(TextLabel, TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(199,199,199)}):Play()
			end
		end)

		TextButton.MouseLeave:Connect(function()
			if CanChange == true then
				TweenService:Create(TextLabel, TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(130,130,130)}):Play()
			end
		end)

		TextButton.MouseButton1Down:Connect(function()
			if Debounce == false then
				Debounce = true
				CanChange = false
				if TextLabel.TextColor3 == Color3.fromRGB(199,199,199) then
					pcall(callback)
					TweenService:Create(TextLabel, TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(199,199,199)}):Play()
					wait(0.2)
					TweenService:Create(TextLabel, TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(130,130,130)}):Play()
					wait(0.2)
					TweenService:Create(TextLabel, TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(199,199,199)}):Play()
				end
				CanChange = true
				Debounce = false
			end
		end)
	end

	--<< CreateButton() >>--

	--<< CreateSlider() >>--

	function Lib:CreateSlider(SliderName, max, rounddp, callback)

		callback = callback or function() end

		max = max or 100

		SliderName = SliderName or "No Name Specified"

		local val = 0

		local Slider = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local TextLabel = Instance.new("TextLabel")
		local TextButton = Instance.new("TextButton")
		local UICorner_2 = Instance.new("UICorner")
		local TextLabel_2 = Instance.new("TextLabel")
		local Frame = Instance.new("Frame")
		local UICorner_3 = Instance.new("UICorner")

		--<< Properties >>--

		Slider.Name = "Slider"
		Slider.Parent = Window
		Slider.BackgroundColor3 = Color3.fromRGB(40, 42, 48)
		Slider.Size = UDim2.new(1, 0, -0, 35)

		UICorner.Parent = Slider

		TextLabel.Parent = Slider
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.Position = UDim2.new(0, 0, 0.188598633, 0)
		TextLabel.Size = UDim2.new(0.370601177, 0, 0.622802079, 0)
		TextLabel.Font = Enum.Font.SourceSans
		TextLabel.Text = SliderName
		TextLabel.TextColor3 = Color3.fromRGB(235, 235, 235)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14.000
		TextLabel.TextWrapped = true

		TextButton.Parent = Slider
		TextButton.BackgroundColor3 = Color3.fromRGB(30, 32, 36)
		TextButton.Position = UDim2.new(0.370999992, 0, 0.0860000029, 0)
		TextButton.Size = UDim2.new(0.601999998, 0, -0.171000004, 35)
		TextButton.AutoButtonColor = false
		TextButton.Font = Enum.Font.SourceSans
		TextButton.Text = ""
		TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.TextSize = 14.000

		UICorner_2.Parent = TextButton

		TextLabel_2.Parent = TextButton
		TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel_2.BackgroundTransparency = 1.000
		TextLabel_2.Position = UDim2.new(0, 0, 0.188598633, 0)
		TextLabel_2.Size = UDim2.new(0.1, 0, 0.622802079, 0)
		TextLabel_2.Font = Enum.Font.SourceSans
		TextLabel_2.Text = "0"
		TextLabel_2.TextColor3 = Color3.fromRGB(235, 235, 235)
		TextLabel_2.TextScaled = true
		TextLabel_2.TextSize = 14.000
		TextLabel_2.TextWrapped = true

		Window.CanvasSize = Window.CanvasSize + UDim2.new(0,0,0,35)

		Frame.Parent = TextButton
		Frame.BackgroundColor3 = Color3.fromRGB(199, 199, 199)
		Frame.BackgroundTransparency = 0.800
		Frame.Size = UDim2.new(0, 0, 1, 0)

		UICorner_3.Parent = Frame

		--<< Properties >>--

		--<< Scripts >>--

		local UserInputService = game:GetService("UserInputService")
		local Dragging = false
		TextButton.MouseButton1Down:Connect(function()
			Dragging = true
		end)

		local function round(number, decimalPlaces)
			return math.round(number * 10^decimalPlaces) * 10^-decimalPlaces
		end

		UserInputService.InputChanged:Connect(function()
			if Dragging then
				local MousePos = UserInputService:GetMouseLocation()+Vector2.new(0,36)
				local RelPos = MousePos - TextButton.AbsolutePosition
				local Precent = math.clamp(RelPos.X/TextButton.AbsoluteSize.X,0,1)
				local FloorD = math.floor(Precent)

				Frame.Size = UDim2.new(Precent,0,1,0)
				TextLabel_2.Text = round(max * Precent, 0)

				local Num = round(max * Precent / 1, rounddp)
				TextLabel_2.Text = Num
				callback(Num)
			end
		end)

		UserInputService.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				Dragging = false
			end
		end)


		--<< Scripts >>--
	end

	--<< CreateSlider() >>--

	--<< CreateDivider() >>--
	function Lib:CreateDivider()
		local Divide = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local Divide_2 = Instance.new("Frame")
		local UICorner_2 = Instance.new("UICorner")

		--Properties:

		Divide.Name = "Divider"
		Divide.Parent = Window
		Divide.BackgroundColor3 = Color3.fromRGB(40, 42, 48)
		Divide.BackgroundTransparency = 1.000
		Divide.Size = UDim2.new(1, 0, 0, 35)

		UICorner.Parent = Divide

		Divide_2.Name = "Divide"
		Divide_2.Parent = Divide
		Divide_2.BackgroundColor3 = Color3.fromRGB(195, 195, 195)
		Divide_2.Position = UDim2.new(0, 0, 0.485713422, 0)
		Divide_2.Size = UDim2.new(1, 0, -0.945714474, 35)

		UICorner_2.Parent = Divide_2

		Window.CanvasSize = Window.CanvasSize + UDim2.new(0,0,0,35)
	end
	--<< CreateDivider() >>--

	--<< CreateSubtitle() >>--

	function Lib:CreateSub(Text)
		local Sub = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local TextLabel = Instance.new("TextLabel")

		--Properties:

		Sub.Name = "SubTitle"
		Sub.Parent = Window
		Sub.BackgroundColor3 = Color3.fromRGB(40, 42, 48)
		Sub.Size = UDim2.new(1, 0, 0, 35)

		UICorner.Parent = Sub

		TextLabel.Parent = Sub
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.Position = UDim2.new(0, 0, 0.188598633, 0)
		TextLabel.Size = UDim2.new(1, 0, 0.7, 0)
		TextLabel.Font = Enum.Font.SourceSansSemibold
		TextLabel.Text = Text
		TextLabel.TextColor3 = Color3.fromRGB(235, 235, 235)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14.000
		TextLabel.TextWrapped = true

		Window.CanvasSize = Window.CanvasSize + UDim2.new(0,0,0,35)

	end

	--<< CreateSubtitle() >>--

	--<< CreateToggle() >>--

	function Lib:CreateToggle(Text, callback)

		callback = callback or function() end

		local Toggleed = false
		local Debounce = false

		local Toggle = Instance.new("Frame")

		Window.CanvasSize = Window.CanvasSize + UDim2.new(0,0,0,35)

		local UICorner = Instance.new("UICorner")
		local TextLabel = Instance.new("TextLabel")
		local ToggleBttn = Instance.new("TextButton")
		local UICorner_2 = Instance.new("UICorner")
		local Inner = Instance.new("Frame")
		local UICorner_3 = Instance.new("UICorner")



		--Properties:

		Toggle.Name = "Toggle"
		Toggle.Parent = Window
		Toggle.BackgroundColor3 = Color3.fromRGB(40, 42, 48)
		Toggle.Size = UDim2.new(1, 0, 0, 35)

		UICorner.Parent = Toggle

		TextLabel.Parent = Toggle
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.Position = UDim2.new(0, 0, 0.188599065, 0)
		TextLabel.Size = UDim2.new(0.740659356, 0, 0.622802079, 0)
		TextLabel.Font = Enum.Font.SourceSans
		TextLabel.Text = Text
		TextLabel.TextColor3 = Color3.fromRGB(235, 235, 235)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14.000
		TextLabel.TextWrapped = true

		ToggleBttn.Name = "ToggleBttn"
		ToggleBttn.Parent = Toggle
		ToggleBttn.BackgroundColor3 = Color3.fromRGB(30, 32, 36)
		ToggleBttn.ClipsDescendants = true
		ToggleBttn.Position = UDim2.new(0.828571975, 0, 0.131456211, 0)
		ToggleBttn.Size = UDim2.new(0.154429764, 0, -0.273599148, 35)
		ToggleBttn.AutoButtonColor = false
		ToggleBttn.Font = Enum.Font.SourceSans
		ToggleBttn.Text = ""
		ToggleBttn.TextColor3 = Color3.fromRGB(0, 0, 0)
		ToggleBttn.TextSize = 14.000

		UICorner_2.Parent = ToggleBttn

		Inner.Name = "Inner"
		Inner.Parent = ToggleBttn
		Inner.BackgroundColor3 = Color3.fromRGB(0, 255, 127)
		Inner.Position = UDim2.new(-1.00385022, 0, 0, 0)
		Inner.Size = UDim2.new(1, 0, 1, 0)

		UICorner_3.Parent = Inner

		ToggleBttn.MouseButton1Down:Connect(function()
			if Debounce == false then
				Debounce = true

				if Toggleed == false then
					TweenService:Create(Inner, TweenInfo.new(1), {Position = UDim2.new(0,0,0,0)}):Play()
					callback(true)
					wait(1)
					Toggleed = true
					Debounce = false
					return
				end
				if Toggleed == true then
					TweenService:Create(Inner, TweenInfo.new(1), {Position = UDim2.new(-1,0,0,0)}):Play()
					callback(false)
					wait(1)
					Toggleed = false
					Debounce = false
					return
				end

			end
		end)
	end

	--<< CreateToggle() >>--

	return Lib
end

Libary:CreateWindow()
