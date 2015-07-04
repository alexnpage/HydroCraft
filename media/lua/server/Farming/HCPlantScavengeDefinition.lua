-- ***********************************************************
-- **                    Hydromancerx                       **
-- ***********************************************************

require "Farming/ScavengeDefinition";

getTexture("Item_HCCandleberry.png");
getTexture("Item_HCGrass.png");
getTexture("Item_HCBark.png");
getTexture("Item_HCBirchbark.png");
getTexture("Item_HCFircone.png");
getTexture("Item_HCHickorynuts.png");
getTexture("Item_HCHickoryleaves.png");
getTexture("Item_HCOakleaves.png");
getTexture("Item_HCWillowbranch.png");
getTexture("Item_HCPinebough.png");
getTexture("Item_HCFirbough.png");
getTexture("Item_Apple.png");
getTexture("Item_Cabbage.png");
getTexture("Item_Carrots.png");
getTexture("Item_Grapes.png");
getTexture("Item_Lemon.png");
getTexture("Item_Orange.png");
getTexture("Item_Potato.png");
getTexture("Item_RedRadish.png");
getTexture("Item_Tomato.png");

-- Plants
local HCCandleberry = {};
HCCandleberry.type = "Hydrocraft.HCCandleberry";
HCCandleberry.minCount = 2;
HCCandleberry.maxCount = 5;
HCCandleberry.skill = 3;
local HCGrass = {};
HCGrass.type = "Hydrocraft.HCGrass";
HCGrass.minCount = 2;
HCGrass.maxCount = 6;
HCGrass.skill = 0;
local HCBark = {};
HCBark.type = "Hydrocraft.HCBark";
HCBark.minCount = 1;
HCBark.maxCount = 2;
HCBark.skill = 0;
local HCBirchbark= {};
HCBirchbark.type = "Hydrocraft.HCBirchbark";
HCBirchbark.minCount = 1;
HCBirchbark.maxCount = 2;
HCBirchbark.skill = 0;
local HCFircone = {};
HCFircone.type = "Hydrocraft.HCFircone";
HCFircone.minCount = 1;
HCFircone.maxCount = 2;
HCFircone.skill = 2;
local HCHickorynuts = {};
HCHickorynuts.type = "Hydrocraft.HCHickorynuts";
HCHickorynuts.minCount = 1;
HCHickorynuts.maxCount = 2;
HCHickorynuts.skill = 2;
local HCHickoryleaves = {};
HCHickoryleaves.type = "Hydrocraft.HCHickoryleaves";
HCHickoryleaves.minCount = 1;
HCHickoryleaves.maxCount = 2;
HCHickoryleaves.skill = 1;
local HCOakleaves = {};
HCOakleaves.type = "Hydrocraft.HCOakleaves";
HCOakleaves.minCount = 1;
HCOakleaves.maxCount = 2;
HCOakleaves.skill = 1;
local HCWillowbranch = {};
HCWillowbranch.type = "Hydrocraft.HCWillowbranch";
HCWillowbranch.minCount = 1;
HCWillowbranch.maxCount = 2;
HCWillowbranch.skill = 1;
local HCPinebough = {};
HCPinebough.type = "Hydrocraft.HCPinebough";
HCPinebough.minCount = 1;
HCPinebough.maxCount = 2;
HCPinebough.skill = 1;
local HCFirbough = {};
HCFirbough.type = "Hydrocraft.HCFirbough";
HCFirbough.minCount = 1;
HCFirbough.maxCount = 2;
HCFirbough.skill = 1;
local HCApple = {};
HCApple.type = "Base.Apple";
HCApple.minCount = 1;
HCApple.maxCount = 1;
HCApple.skill = 10;
local HCCabbage = {};
HCCabbage.type = "Base.Cabbage";
HCCabbage.minCount = 1;
HCCabbage.maxCount = 1;
HCCabbage.skill = 10;
local HCCarrots = {};
HCCarrots.type = "Base.Carrots";
HCCarrots.minCount = 1;
HCCarrots.maxCount = 1;
HCCarrots.skill = 10;
local HCCorn = {};
HCCarrots.type = "Base.Corn";
HCCorn.minCount = 1;
HCCorn.maxCount = 1;
HCCorn.skill = 10;
local HCGrapes = {};
HCGrapes.type = "Base.Grapes";
HCGrapes.minCount = 1;
HCGrapes.maxCount = 1;
HCGrapes.skill = 10;
local HCLemon = {};
HCLemon.type = "Base.Lemon";
HCLemon.minCount = 1;
HCLemon.maxCount = 1;
HCLemon.skill = 10;
local HCOrange = {};
HCOrange.type = "Base.Orange";
HCOrange.minCount = 1;
HCOrange.maxCount = 1;
HCOrange.skill = 10;
local HCPotato = {};
HCPotato.type = "Base.Potato";
HCPotato.minCount = 1;
HCPotato.maxCount = 1;
HCPotato.skill = 10;
local HCRedRadish = {};
HCRedRadish.type = "Base.RedRadish";
HCRedRadish.minCount = 1;
HCRedRadish.maxCount = 1;
HCRedRadish.skill = 10;
local HCTomato = {};
HCTomato.type = "Base.Tomato";
HCTomato.minCount = 1;
HCTomato.maxCount = 1;
HCTomato.skill = 10;

table.insert(scavenges.plants, HCCandleberry);
table.insert(scavenges.forestGoods, HCGrass);
table.insert(scavenges.forestGoods, HCBark);
table.insert(scavenges.forestGoods, HCBirchbark);
table.insert(scavenges.forestGoods, HCFircone);
table.insert(scavenges.forestGoods, HCHickorynuts);
table.insert(scavenges.forestGoods, HCHickoryleaves);
table.insert(scavenges.forestGoods, HCOakleaves);
table.insert(scavenges.forestGoods, HCWillowbranch);
table.insert(scavenges.forestGoods, HCPinebough);
table.insert(scavenges.forestGoods, HCFirbough);
table.insert(scavenges.plants, HCApple);
table.insert(scavenges.plants, HCCabbage);
table.insert(scavenges.plants, HCCarrots);
table.insert(scavenges.plants, HCGrapes);
table.insert(scavenges.plants, HCLemon);
table.insert(scavenges.plants, HCOrange);
table.insert(scavenges.plants, HCPotato);
table.insert(scavenges.plants, HCRedRadish);
table.insert(scavenges.plants, HCTomato);
