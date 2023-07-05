Config = {}

Config.Props = {   --the prop list of bins and dumpsters. i added all of the bind and dumpsters, that you can find in the game, so dont worry!
    `prop_dumpster_4b`,
    `prop_dumpster_4a`,
    `prop_dumpster_3a`,
    `prop_dumpster_02b`,
    `prop_dumpster_02a`,
    `prop_dumpster_01a`,
    `prop_bin_01a`,
    'prop_bin_07b',
    'prop_bin_delpiero_b',
    'zprop_bin_01a_old',
    'prop_recyclebin_03_a',
    'prop_recyclebin_03_a',
    'prop_bin_07c',
    `prop_snow_dumpster_01`,
    'prop_bin_10b',
    'prop_bin_10a,',
    'prop_bin_11a',
    'prop_bin_06a',
    'prop_bin_07d',
    'prop_bin_11b',
    'prop_bin_04a',
    'prop_recyclebin_04_a',
    'prop_recyclebin_02_c',
    'prop_recyclebin_02b',
    'prop_bin_delpiero',
    'prop_bin_09a',
    'prop_bin_08a',
    'prop_recyclebin_04_b',
    'prop_bin_02a',
    'prop_bin_03a',
    'prop_recyclebin_02_d',
    'prop_bin_12a',
    'prop_bin_07a',
    'prop_recyclebin_01a',
    'prop_bin_05a'

}

-- #reset / reset time config

Config.ResetOnReboot = false  -- reset on server restart, but i defenetly dont recommend this, cuz its laggy and 
--the notification dosen't show what you got for the bin. And the bins reset on server restar automaticly :D So its an abadoned future...

Config.ResetTime = 30  -- In minutes

--#minigame config (ignor this. U could use other scripts.)
Config.Minigame = 'ps-ui' --ps ui. minigame type. Can use other minigames like maze or something.
Config.ProgressTime = 8 --progress time in second, you can change it, but i recommend this 8s.


--# loot config
Config.CanLootMultiple = true  -- can multiply loot
Config.MaxLootItem = 3  --Max item that a player can loot in one dumpsert or bin
Config.Loottable = {
    [1] = {item = 'beer',         chances = 1,    min = 1,    max = 1}
    --[1] = {item = 'beer',         chances = 1,    min = 1,    max = 1} you can add more items, but dont
    --forget to change the first numer in relevance to 1-2-3 etc. and ad a "," in the end of the lines.
}