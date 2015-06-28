-- ************************************************	--
--   	        Fire Fighting Mod  	    		    --
--				created by Robyrq					--
-- ************************************************	--

-- ------------------------------------------------
-- Includes
-- ------------------------------------------------
require "AdjacentFreeTileFinder.lua"

-- ------------------------------------------------
-- Functions
-- ------------------------------------------------

-- ------------------------------------------------
-- CheckPlayerDistance function
-- # Checks if the player is close enough to complete the action
-- * tile = selected tile
-- * player = player number
-- ------------------------------------------------
local function checkPlayerDistance(tile, player)
    local a = tile
    local b = getSpecificPlayer(player):getSquare()

    return AdjacentFreeTileFinder.isTileOrAdjacent8(a, b)
end

-- ------------------------------------------------
-- IsSquareValid function
-- # Checks if the selected tile is on fire
-- * tile = selected tile
-- ------------------------------------------------
local function isSquareValid(tile)
    for i = 0, tile:getObjects():size()-1 do
        local object = tile:getObjects():get(i)
        if instanceof(object, 'IsoFire') then
            return true;
        end
    end
    return false;
end

-- ------------------------------------------------
-- PlayerIsOnFire function
-- # Checks if the selected payer is on fire
-- * player = player number
-- ------------------------------------------------
local function playerIsOnFire(player)
    if getSpecificPlayer(player):isOnFire() then
        return true;
    else
        return false;
    end
end

-- ------------------------------------------------
-- IsEquipmentValidForTile function
-- # Does the player have to right equipment to put out a fire
-- * player = player number
-- ------------------------------------------------
local function isEquipmentValidForTile(player)
	local inventory = getSpecificPlayer(player):getInventory()

	if inventory:contains("HCFireextinguisherfull") then
		return true;
	elseif inventory:contains("HCFireextinguisherempty") then
		getSpecificPlayer(player):Say("I need to fill this fire extinguisher with water first!");
		return false;
	else
		return false;
	end
end

-- ------------------------------------------------
-- isEquipmentValidForPlayer function
-- # Does the player have to right equipment to put out himself
-- * player = player number
-- ------------------------------------------------
local function isEquipmentValidForPlayer(player)
    local inventory = getSpecificPlayer(player):getInventory()

    if inventory:contains("HCFireblanket") then
        return true;
    else
        return false;
    end
end

-- ------------------------------------------------
-- extinguishFire function
-- # Extinguishes the selected tile and objects
-- * objects = objects array
-- * tile = selected tile
-- * player = player number
-- ------------------------------------------------
local function extinguishFire(objects, player)

    local inventory = getSpecificPlayer(player):getInventory();

    if inventory:contains("HCFireextinguisherfull") then
        local extinguisher = inventory:FindAndReturn("HCFireextinguisherfull");
        extinguisher:Use();
    end

	for i,v in ipairs(objects) do
		local tile = v:getSquare();
		
		IsoFireManager.RemoveAllOn(tile)
		
		for i = 0, tile:getObjects():size()-1 do
			local isoFire = tile:getObjects():get(i)
			if instanceof(isoFire, 'IsoFire') then
				getCell():getStaticUpdaterObjectList():remove(isoFire)
				tile:transmitRemoveItemFromSquare(isoFire)
				tile:getObjects():remove(isoFire)
				tile:getProperties():UnSet(isoFire.burning)
				break
			end
		end
    end

end

-- ------------------------------------------------
-- ExtinguishPlayer function
-- # Extinguishes the selected player
-- * player = player number
-- ------------------------------------------------
local function extinguishPlayer(player)
    local plyObject = getSpecificPlayer(player);

    local inventory = plyObject:getInventory()

    if inventory:contains("HCFireblanket") then
        inventory:Remove("HCFireblanket");
    end

    plyObject:setOnFire(false);
    plyObject:RemoveAttachedAnims();
end

-- ------------------------------------------------
-- handleRightClick function
-- # Extinguishes the selected player
-- * player = player number
-- * menu = context menu
-- * objects = worldobjects array
-- ------------------------------------------------
local function handleRightClick(player, menu, objects)

	local tile;
	
	for i,v in ipairs(objects) do
		tile = v:getSquare();
    end

    if checkPlayerDistance(tile, player) then
        if isSquareValid(tile) and isEquipmentValidForTile(player) then
            menu:addOption("Extinguish fire", objects, extinguishFire, player)
        end

        if playerIsOnFire(player) and isEquipmentValidForPlayer(player) then
            menu:addOption("Extinguish player", player, extinguishPlayer)
        end
    end
end

-- ------------------------------------------------
-- Event Hooks
-- ------------------------------------------------
Events.OnFillWorldObjectContextMenu.Add(handleRightClick);