
SET
@Entry = 190011,
@Name = "Vitalik";

DELETE FROM `creature_template` WHERE `entry` = @Entry;

INSERT INTO `creature_template` SET
    `entry` = @Entry,
    `name` = @Name,
    `subname` = 'Reagent Bank',
    `IconName` = NULL,
    `gossip_menu_id` = 0,
    `minlevel` = 6,
    `maxlevel` = 6,
    `exp` = 0,
    `faction` = 35,
    `npcflag` = 1,
    `scale` = 1,
    `rank` = 0,
    `dmgschool` = 0,
    `baseattacktime` = 2000,
    `rangeattacktime` = 0,
    `unit_class` = 1,
    `unit_flags` = 0,
    `type` = 7,
    `type_flags` = 138412032,
    `lootid` = 0,
    `pickpocketloot` = 0,
    `skinloot` = 0,
    `AIName` = '',
    `MovementType` = 0,
    `HoverHeight` = 1,
    `RacialLeader` = 0,
    `movementId` = 0,
    `RegenHealth` = 1,
    `mechanic_immune_mask` = 0,
    `flags_extra` = 2,
    `ScriptName` = 'npc_reagent_banker_account';

-- Reagent Banker - Spawns
DELETE FROM `creature` WHERE (`id1` = @Entry);
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@Entry,0,0,1,0,0,1,1,0,1655.42,-4439.59,18.598,2.0365,300,0.0,0,120,0,0,0,0,0,'',NULL),
(@Entry,0,0,530,0,0,1,1,0,9551.35,-7500.14,16.2567,0.0199656,300,0.0,0,120,0,0,0,0,0,'',NULL),
(@Entry,0,0,1,0,0,1,1,0,9949.61,2496.38,1317.52,4.73746,300,0.0,0,97,0,0,0,0,0,'',NULL),
(@Entry,0,0,530,0,0,1,1,0,-3904.94,-11596.1,-137.214,4.75951,300,0.0,0,97,0,0,0,0,0,'',NULL),
(@Entry,0,0,0,0,0,1,1,0,-8881.28,632.179,96.4776,0.327091,300,0.0,0,97,0,0,0,0,0,'',NULL),
(@Entry,0,0,0,0,0,1,1,0,-4892.00,-962.62,502.60,2.24261,300,0.0,0,97,0,0,0,0,0,'',NULL), -- Ironforge
(@Entry,0,0,1,0,0,1,1,0,-1252.57,47.6004,127.095,3.31421,300,0.0,0,97,0,0,0,0,0,'',NULL),
(@Entry,0,0,0,0,0,1,1,0,1597.11,276.688,-55.3425,4.61282,300,0.0,0,97,0,0,0,0,0,'',NULL),
(@Entry,0,0,530,0,0,1,1,0,9722.21,-7501.23,13.5123,0.663381,300,0.0,0,97,0,0,0,0,0,'',NULL),
(@Entry,0,0,530,0,0,1,1,0,-1749.1,5511.45,-12.4276,3.12819,300,0.0,0,97,0,0,0,0,0,'',NULL),
(@Entry,0,0,530,0,0,1,1,0,-1999.65,5388.08,-12.4277,1.21575,300,0.0,0,97,0,0,0,0,0,'',NULL),
(@Entry,0,0,571,0,0,1,1,0,5909.68,621.168,646.725,5.69266,300,0.0,0,120,0,0,0,0,0,'',NULL),
(@Entry,0,0,0,0,0,1,1,0,-14467.0,453.038,15.3399,0.674248,300,0.0,0,120,0,0,0,0,0,'',NULL), -- Booty Bay
(@Entry,0,0,571,0,0,1,1,0,5705.02,651.497,646.234,2.16229,300,0.0,0,120,0,0,0,0,0,'',NULL);
