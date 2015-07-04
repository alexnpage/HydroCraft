-- ***********************************************************
-- **                    Hydromancerx                       **
-- ***********************************************************

require "Farming/ScavengeDefinition";

getTexture("Item_HCBeetle.png");
getTexture("Item_HCBollweevil.png");
getTexture("Item_HCLadybug.png");
getTexture("Item_HCDragonfly.png");
getTexture("Item_HCGardenspider.png");
getTexture("Item_HCCaterpillar.png");
getTexture("Item_HCBumblebee.png");
getTexture("Item_HCHoneybee.png");
getTexture("Item_HCBeehive.png");

-- bugs
local HCBeetle = {};
HCBeetle.type = "Hydrocraft.HCBeetle";
HCBeetle.minCount = 1;
HCBeetle.maxCount = 2;
HCBeetle.skill = 3;
local HCBollweevil = {};
HCBollweevil.type = "Hydrocraft.HCBollweevil";
HCBollweevil.minCount = 1;
HCBollweevil.maxCount = 2;
HCBollweevil.skill = 7;
local HCLadybug = {};
HCLadybug.type = "Hydrocraft.HCLadybug";
HCLadybug.minCount = 1;
HCLadybug.maxCount = 2;
HCLadybug.skill = 2;
local HCDragonfly = {};
HCDragonfly.type = "Hydrocraft.HCDragonfly";
HCDragonfly.minCount = 1;
HCDragonfly.maxCount = 2;
HCDragonfly.skill = 9;
local HCGardenspider = {};
HCGardenspider.type = "Hydrocraft.HCGardenspider";
HCGardenspider.minCount = 1;
HCGardenspider.maxCount = 2;
HCGardenspider.skill = 3;
local HCCaterpillar = {};
HCCaterpillar.type = "Hydrocraft.HCCaterpillar";
HCCaterpillar.minCount = 1;
HCCaterpillar.maxCount = 2;
HCCaterpillar.skill = 6;
local HCBumblebee = {};
HCBumblebee.type = "Hydrocraft.HCBumblebee";
HCBumblebee.minCount = 1;
HCBumblebee.maxCount = 2;
HCBumblebee.skill = 7;
local HCHoneybee = {};
HCHoneybee.type = "Hydrocraft.HCHoneybee";
HCHoneybee.minCount = 1;
HCHoneybee.maxCount = 2;
HCHoneybee.skill = 7;
local HCBeehive = {};
HCBeehive.type = "Hydrocraft.HCBeehive";
HCBeehive.minCount = 1;
HCBeehive.maxCount = 1;
HCBeehive.skill = 10;


table.insert(scavenges.plants, HCBeetle);
table.insert(scavenges.plants, HCBollweevil);
table.insert(scavenges.plants, HCLadybug);
table.insert(scavenges.plants, HCDragonfly);
table.insert(scavenges.plants, HCGardenspider);
table.insert(scavenges.plants, HCCaterpillar);
table.insert(scavenges.plants, HCBumblebee);
table.insert(scavenges.plants, HCHoneybee);
table.insert(scavenges.plants, HCBeehive);
