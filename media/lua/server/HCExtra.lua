--Initializations.
BoltsArrows = {};
BoltsArrows.SBolts = {x=0, y=1, z=2};
BoltsArrows.SArrows = {x=0, y=1, z=2};


-- ***********************************************************
-- **                    Hydromancerx                       **
-- **				 Single Item Returns.					**
-- ***********************************************************

function recipe_hcwineempty(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Base.WineEmpty");
end

function recipe_hcwineempty2(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Base.WineEmpty2");
end

function recipe_hccdcase(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Hydrocraft.HCCDcase");
end

function recipe_hcanimalcage(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Hydrocraft.HCAnimalcage");
end

function recipe_hcwoodenbucket(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Hydrocraft.HCWoodenbucket");
end

function recipe_hcwoodenbarrel(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Hydrocraft.HCWoodenbarrel");
end

function recipe_hcbakingtray(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Base.BakingTray");
end

function recipe_hcbeeswax(items, result, player)
	HCAddManySameItem("Hydrocraft.HCBeeswax", 4, player);
end 

function recipe_hcbowl(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Base.Bowl");
end

function recipe_hcjar(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Hydrocraft.HCJar");
end

function recipe_hcemptyweldingtank(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Hydrocraft.HCWeldingtankempty");
end

function recipe_hcfortune(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Base.HCFortune");
end

function recipe_hcjarlid(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Base.JarLid");
end

function recipe_hclargetuplid(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Hydrocraft.HCLargetuplid");
end

function recipe_hcmediumtuplid(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Hydrocraft.HCMediumtuplid");
end

function recipe_hcpillowcase(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Hydrocraft.HCPillowcase");
end

function recipe_hcpizzastone(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Hydrocraft.HCPizzastone");
end

function recipe_hcpot(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Base.Pot");
end

function recipe_hcrope(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Base.Rope");
end 

function recipe_hcropethick(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Hydrocraft.HCRopethick");
end 

function recipe_hcskinanimal(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Hydrocraft.HCAnimalfur");
end 

function recipe_hcsmalltuplid(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Hydrocraft.HCSmalltuplid");
end

function recipe_hctennisballcontainer(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Hydrocraft.HCTennisballcontainer");
end 

function recipe_hcwoodenstick(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Base.WoodenStick");
end

function HCInjectrabbit(items, result, player)
	local inv = player:getInventory();
	inv:AddItem("Base.DeadRabbit");
end

--Skinning functions. HCFurClothes.lua was redundant.
function HCSkinRabbit(items, result, player)
    local anim = nil;
    for i=0,items:size() - 1 do
        if instanceof(items:get(i), "Food") then
            anim = items:get(i);
            break;
        end
    end
    if anim then
        result:setBaseHunger(anim:getBaseHunger() + 0.02);
        result:setHungChange(anim:getBaseHunger() + 0.02);
		getPlayer():getInventory():AddItem("FurClothes.HCAnimalfur");
		getPlayer():getInventory():AddItem("FurClothes.HCAnimalfur");
    end
end

function HCSkinSquirrel(items, result, player)
    local anim = nil;
    for i=0,items:size() - 1 do
        if instanceof(items:get(i), "Food") then
            anim = items:get(i);
            break;
        end
    end
    if anim then
        result:setBaseHunger(anim:getBaseHunger() + 0.02);
        result:setHungChange(anim:getBaseHunger() + 0.02);
		getPlayer():getInventory():AddItem("FurClothes.AnimalFur");
    end
end

--Yossitaru
--Boredom and Unhappiness recipe modifiers.

function HC_ToyStatModifier(items, result, player)
    --Defaults to ten each.
    local boredom = 10;
    local unhappy = 10;
    
    --Combo uses are twenty each.
    if items:size() > 1 then
    boredom = 20;
    unhappy = 20;
    else
        local toy = items:get(0):getType();
    
        --Minus two to both.
        if toy == "HCBaseballglove" or toy == "HCBowlingpin" then
            boredom = 2;
            unhappy = 2;
        --Two boredom, four unhappy.
        elseif toy == "HCGardengnome" then
            boredom = 2;
            unhappy = 4;
        --Two boredom, six unhappy.
        elseif toy == "Doll" or toy == "Rubberducky" or toy == "ToyBear" or toy == "HCToyrabbit" or toy == "HCToycat" or toy == "HCToyhippo" or toy == "HCToymonkey" or toy == "HCToypanda" then
            boredom = 2;
            unhappy = 6;
        --Two boredom, ten unhappy.
        elseif toy == "Spiffo" then
            boredom = 2;
            unhappy = 10;
        --Four boredom, two unhappy.
        elseif toy == "HCCaclulator" or toy == "Dice" or toy == "HCToytop" then
            boredom = 4;
            unhappy = 2;
        --Four boredom, six unhappy.
        elseif toy == "CardDeck" then
            boredom = 4;
            unhappy = 6;
        --Six boredom, four unhappy.
        elseif toy == "HCBinoculars" or toy == "HCCammera" or toy == "Yoyo" then
            boredom = 6;
            unhappy = 4;
        --Six boredom, six unhappy.
        elseif toy == "HCLaserpointer" or toy == "HCPaddleball" or toy == "PoolBall" or toy == "HCToyrobot" then
            boredom = 6;
            unhappy = 6;
        --Six boredom, ten unhappy.
        elseif toy == "HCHarmonica" then
            boredom = 6;
            unhappy = 10;
        --Ten boredom, four unhappy.
        elseif toy == "Bricktoys" or toy == "HCToycar" or toy == "HCToyairplane" or toy == "HCToytrain" or toy == "HCToydrawing" then
            boredom = 10;
            unhappy = 4;
        --Ten boredom, six unhappy.
        elseif toy == "HCCheckers" then
            boredom = 10;
            unhappy = 6;
        end
    end
    HCDoStats(player, boredom, unhappy);
end

--Changes made to boredom and unhappyness.
function HCDoStats(player, b, u)
	player:getBodyDamage():setBoredomLevel(player:getBodyDamage():getBoredomLevel() - b);
	player:getBodyDamage():setUnhappynessLevel(player:getBodyDamage():getUnhappynessLevel() - u);
end

--Randomize findings for dirt sifting.
function HCSiftDirt(items, result, player)
    local bonus = ZombRand(1000);
    
    if bonus == 999 then
        player:getInventory():AddItem("Hydrocraft.HCGoldore");
    elseif bonus <= 998 and bonus >= 997 then
        player:getInventory():AddItem("Hydrocraft.HCSilverore");
    elseif bonus <= 996 and bonus >= 995 then
        player:getInventory():AddItem("Hydrocraft.HCStonearrowhead");
    elseif bonus <= 994 and bonus >= 990 then
        player:getInventory():AddItem("Hydrocraft.HCBauxiteore");
    elseif bonus <= 989 and bonus >= 980 then
        player:getInventory():AddItem("Hydrocraft.HCIronore");
    elseif bonus <= 979 and bonus >= 965 then
        player:getInventory():AddItem("Hydrocraft.HCLeadore");
    elseif bonus <= 964 and bonus >= 950 then
        player:getInventory():AddItem("Hydrocraft.HCTinore");
    elseif bonus <= 949 and bonus >= 930 then
        player:getInventory():AddItem("Hydrocraft.HCCopperore");
    elseif bonus <= 929 and bonus >= 900 then
        player:getInventory():AddItem("Hydrocraft.HCCoal");
    elseif bonus <= 899 and bonus >= 860 then
        player:getInventory():AddItem("Hydrocraft.HCZombiebones");
    elseif bonus <= 859 and bonus >= 810 then
        player:getInventory():AddItem("Base.Worm");
    elseif bonus <= 809 and bonus >= 760 then
        player:getInventory():AddItem("Base.SharpedStone");
    elseif bonus <= 759 and bonus >= 710 then
        player:getInventory():AddItem("Base.Stone");
    elseif bonus <= 709 and bonus >= 610 then
        player:getInventory():AddItem("Hydrocraft.HCRedclay");
    elseif bonus <= 609 and bonus >= 510 then
        player:getInventory():AddItem("Hydrocraft.HCGreyclay");
    elseif bonus <= 509 and bonus >= 505 then
        player:getInventory():AddItem("Hydrocraft.HCSaltpeter");
    elseif bonus <= 504 and bonus >= 500 then
        player:getInventory():AddItem("Hydrocraft.HCSulphur");
    end
end

--Randomize findings for Catching Bugs.
function HCBugCatch(items, result, player)
	local catch = ZombRand(1000);
	if catch >= 998 then
		player:getInventory():AddItem("Hydrocraft.HCDragonfly");
	elseif catch <= 997 and catch >= 996 then
		player:getInventory():AddItem("Hydrocraft.HCBumblebee");
	elseif catch <= 995 and catch >= 991 then
		player:getInventory():AddItem("Hydrocraft.HCGardenspider");
	elseif catch <= 990 and catch >= 986 then
		player:getInventory():AddItem("Base.Cockroach");
	elseif catch <= 985 and catch >= 981 then
		player:getInventory():AddItem("Base.Grasshopper");
	elseif catch <= 980 and catch >= 986 then
		player:getInventory():AddItem("Hydrocraft.HCBollweevil");
	elseif catch <= 975 and catch >= 966 then
		player:getInventory():AddItem("Hydrocraft.HCCaterpiller");
	elseif catch <= 965 and catch >= 956 then
		player:getInventory():AddItem("Base.Cricket");
	elseif catch <= 955 and catch >= 946 then
		player:getInventory():AddItem("Hydrocraft.HCBeetle");
	elseif catch <= 945 and catch >= 926 then
		player:getInventory():AddItem("Hydrocraft.HCLadybug");
	elseif catch <= 925 and catch >= 876 then
		player:getInventory():AddItem("Base.Worm");
	elseif catch <= 875 and catch >= 874 then
        player:getInventory():AddItem("Hydrocraft.HCHoneybee");		
	end
end

--Cookie Jar random cookies.
function HCJarCookies(items, result, player)
	local cookie = ZombRand(6);
	local count = ZombRand(10);
	if cookie == 0 then
		HCAddManySameItem("Hydrocraft.HCCookiebaked", count+1, player);
	elseif cookie == 1 then
		HCAddManySameItem("Hydrocraft.HCChipcookiebaked", count+1, player);
	elseif cookie == 2 then
		HCAddManySameItem("Hydrocraft.HCCookiewhitebaked", count+1, player);
	elseif cookie == 3 then
		HCAddManySameItem("Hydrocraft.HCCookiepeanutbutterbaked", count+1, player);
	elseif cookie == 4 then
		HCAddManySameItem("Hydrocraft.HCChocolatecookiebaked", count+1, player);
	elseif cookie == 5 then
		HCAddManySameItem("Hydrocraft.HCDoublechocolatecookiebaked", count+1, player);
	end
end

--Simple loop for lots of the same item.
function HCAddManySameItem(item, count, player)
	for x=0, count do
		player:getInventory():AddItem(item);
	end
end

function HCHappyTen(items, result, player)
	player:getBodyDamage():setUnhappynessLevel(player:getBodyDamage():getUnhappynessLevel() - 10);
end

--Checking Bowls.
function HCRecipeBowls(items, result, player)
    bowls = 0;
    for x=0, items:size()-1 do
        print(items:get(x):getType());
            if items:get(x):getType() == "HCTacosaucebowl" or items:get(x):getType() == "HCGuacamolebowl" or items:get(x):getType() == "HCSalsabowl" or items:get(x):getType() == "HCNachobowl" or items:get(x):getType() == "HCSpicypaste" or items:get(x):getType() == "HCTomatosaucebowl" or items:get(x):getType() == "HCLemonjuicebowl" or items:get(x):getType() == "HCBBQsaucebowl" then
                    bowls = bowls + 1;
            end
    end
    if bowls > 0 then
        HCAddManySameItem("Base.Bowl", bowls-1, player);
    end
end

--Random Gifts
function HCRandomGiftGet(items, result, player)
giftSet = {"Hydrocraft.HCCoal", "Hydrocraft.HCBaseball", "Hydrocraft.HCBaseballglove", "Hydrocraft.HCBasketball", "Hydrocraft.HCBinoculars", "Hydrocraft.HCBowlingball", "Base.Bricktoys", "Hydrocraft.HCCamera", "Base.CardDeck", "Hydrocraft.HCCalculator", "Hydrocraft.HCCheckers", "Base.Cube", "Base.Doll", "Hydrocraft.HCFrisbee", "Hydrocraft.HCFootball", "Base.Gardengnome", "Hydrocraft.HCGolfball", "Hydrocraft.HCHarmonica", "Hydrocraft.HCLaserpointer", "Hydrocraft.HCPaddleball", "Hydrocraft.HCRubberball", "Base.Rubberducky", "Hydrocraft.HCSoccerball", "Base.Spiffo", "Hydrocraft.HCSoftball", "Base.ToyBear", "Hydrocraft.HCTennisballcontainerfull", "Hydrocraft.HCToycar", "Hydrocraft.HCToyairplane", "Hydrocraft.HCToyrabbit", "Hydrocraft.HCToyrobot", "Hydrocraft.HCToytrain", "Hydrocraft.HCVolleyball", "Hydrocraft.HCWiffleball", "Base.Yoyo", "Hydrocraft.HCToyhippo", "Hydrocraft.HCToymonkey", "Hydrocraft.HCToycat", "Hydrocraft.HCToypanda", "Hydrocraft.HCToytop", "Hydrocraft.HCToydrawing", "Hydrocraft.HCToysterioscope", "Hydrocraft.HCToysterioscopereel", "Hydrocraft.HCCrayonbox", "Hydrocraft.HCVinylrecord1", "Hydrocraft.HCVinylrecord2", "Hydrocraft.HCVinylrecord3", "Hydrocraft.HCVinylrecord4", "Hydrocraft.HCVinylrecord5", "Hydrocraft.HCDVD", "Hydrocraft.HCDVDPlayer", "Base.Book", "Base.Whiskey", "Base.Wine", "Base.Wine2", "Base.Trousers", "Base.Vest", "Base.Shirt", "Base.Blouse", "Base.Socks", "Base.Socks2" , "Base.Shoes", "Base.Skirt", "Base.Belt", "Base.FishingRod", "Base.Headphones", "Base.Disc", "Base.Radio", "Base.Necklacepearl", "Base.Locket", "Base.Earrings", "Base.WeddingRing_Man", "Base.WeddingRing_Woman", "Base.Ring", "Base.DigitalWatch", "Base.Glasses", "Base.Glasses2", "Hydrocraft.HC20dollarbill", "Hydrocraft.HCLavalamp", "Hydrocraft.HCFlashlightoff", "Hydrocraft.HCSantahat", "Hydrocraft.HCCowboyhat", "Hydrocraft.HCTophat", "Hydrocraft.HCMittens", "Hydrocraft.HCSkimask", "Hydrocraft.HCRaincoat", "Hydrocraft.HCBra", "Hydrocraft.HCBra2", "Hydrocraft.HCBra3", "Hydrocraft.HCBra4", "Hydrocraft.HCBra5", "Hydrocraft.HCBriefs", "Hydrocraft.HCBriefs2", "Hydrocraft.HCBriefs3", "Hydrocraft.HCBriefs4", "Hydrocraft.HCBriefs5", "Hydrocraft.HCBriefs6", "Hydrocraft.HCBoxers", "Hydrocraft.HCBoxers2", "Hydrocraft.HCBoxers3", "Hydrocraft.HCBoxers4", "Hydrocraft.HCBoxers5", "Hydrocraft.HCBoxers6", "Hydrocraft.HCPanties", "Hydrocraft.HCPanties2", "Hydrocraft.HCPanties3", "Hydrocraft.HCPanties4", "Hydrocraft.HCPanties5", "Hydrocraft.HCCompass", "Hydrocraft.HCBookbedtime", "Hydrocraft.HCBookfairytale", "Hydrocraft.HCDogwhistle"};
    gift = ZombRand(#giftSet) + 1;
    player:getInventory():AddItem(giftSet[gift]);
end

--Randomized Dogs.
function HCDogCall(items, result, player)
	local pup = ZombRand(500);
    if pup >= 495 then
		player:getInventory():AddItem("Hydrocraft.HCBordercolliemale");
	elseif pup <= 494 and pup >= 490 then
		player:getInventory():AddItem("Hydrocraft.HCBordercolliefemale");
	elseif pup <= 489 and pup >= 485 then
		player:getInventory():AddItem("Hydrocraft.HCBoxermale");
	elseif pup <= 484 and pup >= 480 then
		player:getInventory():AddItem("Hydrocraft.HCBoxerfemale");
	elseif pup <= 479 and pup >= 475 then
		player:getInventory():AddItem("Hydrocraft.HCColliemale");
	elseif pup <= 474 and pup >= 470 then
		player:getInventory():AddItem("Hydrocraft.HCColliefemale");
	elseif pup <= 469 and pup >= 465 then
		player:getInventory():AddItem("Hydrocraft.HCCorgimale");
	elseif pup <= 464 and pup >= 460 then
		player:getInventory():AddItem("Hydrocraft.HCCorgifemale");
	elseif pup <= 459 and pup >= 455 then
		player:getInventory():AddItem("Hydrocraft.HCDobermanmale");
	elseif pup <= 454 and pup >= 450 then
		player:getInventory():AddItem("Hydrocraft.HCDobermanfemale");
	elseif pup <= 449 and pup >= 445 then
		player:getInventory():AddItem("Hydrocraft.HCGreatdanemale");
	elseif pup <= 444 and pup >= 440 then
		player:getInventory():AddItem("Hydrocraft.HCGreatdanefemale");
	elseif pup <= 439 and pup >= 435 then
		player:getInventory():AddItem("Hydrocraft.HCGermanshepherdmale");
	elseif pup <= 434 and pup >= 430 then
		player:getInventory():AddItem("Hydrocraft.HCGermanshepherdfemale");
	elseif pup <= 429 and pup >= 425 then
		player:getInventory():AddItem("Hydrocraft.HCHeelermale");
	elseif pup <= 424 and pup >= 420 then
		player:getInventory():AddItem("Hydrocraft.HCHeelerfemale");
	elseif pup <= 419 and pup >= 415 then
		player:getInventory():AddItem("Hydrocraft.HCHuskymale");
	elseif pup <= 414 and pup >= 410 then
		player:getInventory():AddItem("Hydrocraft.HCHuskyfemale");
	elseif pup <= 409 and pup >= 405 then
		player:getInventory():AddItem("Hydrocraft.HCLabradormale");
	elseif pup <= 404 and pup >= 400 then
		player:getInventory():AddItem("Hydrocraft.HCLabradorfemale");
	elseif pup <= 399 and pup >= 395 then
		player:getInventory():AddItem("Hydrocraft.HCRottweilermale");
	elseif pup <= 394 and pup >= 390 then
		player:getInventory():AddItem("Hydrocraft.HCRottweilerfemale");
	elseif pup <= 389 and pup >= 385 then
		player:getInventory():AddItem("Hydrocraft.HCShibainumale");
	elseif pup <= 384 and pup >= 380 then
		player:getInventory():AddItem("Hydrocraft.HCShibainufemale");
	elseif pup <= 379 and pup >= 375 then
		player:getInventory():AddItem("Hydrocraft.HCPitbullmale");
	elseif pup <= 374 and pup >= 370 then
		player:getInventory():AddItem("Hydrocraft.HCPitbullfemale");
	elseif pup <= 369 and pup >= 365 then
		player:getInventory():AddItem("Hydrocraft.HCBernesemale");	
	elseif pup <= 364 and pup >= 360 then
		player:getInventory():AddItem("Hydrocraft.HCBernesefemale");		
    end
end

--Randomized Deer.
function getDeer(items, result, player)
    deer = ZombRand(4);
    if deer == 3 then
        player:getInventory():AddItem("Hydrocraft.HCDeermale");
    elseif deer == 2 then
        player:getInventory():AddItem("Hydrocraft.HCDeerfemale");
    end
end

--Randomized Sheep.
function getSheep(items, result, player)
    sheep = ZombRand(4);
    if sheep == 3 then
        player:getInventory():AddItem("Hydrocraft.HCSheepmale");
    elseif sheep == 2 then
        player:getInventory():AddItem("Hydrocraft.HCSheepfemale");
    end
end

--Randomized Baby Rabbits.
function HCRabbitGet(items, result, player)
    weightCount = ZombRand(56);
    count = 0;
    mcount = 0;
    if weightCount == 0 then
        count = 1;
    elseif weightCount <= 2  then
        count = 2;
    elseif weightCount <= 5 then
        count = 3;
    elseif weightCount <= 9 then
        count = 4;
    elseif weightCount <= 14 then
        count = 5;
    elseif weightCount <= 20 then
        count = 6;
    elseif weightCount <= 27 then
        count = 7;
    elseif weightCount <= 34 then
        count = 8;
    elseif weightCount <= 40 then
        count = 9;
    elseif weightCount <= 45 then
        count = 10;
    elseif weightCount <= 49 then
        count = 11;
    elseif weightCount <= 52 then
        count = 12;
    elseif weightCount <= 54 then
        count = 13;
    elseif weightCount == 55 then
        count = 14;
    end
	--Randomize gender.
    for x=0, count-1 do
        gender = ZombRand(2);
        if gender == 0 then
            mcount = mcount + 1;
        end
    end
	--Add males to inventory, if any.
    if mcount > 0 then
        HCAddManySameItem("Hydrocraft.HCRabbitmale", mcount-1, player);
    end
	--Add females to inventory, if any.
    if mcount < count then
        HCAddManySameItem("Hydrocraft.HCRabbitfemale", (count-mcount)-1, player);
    end
end

--Inject with Zed Blood
function HCInjectyourself(items, result, player)
    player:getBodyDamage():setInfectionLevel(1);
end

--Arrows and Bolts in Corpses
function BoltsArrows.arrowBoltHit(wielder, char, weapon)
    w = weapon:getType();
    i = char:getInventory();
    add = false;
    
	--80% chance of recovery.
    if ZombRand(10) > 1 then
        add = true;
    end
    --Initialize bolt count.
    if BoltsArrows.SBolts[i] == nil then
        BoltsArrows.SBolts[i] = 0;
    end
    --Initialize arrow count.
    if BoltsArrows.SArrows[i] == nil then
        BoltsArrows.SArrows = 0;
    end
    --Count recovered bolts and arrows.
    if w == "HCCrossbow" and add then
        BoltsArrows.SBolts[i] = BoltsArrows.SBolts[i] + 1;
    elseif w == "HCLongbow" and add then
        BoltsArrows.SArrows[i] = BoltsArrows.SArrows[i] + 1;
    end
end

function BoltsArrows.arrowBoltSpawn(roomName, containerName, containerID)
    if BoltsArrows.SBolts[containerID] ~= nil and BoltsArrows.SBolts[containerID] > 0 then
        for x = 0, BoltsArrows.SBolts[containerID] - 1 do
            containerID:AddItem("Hydrocraft.HCXbowbolt");
        end
    end
    if BoltsArrows.SArrows[containerID] ~= nil and BoltsArrows.SArrows[containerID] > 0 then
        for x = 0, BoltsArrows.SArrows[containerID] - 1 do
            containerID:addItem("Hydrocraft.HCArrow");
        end
    end
end

Events.OnWeaponHitCharacter.Add(BoltsArrows.arrowBoltHit);
Events.OnFillContainer.Add(BoltsArrows.arrowBoltSpawn);

