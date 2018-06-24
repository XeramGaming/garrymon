
local function Item( name, type, hp )
    return {
        name = name,
        type = type
    }
end

ITEM_TYPE_POTION = 1
ITEM_TYPE_BALL = 2
ITEM_TYPE_STATUS = 3
ITEM_TYPE_HELDBATTLE = 4
ITEM_TYPE_BERRY = 5
ITEM_TYPE_BATTLE = 6

POTION_TYPE_HEALTH = 1
POTION_TYPE_HEALTH_PERCENT = 2
POTION_TYPE_GP = 3


local function PotionItem( name, healAmount, potionType )
    local item = Item( name, ITEM_TYPE_POTION )
    item.healAmount = healAmount
    item.potionType = potionType
    return item
end

local function StatusItem( name, statusType )
   local item = Item( name, ITEM_TYPE_STATUS )
   item.statusType = statusType
   return item
end


local function HeldBattleItem( name, itemBattle )
   local item = Item( name, ITEM_TYPE_HELDBATTLE )
   item.itemBattle = itemBattle
   return item
end

local function BerryItem( name, itemBerry, berryType )
   local item = Item( name, ITEM_TYPE_BERRY, berryType )
   item.itemBerry = itemBerry
   item.berryType = berryType
   return item
end

local function BattleItem( name, itemBattle, StatBoost )
   local item = Item( name, ITEM_TYPE_BATTLE, StatBoost )
   item.itemBattle = itemBattle
   item.StatBoost = StatBoost
   return item
end

GM.items = {
    BallGarry = Item( "Garryball", ITEM_TYPE_BALL ),
    BallFast = Item( "Fastball", ITEM_TYPE_BALL ),
    BallSuper = Item( "Superball", ITEM_TYPE_BALL ),
    BallSecure = Item( "Secureball", ITEM_TYPE_BALL ),
    BallBest = Item( "Bestball", ITEM_TYPE_BALL ),
    PotionHealing = PotionItem( "Healing Potion", 20, POTION_TYPE_HEALTH ),
    PotionRevive = PotionItem( "Revive",  50, POTION_TYPE_HEALTH_PERCENT ),
    PotionSuper = PotionItem( "Super Potion", 100, POTION_TYPE_HEALTH ),
    PotionHyper = PotionItem( "Hyper Potion", 200, POTION_TYPE_HEALTH ),
    PotionMax = PotionItem( "Max Potion", 100, POTION_TYPE_HEALTH_PERCENT ),
    PotionElixir = PotionItem( "Elixir", 10, POTION_TYPE_GP )

	stathealAntidote = StatusItem( "antidote", STATUS_ANT )
	stathealParlz = StatusItem( "Paralyze Heal", STATUS_PAR )
	stathealAwake = StatusItem( "Awakening", STATUS_AWAKE )
	stathealBurn = StatusItem( "Burn Heal", STATUS_BURNHEAL )
	stathealIce = StatusItem( "Ice Heal", STATUS_ICE )

	itemQuickClaw = BattleItem( "Quick Claw", ITEM_QUICKCLAW )
	itemFocusSash = BattleItem( "Focus Sash", ITEM_FOCUSSASH )
	itemFlameOrb = BattleItem( "Flame Orb", ITEM_FLAMEORB )
	itemRockyHelmet = BattleItem( "Rocky Helmet", ITEM_HELMET )
	itemSmokeBall = BattleItem( "Smoke Ball", ITEM_SMOKEBALL )

	BerryOran = BerryItem( "Oran Berry", ITEM_ORAN, BERRYTPYE_HEAL )
	BerryChesto = BerryItem( "Chesto Berry", ITEM_CHESTO, BERRYTYPE_AWAKE )
	BerryPinap = BerryItem( "Pinap Berry", ITEM_PINAP, BERRYTYPE_NONE )
	BerryCheri = BerryItem( "Cheri Berry", ITEM_CHERI, BERRYTYPE_PARALYZE )
	BerryPecha = BerryItem( "Pecha Berry", ITEM_PECHA, BERRYTYPE_POISON )

	BattleATK = BattleItem( "X Attack", ITEM_XATK, BATTLE_ATK )
	BattleDEF = BattleItem( "X Defence", ITEM_XDEF, BATTLE_DEF )
	BattleSPD = BattleItem( "X Speed", ITEM_XSPD, BATTLE_SPD )
	BattleSPATK = BattleItem( "X Sp. Attack", ITEM_XSPATK, BATTLE_SPATK )
	BattleSPDEF = BattleItem( "X Sp. Defence", ITEM_XSPDEF, BATTLE_SPDEF )
}
for k, v in pairs( GM.items ) do
    v.key = k
end
