scoreboard players reset * twis.cst_id
scoreboard players set $register twis.cst_id 0
function thewii:immersive/cst/vanilla/register
scoreboard players operation #min_custom_soundtrack twis.cst_id = $register twis.cst_id
scoreboard players add #min_custom_soundtrack twis.cst_id 1
function #thewii:immersive/cst/register
