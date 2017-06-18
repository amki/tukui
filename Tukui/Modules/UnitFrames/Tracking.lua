local T, C, L = select(2, ...):unpack()

local TukuiUnitFrames = T["UnitFrames"]

------------------------------------------------------------------------------------
-- RAID DEBUFFS (TRACKING LIST)
------------------------------------------------------------------------------------

TukuiUnitFrames.RaidDebuffsTracking = {
-- The Nighthold
	-- Skorpyron
	[GetSpellInfo(204766)] = 6, -- Energy Surge
	[GetSpellInfo(214718)] = 6, -- Acidic Fragments
	[GetSpellInfo(211801)] = 6, -- Volatile Fragments
	[GetSpellInfo(204284)] = 6, -- Broken Shard (Protection)
	[GetSpellInfo(204275)] = 6, -- Arcanoslash (Tank)
	[GetSpellInfo(211659)] = 6, -- Arcane Tether (Tank debuff)
	[GetSpellInfo(204483)] = 6, -- Focused Blast (Stun)

	-- Chronomatic Anomaly
	[GetSpellInfo(206607)] = 6, -- Chronometric Particles (Tank stack debuff)
	[GetSpellInfo(206609)] = 6, -- Time Release (Heal buff/debuff)
	[GetSpellInfo(205653)] = 6, -- Passage of Time
	[GetSpellInfo(207871)] = 6, -- Vortex (Mythic)
	[GetSpellInfo(212099)] = 6, -- Temporal Charge

	-- Trilliax
	[GetSpellInfo(206488)] = 6, -- Arcane Seepage
	[GetSpellInfo(206641)] = 6, -- Arcane Spear (Tank)
	[GetSpellInfo(206798)] = 6, -- Toxic Slice
	[GetSpellInfo(214672)] = 6, -- Annihilation
	[GetSpellInfo(214573)] = 6, -- Stuffed
	[GetSpellInfo(214583)] = 6, -- Sterilize
	[GetSpellInfo(208910)] = 6, -- Arcing Bonds
	[GetSpellInfo(206838)] = 6, -- Succulent Feast

	-- Spellblade Aluriel
	[GetSpellInfo(212492)] = 6, -- Annihilate (Tank)
	[GetSpellInfo(212494)] = 6, -- Annihilated (Main Tank debuff)
	[GetSpellInfo(212587)] = 6, -- Mark of Frost
	[GetSpellInfo(212531)] = 6, -- Mark of Frost (marked)
	[GetSpellInfo(212530)] = 6, -- Replicate: Mark of Frost
	[GetSpellInfo(212647)] = 6, -- Frostbitten
	[GetSpellInfo(212736)] = 6, -- Pool of Frost
	[GetSpellInfo(213085)] = 6, -- Frozen Tempest
	[GetSpellInfo(213621)] = 6, -- Entombed in Ice
	[GetSpellInfo(213148)] = 6, -- Searing Brand Chosen
	[GetSpellInfo(213181)] = 6, -- Searing Brand Stunned
	[GetSpellInfo(213166)] = 6, -- Searing Brand
	[GetSpellInfo(213278)] = 6, -- Burning Ground
	[GetSpellInfo(213504)] = 6, -- Arcane Fog

	-- Tichondrius
	[GetSpellInfo(206480)] = 6, -- Carrion Plague
	[GetSpellInfo(215988)] = 6, -- Carrion Nightmare
	[GetSpellInfo(208230)] = 6, -- Feast of Blood
	[GetSpellInfo(212794)] = 6, -- Brand of Argus
	[GetSpellInfo(216685)] = 6, -- Flames of Argus
	[GetSpellInfo(206466)] = 6, -- Essence of Night
	[GetSpellInfo(216024)] = 6, -- Volatile Wound
	[GetSpellInfo(216027)] = 6, -- Nether Zone
	[GetSpellInfo(216039)] = 6, -- Fel Storm
	[GetSpellInfo(216726)] = 6, -- Ring of Shadows
	[GetSpellInfo(216040)] = 6, -- Burning Soul

	-- Krosus
	[GetSpellInfo(206677)] = 6, -- Searing Brand
	[GetSpellInfo(205344)] = 6, -- Orb of Destruction

	-- High Botanist Tel'arn
	[GetSpellInfo(218503)] = 6, -- Recursive Strikes (Tank)
	[GetSpellInfo(219235)] = 6, -- Toxic Spores
	[GetSpellInfo(218809)] = 6, -- Call of Night
	[GetSpellInfo(218342)] = 6, -- Parasitic Fixate
	[GetSpellInfo(218304)] = 6, -- Parasitic Fetter
	[GetSpellInfo(218780)] = 6, -- Plasma Explosion

	-- Star Augur Etraeus
	[GetSpellInfo(205984)] = 6, -- Gravitaional Pull
	[GetSpellInfo(214167)] = 6, -- Gravitaional Pull
	[GetSpellInfo(214335)] = 6, -- Gravitaional Pull
	[GetSpellInfo(206936)] = 6, -- Icy Ejection
	[GetSpellInfo(206388)] = 6, -- Felburst
	[GetSpellInfo(206585)] = 6, -- Absolute Zero
	[GetSpellInfo(206398)] = 6, -- Felflame
	[GetSpellInfo(206589)] = 6, -- Chilled
	[GetSpellInfo(205649)] = 6, -- Fel Ejection
	[GetSpellInfo(206965)] = 6, -- Voidburst
	[GetSpellInfo(206464)] = 6, -- Coronal Ejection
	[GetSpellInfo(207143)] = 6, -- Void Ejection
	[GetSpellInfo(206603)] = 6, -- Frozen Solid
	[GetSpellInfo(207720)] = 6, -- Witness the Void
	[GetSpellInfo(216697)] = 6, -- Frigid Pulse

	-- Grand Magistrix Elisande
	[GetSpellInfo(209166)] = 6, -- Fast Time
	[GetSpellInfo(211887)] = 6, -- Ablated
	[GetSpellInfo(209615)] = 6, -- Ablation
	[GetSpellInfo(209244)] = 6, -- Delphuric Beam
	[GetSpellInfo(209165)] = 6, -- Slow Time
	[GetSpellInfo(209598)] = 6, -- Conflexive Burst
	[GetSpellInfo(209433)] = 6, -- Spanning Singularity
	[GetSpellInfo(209973)] = 6, -- Ablating Explosion
	[GetSpellInfo(209549)] = 6, -- Lingering Burn
	[GetSpellInfo(211261)] = 6, -- Permaliative Torment
	[GetSpellInfo(208659)] = 6, -- Arcanetic Ring

	-- Gul'dan
	[GetSpellInfo(210339)] = 6, -- Time Dilation
	[GetSpellInfo(180079)] = 6, -- Felfire Munitions
	[GetSpellInfo(206875)] = 6, -- Fel Obelisk (Tank)
	[GetSpellInfo(206840)] = 6, -- Gaze of Vethriz
	[GetSpellInfo(206896)] = 6, -- Torn Soul
	[GetSpellInfo(206221)] = 6, -- Empowered Bonds of Fel
	[GetSpellInfo(208802)] = 6, -- Soul Corrosion
	[GetSpellInfo(212686)] = 6, -- Flames of Sargeras

-- The Emerald Nightmare
	-- Nythendra
	[GetSpellInfo(204504)] = 6, -- Infested
	[GetSpellInfo(205043)] = 6, -- Infested mind
	[GetSpellInfo(203096)] = 6, -- Rot
	[GetSpellInfo(204463)] = 6, -- Volatile Rot
	[GetSpellInfo(203045)] = 6, -- Infested Ground
	[GetSpellInfo(203646)] = 6, -- Burst of Corruption

	-- Elerethe Renferal
	[GetSpellInfo(210228)] = 6, -- Dripping Fangs
	[GetSpellInfo(215307)] = 6, -- Web of Pain
	[GetSpellInfo(215300)] = 6, -- Web of Pain
	[GetSpellInfo(215460)] = 6, -- Necrotic Venom
	[GetSpellInfo(213124)] = 6, -- Venomous Pool
	[GetSpellInfo(210850)] = 6, -- Twisting Shadows
	[GetSpellInfo(215489)] = 6, -- Venomous Pool
	[GetSpellInfo(218519)] = 6, -- Wind Burn (Mythic)

	-- Il'gynoth, Heart of the Corruption
	[GetSpellInfo(208929)] = 6,  -- Spew Corruption
	[GetSpellInfo(210984)] = 6,  -- Eye of Fate
	[GetSpellInfo(209469)] = 5, -- Touch of Corruption
	[GetSpellInfo(208697)] = 6,  -- Mind Flay
	[GetSpellInfo(215143)] = 6,  -- Cursed Blood

	-- Ursoc
	[GetSpellInfo(198108)] = 6, -- Unbalanced
	[GetSpellInfo(197943)] = 6, -- Overwhelm
	[GetSpellInfo(204859)] = 6, -- Rend Flesh
	[GetSpellInfo(205611)] = 6, -- Miasma
	[GetSpellInfo(198006)] = 6, -- Focused Gaze
	[GetSpellInfo(197980)] = 6, -- Nightmarish Cacophony

	-- Dragons of Nightmare
	[GetSpellInfo(203102)] = 6,  -- Mark of Ysondre
	[GetSpellInfo(203121)] = 6,  -- Mark of Taerar
	[GetSpellInfo(203125)] = 6,  -- Mark of Emeriss
	[GetSpellInfo(203124)] = 6,  -- Mark of Lethon
	[GetSpellInfo(204731)] = 5, -- Wasting Dread
	[GetSpellInfo(203110)] = 5, -- Slumbering Nightmare
	[GetSpellInfo(207681)] = 5, -- Nightmare Bloom
	[GetSpellInfo(205341)] = 5, -- Sleeping Fog
	[GetSpellInfo(203770)] = 5, -- Defiled Vines
	[GetSpellInfo(203787)] = 5, -- Volatile Infection

	-- Cenarius
	[GetSpellInfo(210279)] = 6, -- Creeping Nightmares
	[GetSpellInfo(213162)] = 6, -- Nightmare Blast
	[GetSpellInfo(210315)] = 6, -- Nightmare Brambles
	[GetSpellInfo(212681)] = 6, -- Cleansed Ground
	[GetSpellInfo(211507)] = 6, -- Nightmare Javelin
	[GetSpellInfo(211471)] = 6, -- Scorned Touch
	[GetSpellInfo(211612)] = 6, -- Replenishing Roots
	[GetSpellInfo(216516)] = 6, -- Ancient Dream

	-- Xavius
	[GetSpellInfo(206005)] = 6, -- Dream Simulacrum
	[GetSpellInfo(206651)] = 6, -- Darkening Soul
	[GetSpellInfo(209158)] = 6, -- Blackening Soul
	[GetSpellInfo(211802)] = 6, -- Nightmare Blades
	[GetSpellInfo(206109)] = 6, -- Awakening to the Nightmare
	[GetSpellInfo(209034)] = 6, -- Bonds of Terror
	[GetSpellInfo(210451)] = 6, -- Bonds of Terror
	[GetSpellInfo(208431)] = 6, -- Corruption: Descent into Madness
	[GetSpellInfo(207409)] = 6, -- Madness
	[GetSpellInfo(211634)] = 6, -- The Infinite Dark
	[GetSpellInfo(208385)] = 6, -- Tainted Discharge

-- Trial of Valor
	-- Odyn
	[GetSpellInfo(227959)] = 6, -- Storm of Justice
	[GetSpellInfo(227475)] = 6, -- Cleansing Flame
	[GetSpellInfo(192044)] = 6, -- Expel Light
	[GetSpellInfo(227781)] = 6, -- Glowing Fragment

	-- Guarm
	[GetSpellInfo(228226)] = 6, -- Flame Lick
	[GetSpellInfo(228246)] = 6, -- Frost Lick
	[GetSpellInfo(228250)] = 6, -- Shadow Lick
	[GetSpellInfo(227539)] = 6, -- Fiery Phlegm
	[GetSpellInfo(227566)] = 6, -- Salty Spittle
	[GetSpellInfo(227570)] = 6, -- Dark Discharge

	-- Helya
	[GetSpellInfo(227903)] = 6, -- Orb of Corruption
	[GetSpellInfo(228058)] = 6, -- Orb of Corrosion
	[GetSpellInfo(228054)] = 6, -- Taint of the Sea
	[GetSpellInfo(193367)] = 6, -- Fetid Rot
	[GetSpellInfo(227982)] = 6, -- Bilewater Redox
	[GetSpellInfo(228519)] = 6, -- Anchor Slam
	[GetSpellInfo(202476)] = 6, -- Rabid
	[GetSpellInfo(232450)] = 6, -- Corrupted Axion

-- roi

-- Dungeon
	-- Mythic+ Affixes
	[GetSpellInfo(209858)] = 2,	-- Necrotic
	[GetSpellInfo(226512)] = 5,	-- Sanguine
	[GetSpellInfo(240559)] = 4,	-- Grievous Wound
	-- Black Rook Hold
	-- Trash Mobs
	[GetSpellInfo(194969)] = 3,	-- Soul Echoes
	[GetSpellInfo(225962)] = 3,	-- Bloodthirsty Leap
	[GetSpellInfo(200261)] = 3,	-- Bonebreaking Strike
	[GetSpellInfo(222397)] = 3,	-- Boulder Crush
	[GetSpellInfo(214001)] = 3,	-- Raven's Dive
	-- Illysanna Ravencrest
	[GetSpellInfo(197546)] = 3,	-- Brutal Glaive
	[GetSpellInfo(197484)] = 3,	-- Dark Rush
	[GetSpellInfo(197687)] = 4,	-- Eye Beams
	-- Smashspite
	[GetSpellInfo(198446)] = 3,	-- Fel Vomit
	[GetSpellInfo(198245)] = 3,	-- Brutal Haymaker
	-- Lord Ravencrest
	[GetSpellInfo(201733)] = 3,	-- Stinging Swarm
	-- Court of Stars
	-- Trash Mobs
	[GetSpellInfo(209413)] = 3,	-- Suppress
	[GetSpellInfo(209512)] = 3,	-- Disrupting Energy
	[GetSpellInfo(211473)] = 3,	-- Shadow Slash
	[GetSpellInfo(211464)] = 3,	-- Fel Detonation
	[GetSpellInfo(207980)] = 3,	-- Disintegration Beam
	[GetSpellInfo(207979)] = 3,	-- Shockwave
	[GetSpellInfo(209027)] = 3,	-- Quelling Strike
	-- Advisor Melandrus
	[GetSpellInfo(209602)] = 3,	-- Blade Surge
	[GetSpellInfo(224333)] = 4,	-- Enveloping Winds
	-- Darkheart Thicket
	-- Trash Mobs
	[GetSpellInfo(200620)] = 3,	-- Frantic Rip
	[GetSpellInfo(225484)] = 3,	-- Grievous Rip
	[GetSpellInfo(200631)] = 4,	-- Unnerving Screech
	[GetSpellInfo(201400)] = 3,	-- Dread Inferno
	[GetSpellInfo(201361)] = 4,	-- Darksoul Bite
	[GetSpellInfo(200769)] = 4,	-- Propelling Charge
	-- Archdruid Glaidalis
	[GetSpellInfo(198408)] = 4,	-- Nightfall
	[GetSpellInfo(196376)] = 3,	-- Grievous Tear
	-- Shade of Xavius
	[GetSpellInfo(200289)] = 4,	-- Growing Paranoia
	[GetSpellInfo(200329)] = 4,	-- Overwhelming Terror
	[GetSpellInfo(200238)] = 3,	-- Feed on the Weak
	-- Eye of Azshara
	-- Trash Mobs
	[GetSpellInfo(196111)] = 4,	-- Jagged Claws
	[GetSpellInfo(195561)] = 3,	-- Blinding Peck
	-- Warlord Parjesh
	[GetSpellInfo(192094)] = 3,	-- Impaling Spear
	-- Lady Hatecoil
	[GetSpellInfo(193597)] = 3,	-- Static Nova
	-- Serpentrix
	[GetSpellInfo(191855)] = 3,	-- Toxic Wound
	[GetSpellInfo(191858)] = 4,	-- Toxic Puddle
	-- King Deepbeard
	[GetSpellInfo(193018)] = 3,	-- Gaseous Bubbles
	-- Halls of Valor
	-- Trash Mobs
	[GetSpellInfo(198605)] = 3,	-- Thunderstrike
	[GetSpellInfo(199805)] = 3,	-- Crackle
	[GetSpellInfo(199050)] = 3,	-- Mortal Hew
	[GetSpellInfo(199341)] = 3,	-- Bear Trap
	[GetSpellInfo(196194)] = 3,	-- Crunch Armor
	[GetSpellInfo(199674)] = 3,	-- Wicked Dagger
	-- Hymdall
	[GetSpellInfo(193092)] = 3,	-- Bloodletting Sweep
	-- Hyrja
	[GetSpellInfo(192048)] = 3,	-- Expel Light
	-- Fenryr
	[GetSpellInfo(197556)] = 4,	-- Ravenous Leap
	[GetSpellInfo(196838)] = 3,	-- Scent of Blood
	[GetSpellInfo(196497)] = 4,	-- Ravenous Leap
	-- Odyn
	[GetSpellInfo(198088)] = 4,	-- Glowing Fragment
	-- Maw of Souls
	-- Trash Mobs
	[GetSpellInfo(201566)] = 3,	-- Swirling Muck
	[GetSpellInfo(191960)] = 5,	-- Barbed Spear
	[GetSpellInfo(199061)] = 4,	-- Hew Soul
	[GetSpellInfo(222397)] = 4,	-- Breach Armor
	[GetSpellInfo(201397)] = 4,	-- Brackwater Blast
	[GetSpellInfo(194102)] = 4,	-- Poisonous Sludge
	-- Harbaron
	[GetSpellInfo(194325)] = 3,	-- Fragment
	[GetSpellInfo(194235)] = 4,	-- Nether Rip
	-- Helya
	[GetSpellInfo(185539)] = 3,	-- Rapid Rupture
	[GetSpellInfo(195309)] = 3,	-- Swirling Water
	[GetSpellInfo(197264)] = 3,	-- Taint of the Sea
	-- Neltharion's Lair
	-- Trash Mobs
	[GetSpellInfo(226296)] = 3,	-- Piercing Shards
	[GetSpellInfo(193639)] = 4,	-- Bone Chomp
	[GetSpellInfo(202181)] = 3,	-- Stone Gaze
	[GetSpellInfo(186616)] = 3,	-- Petrified
	[GetSpellInfo(202231)] = 3,	-- Leech
	[GetSpellInfo(200154)] = 4,	-- Burning Hatred
	[GetSpellInfo(193585)] = 3,	-- Bound
	-- Rokmora
	[GetSpellInfo(192799)] = 3,	-- Choking Dust
	-- Naraxas
	[GetSpellInfo(205549)] = 3,	-- Rancid Maw
	-- The Arcway
	-- Trash Mobs
	[GetSpellInfo(202156)] = 4,	-- Corrosion
	[GetSpellInfo(210688)] = 3,	-- Collapsing Rift
	[GetSpellInfo(226269)] = 3,	-- Torment
	[GetSpellInfo(211756)] = 3,	-- Searing Wound
	[GetSpellInfo(211543)] = 3,	-- Devour
	-- Corstilax
	[GetSpellInfo(195791)] = 3,	-- Quarantine
	[GetSpellInfo(196074)] = 3,	-- Suppression Protocol
	-- Ivanyr
	[GetSpellInfo(196804)] = 3,	-- Nether Link
	[GetSpellInfo(196562)] = 3,	-- Volatile Magic
	-- Nal'tira
	[GetSpellInfo(200040)] = 4,	-- Nether Venom
	[GetSpellInfo(200227)] = 3,	-- Tangled Web
	-- Advisor Vandros
	[GetSpellInfo(220871)] = 3,	-- Unstable Mana
	-- Vault of the Wardens
	-- Trash Mobs
	[GetSpellInfo(191735)] = 3,	-- Deafening Screech
	[GetSpellInfo(210202)] = 4,	-- Foul Stench
	[GetSpellInfo(202658)] = 3,	-- Drain
	[GetSpellInfo(193164)] = 3,	-- Gift of the Doomsayer
	[GetSpellInfo(202615)] = 3,	-- Torment
	[GetSpellInfo(193969)] = 3,	-- Razors
	-- Inquisitor Tormentorum
	[GetSpellInfo(201488)] = 3,	-- Frightening Shout
	[GetSpellInfo(225416)] = 3,	-- Intercept
	[GetSpellInfo(214804)] = 3,	-- Seed of Corruption
	[GetSpellInfo(201488)] = 3,	-- Frightening Shout
	-- Glazer
	[GetSpellInfo(194945)] = 3,	-- Lingering Gaze
	-- Ash'Golm
	[GetSpellInfo(192519)] = 3,	-- Lava
	-- Cordana Felsong
	[GetSpellInfo(197541)] = 3,	-- Detonation
	[GetSpellInfo(213583)] = 4,	-- Deepening Shadows
	-- Violet Hold
	-- Trash Mobs
	[GetSpellInfo(204608)] = 3,	-- Fel Prison
	[GetSpellInfo(204901)] = 3,	-- Carrion Swarm
	[GetSpellInfo(205097)] = 3,	-- Fel Blind
	[GetSpellInfo(205096)] = 3,	-- Fel Poison
	-- Anub'esset
	[GetSpellInfo(202217)] = 3,	-- Mandible Strike
	-- Blood-Princess Thal'ena
	[GetSpellInfo(202779)] = 3,	-- Essence of the Blood Princess
	-- Millificent Manastorm
	[GetSpellInfo(201159)] = 3,	-- Delta Finger Laser X-treme
	-- Mindflayer Kaahrj
	[GetSpellInfo(197783)] = 3,	-- Shadow Crash
	-- Shivermaw
	[GetSpellInfo(201960)] = 3,	-- Ice Bomb
	[GetSpellInfo(202062)] = 3,	-- Frigid Winds
	-- Lord Malgath
	[GetSpellInfo(204962)] = 3, -- Shadow Bomb
}

