Config = {}

Config.Props = {   --the prop list of bins and dumpsters. i added all of the bins and dumpsters, that you can find in the game, so dont worry!
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
Config.ResetOnReboot = false  --if this enabled, you dont need the lover config, cuz its reloads only at server restart
Config.ResetTime = 30  --if this enabled, you dont need the upper config, cuz its reloads every 30 minutes

--#minigame config (ignor this. U could use other scripts.) or if you dont want use minigame, then just put two line befor the config.minigame
Config.Minigame = 'ps-ui' --this either can be ps-ui or ox!
Config.ProgressTime = 8 --progress time in second, you can change it, but i recommend this 8s.

--#target options
Config.target = 'ox' --THis can be qb or ox! I recommend everyone to use ox!

--# loot config
Config.CanLootMultiple = true  -- can multiply loot if this false then can crash te script so if you dont want multiple items ten change te loottable max to 1 
Config.MaxLootItem = 3  --Max item that a player can loot in one dumpsert or bin
Config.Loottable = {
    [1] = {item = 'beer',         chances = 3,    min = 1,    max = 1}, --the chance is at % 3 is 30% and 1 is 100%
    --[1] = {item = 'beer',         chances = 1,    min = 1,    max = 1} you can add more items, but dont
    --forget to change the first number in relevance to 1-2-3 etc. and ad a "," in the end of the lines.
}