-- ***********************************************************
-- **                    Hydromancerx                       **
-- ***********************************************************

require "Farming/ScavengeDefinition";

getTexture("Item_HCGooseegg.png");
getTexture("Item_HCWhitefeathers.png");
getTexture("Item_HCStripedfeather.png");
getTexture("Item_HCBluejayfeather.png");
getTexture("Item_HCFoxpoop.png");
getTexture("Item_HCDeerpoop.png");
getTexture("Item_HCBearpoop.png");
getTexture("Item_HCSheeppoop.png");
getTexture("Item_HCCowpoop.png");
getTexture("Item_HCStonearrowhead.png");

-- plants
local HCGooseegg = {};
HCGooseegg.type = "Hydrocraft.HCGooseegg";
HCGooseegg.minCount = 1;
HCGooseegg.maxCount = 1;
HCGooseegg.skill = 8;
local HCWhitefeathers = {};
HCWhitefeathers.type = "Hydrocraft.HCWhitefeathers";
HCWhitefeathers.minCount = 1;
HCWhitefeathers.maxCount = 2;
HCWhitefeathers.skill = 4;
local HCStripedfeather = {};
HCStripedfeather.type = "Hydrocraft.HCStripedfeather";
HCStripedfeather.minCount = 1;
HCStripedfeather.maxCount = 2;
HCStripedfeather.skill = 4;
local HCBluejayfeather = {};
HCBluejayfeather.type = "Hydrocraft.HCBluejayfeather";
HCBluejayfeather.minCount = 1;
HCBluejayfeather.maxCount = 2;
HCBluejayfeather.skill = 4;
local HCFoxpoop = {};
HCFoxpoop.type = "Hydrocraft.HCFoxpoop";
HCFoxpoop.minCount = 1;
HCFoxpoop.maxCount = 1;
HCFoxpoop.skill = 3;
local HCDeerpoop = {};
HCDeerpoop.type = "Hydrocraft.HCDeerpoop";
HCDeerpoop.minCount = 1;
HCDeerpoop.maxCount = 1;
HCDeerpoop.skill = 1;
local HCBearpoop = {};
HCBearpoop.type = "Hydrocraft.HCBearpoop";
HCBearpoop.minCount = 1;
HCBearpoop.maxCount = 1;
HCBearpoop.skill = 5;
local HCSheeppoop = {};
HCSheeppoop.type = "Hydrocraft.HCSheeppoop";
HCSheeppoop.minCount = 1;
HCSheeppoop.maxCount = 1;
HCSheeppoop.skill = 2;
local HCCowpoop = {};
HCCowpoop.type = "Hydrocraft.HCCowpoop";
HCCowpoop.minCount = 1;
HCCowpoop.maxCount = 1;
HCCowpoop.skill = 1;
local HCStonearrowhead = {};
HCStonearrowhead.type = "Hydrocraft.HCStonearrowhead";
HCStonearrowhead.minCount = 1;
HCStonearrowhead.maxCount = 1;
HCStonearrowhead.skill = 9;

table.insert(scavenges.forestGoods, HCGooseegg);
table.insert(scavenges.forestGoods, HCWhitefeathers);
table.insert(scavenges.forestGoods, HCStripedfeather);
table.insert(scavenges.forestGoods, HCBluejayfeather);
table.insert(scavenges.forestGoods, HCDeerpoop);
table.insert(scavenges.forestGoods, HCCowpoop);
table.insert(scavenges.forestGoods, HCStonearrowhead);
