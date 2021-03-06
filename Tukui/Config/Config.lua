local T, C, L = select(2, ...):unpack()

----------------------------------------------------------------
-- Default settings of Tukui
----------------------------------------------------------------

C["General"] = {
	["BackdropColor"] = {0.11, 0.11, 0.11},
	["BorderColor"] = {0, 0, 0},
	["HideShadows"] = false,
	["AFKSaver"] = true,
	["Scaling"] = {
		["Options"] = {
			["Pixel Perfection"] = "Pixel Perfection",
            ["Smallest"] = "Smallest",
			["Small"] = "Small",
			["Medium"] = "Medium",
			["Large"] = "Large",
			["Oversize"] = "Oversize",
		},

		["Value"] = "Pixel Perfection",
	},
}

C["ActionBars"] = {
	["Enable"] = true,
	["HotKey"] = false,
	["EquipBorder"] = true,
	["Macro"] = false,
	["ShapeShift"] = true,
	["Pet"] = true,
	["SwitchBarOnStance"] = true,
	["NormalButtonSize"] = 27,
	["PetButtonSize"] = 25,
	["ButtonSpacing"] = 4,
	["HideBackdrop"] = false,
	["Font"] = "Tukui Outline",
}

C["Auras"] = {
	["Enable"] = true,
	["Flash"] = true,
	["ClassicTimer"] = false,
	["HideBuffs"] = false,
	["HideDebuffs"] = false,
	["Animation"] = false,
	["BuffsPerRow"] = 12,
	["Font"] = "Tukui Outline",
}

C["Bags"] = {
	["Enable"] = true,
	["ButtonSize"] = 28,
	["Spacing"] = 4,
	["ItemsPerRow"] = 11,
	["PulseNewItem"] = true,
	["Font"] = "Tukui Outline",
}

C["Chat"] = {
	["Enable"] = true,
	["WhisperSound"] = true,
	["ShortChannelName"] = true,
	["LinkColor"] = {0.08, 1, 0.36},
	["LinkBrackets"] = true,
	["ScrollByX"] = 3,
	["TabFont"] = "Tukui",
	["ChatFont"] = "Tukui",
}

C["Cooldowns"] = {
	["Font"] = "Tukui Outline",
}

C["DataTexts"] = {
	["Battleground"] = true,
	["LocalTime"] = true,
	["Time24HrFormat"] = false,
	["NameColor"] = {1, 1, 1},
	["ValueColor"] = {1, 1, 1},
	["Font"] = "Tukui",
}

C["Merchant"] = {
	["AutoSellGrays"] = true,
	["AutoRepair"] = true,
	["UseGuildRepair"] = false,
}

C["Misc"] = {
	["ThreatBarEnable"] = true,
	["AltPowerBarEnable"] = true,
	["ExperienceEnable"] = false,
	["ReputationEnable"] = false,
	["ErrorFilterEnable"] = true,
	["AutoInviteEnable"] = false,
	["TalkingHeadEnable"] = true,
}

C["NamePlates"] = {
	["Enable"] = true,
	["Width"] = 180,
	["Height"] = 18,
	["CastHeight"] = 6,
	["Font"] = "Tukui Outline",
}

C["Party"] = {
	["Enable"] = true,
	["HealBar"] = true,
	["ShowPlayer"] = true,
	["ShowHealthText"] = true,
	["RangeAlpha"] = 0.3,
	["Font"] = "Tukui UF",
	["HealthFont"] = "Tukui UF Outline",
}

C["Raid"] = {
	["Enable"] = true,
	["HealBar"] = true,
	["AuraWatch"] = true,
	["AuraWatchTimers"] = true,
	["DebuffWatch"] = true,
	["RangeAlpha"] = 0.3,
	["ShowRessurection"] = true,
	["ShowHealthText"] = true,
	["ShowPets"] = true,
	["VerticalHealth"] = false,
	["MaxUnitPerColumn"] = 10,
	["Font"] = "Tukui UF",
	["HealthFont"] = "Tukui UF Outline",
	["GroupBy"] = {
		["Options"] = {
			["Group"] = "GROUP",
			["Class"] = "CLASS",
			["Role"] = "ROLE",
		},

		["Value"] = "GROUP",
	},
}

C["Tooltips"] = {
	["Enable"] = true,
	["HideOnUnitFrames"] = false,
	["UnitHealthText"] = true,
	["ShowSpec"] = true,
	["MouseOver"] = false,
	["HealthFont"] = "Tukui Outline",
	
}

C["Textures"] = {
	["QuestProgressTexture"] = "Tukui",
	["TTHealthTexture"] = "Tukui",
	["UFPowerTexture"] = "Tukui",
	["UFHealthTexture"] = "Tukui",
	["UFCastTexture"] = "Tukui",
	["UFPartyPowerTexture"] = "Tukui",
	["UFPartyHealthTexture"] = "Tukui",
	["UFRaidPowerTexture"] = "Tukui",
	["UFRaidHealthTexture"] = "Tukui",
	["NPHealthTexture"] = "Tukui",
	["NPPowerTexture"] = "Tukui",
	["NPCastTexture"] = "Tukui",
}

C["UnitFrames"] = {
	["Enable"] = true,
	["Portrait"] = false,
	["CastBar"] = true,
	["ComboBar"] = true,
	["UnlinkCastBar"] = false,
	["CastBarIcon"] = true,
	["CastBarLatency"] = true,
	["Smooth"] = true,
	["TargetEnemyHostileColor"] = true,
	["CombatLog"] = false,
	["HealBar"] = true,
	["TotemBar"] = true,
	["TargetAuras"] = true,
	["FocusAuras"] = true,
	["FocusTargetAuras"] = true,
	["ArenaAuras"] = true,
	["BossAuras"] = true,
	["OnlySelfDebuffs"] = false,
	["OnlySelfBuffs"] = false,
	["Threat"] = false,
	["AltPowerText"] = false,
	["Arena"] = true,
	["Boss"] = true,
	["Font"] = "Tukui UF Outline",
}
