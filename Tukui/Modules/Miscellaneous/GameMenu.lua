local T, C, L = select(2, ...):unpack()

local Miscellaneous = T["Miscellaneous"]
local GameMenu = CreateFrame("Frame")
local Menu = GameMenuFrame
local Header = GameMenuFrameHeader
local Logout = GameMenuButtonLogout
local Addons = GameMenuButtonAddons

GameMenu.Buttons = {
	"Options",
	"SoundOptions",
	"UIOptions",
	"Keybindings",
	"Macros",
	"Ratings",
	"AddOns",
	"Logout",
	"Quit",
	"Continue",
	"MacOptions",
	"Help",
	"Store",
	"WhatsNew",
	"Addons"
}

function GameMenu:AddHooks()
	local Logout = GameMenuButtonLogout

	Menu:SetHeight(Menu:GetHeight() + Logout:GetHeight() - 4)
	local _, relTo, _, _, offY = Logout:GetPoint()
	if relTo ~= GameMenu.Tukui then
		GameMenu.Tukui:ClearAllPoints()
		GameMenu.Tukui:Point("TOPLEFT", relTo, "BOTTOMLEFT", 0, -1)
		Logout:ClearAllPoints()
		Logout:Point("TOPLEFT", GameMenu.Tukui, "BOTTOMLEFT", 0, offY)
	end
end

function GameMenu:EnableTukuiConfig()
	local Logout = GameMenuButtonLogout

	local Tukui = CreateFrame("Button", nil, Menu, "GameMenuButtonTemplate")
	Tukui:Size(Logout:GetWidth(), Logout:GetHeight())
	Tukui:SkinButton()
	Tukui:Point("TOPLEFT", GameMenuButtonAddons, "BOTTOMLEFT", 0, -1)
	Tukui:SetText("Tukui")
	Tukui:SetScript("OnClick", function(self)
		if (not TukuiConfigFrame) then
			TukuiConfig:CreateConfigWindow()
		end

		if TukuiConfigFrame:IsVisible() then
			TukuiConfigFrame:Hide()
		else
			TukuiConfigFrame:Show()
		end

		HideUIPanel(Menu)
	end)

	hooksecurefunc('GameMenuFrame_UpdateVisibleButtons', self.AddHooks)
	self.Tukui = Tukui
end

function GameMenu:Enable()
	local Header = GameMenuFrameHeader

	Header:SetTexture("")
	Header:ClearAllPoints()
	Header:SetPoint("TOP", Menu, 0, 7)

	Menu:SetTemplate("Transparent")
	Menu:CreateShadow()

	for i = 1, #self.Buttons do
		local Button = _G["GameMenuButton"..self.Buttons[i]]
		if (Button) then
			Button:SkinButton()
		end
	end

	if TukuiConfig then
		self:EnableTukuiConfig()
	end
end

Miscellaneous.GameMenu = GameMenu