------------------------------------------------------------------------------------
-- RAID BUFFS (SQUARED AURA TRACKING LIST)
------------------------------------------------------------------------------------

TukuiUnitFrames.RaidBuffsTracking = {
	PRIEST = {
		{194384, "TOPRIGHT", {1, 0, 0.75}},               -- Atonement
		{41635, "BOTTOMRIGHT", {0.2, 0.7, 0.2}},          -- Prayer of Mending
		{139, "BOTTOMLEFT", {0.4, 0.7, 0.2}},             -- Renew
		{17, "TOPLEFT", {0.81, 0.85, 0.1}, true},         -- Power Word: Shield
		{208065, "TOPLEFT", {0.2, 0.2, 0.7}, true},     -- Light of T'uure
		{47788, "LEFT", {221/255, 117/255, 0}, true},     -- Guardian Spirit
		{33206, "LEFT", {227/255, 23/255, 13/255}, true}, -- Pain Suppression
	},
	DRUID = {
		{774, "TOPRIGHT", {0.8, 0.4, 0.8}},      -- Rejuvenation
		{155777, "RIGHT", {0.8, 0.4, 0.8}},      -- Germination
		{8936, "BOTTOMLEFT", {0.2, 0.8, 0.2}},   -- Regrowth
		{33763, "TOPLEFT", {0.4, 0.8, 0.2}},     -- Lifebloom
		{48438, "BOTTOMRIGHT", {0.8, 0.4, 0}},   -- Wild Growth
		{207386, "TOP", {0.4, 0.2, 0.8}},        -- Spring Blossoms
		{102352, "LEFT", {0.2, 0.8, 0.8}},       -- Cenarion Ward
		{200389, "BOTTOM", {1, 1, 0.4}},         -- Cultivation
	},
	PALADIN = {
		{53563, "TOPRIGHT", {0.7, 0.3, 0.7}},          -- Beacon of Light
		{156910, "TOPRIGHT", {0.7, 0.3, 0.7}},         -- Beacon of Faith
		{1022, "BOTTOMRIGHT", {0.2, 0.2, 1}, true},    -- Hand of Protection
		{1044, "BOTTOMRIGHT", {0.89, 0.45, 0}, true},  -- Hand of Freedom
		{6940, "BOTTOMRIGHT", {0.89, 0.1, 0.1}, true}, -- Hand of Sacrifice
	},
	SHAMAN = {
		{61295, "TOPRIGHT", {0.7, 0.3, 0.7}},    -- Riptide
	},
	MONK = {
		{119611, "TOPLEFT", {0.8, 0.4, 0.8}},    -- Renewing Mist
		{116849, "TOPRIGHT", {0.2, 0.8, 0.2}},   -- Life Cocoon
		{124682, "BOTTOMLEFT", {0.4, 0.8, 0.2}}, -- Enveloping Mist
		{124081, "BOTTOMRIGHT", {0.7, 0.4, 0}},  -- Zen Sphere
	},
	ROGUE = {
		{57934, "TOPRIGHT", {227/255, 23/255, 13/255}}, -- Tricks of the Trade
	},
	WARRIOR = {
		{114030, "TOPLEFT", {0.2, 0.2, 1}},            -- Vigilance
		{3411, "TOPRIGHT", {227/255, 23/255, 13/255}}, -- Intervene
	},
}
