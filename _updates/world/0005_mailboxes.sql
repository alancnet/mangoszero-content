-- Host: localhost    Database: world
-- ---------------------------------------------------------------------------
-- Add mailboxes to the world database
--
-- This update will populate the world database with data required to test the
-- Azeroth Postal Service.
--
-- Global Unique Identifier ranges used:
--
-- - Mailboxes, Azeroth: 201-500

-- Provide variables for game objects ----------------------------------------
SET @GO_TYPE_MAILBOX                            = 19;

-- Update world database version ---------------------------------------------
UPDATE `db_version`
SET
    `version`             = 'mangos-zero - version 0.1.5 (development)',
    `creature_ai_version` = 'mangos-zero Artificial Creature Intelligence - version 0.1.5 (development)'
WHERE
    `version`             = 'mangos-zero - version 0.1.4 (development)'
;

-- Insert mailbox templates --------------------------------------------------
INSERT INTO `gameobject_template`
    (`entry`, `type`,                `displayId`, `name`)
VALUES
     (140908, @GO_TYPE_MAILBOX,     1727,         "Mailbox"                  )
    ,(142075, @GO_TYPE_MAILBOX,     1907,         "Mailbox"                  )
    ,(142089, @GO_TYPE_MAILBOX,     1907,         "Mailbox"                  )
    ,(142093, @GO_TYPE_MAILBOX,     1907,         "Mailbox"                  )
    ,(142094, @GO_TYPE_MAILBOX,     1907,         "Mailbox"                  )
    ,(142095, @GO_TYPE_MAILBOX,     1907,         "Mailbox"                  )
    ,(142102, @GO_TYPE_MAILBOX,     1947,         "Mailbox"                  )
    ,(142103, @GO_TYPE_MAILBOX,     1947,         "Mailbox"                  )
    ,(142109, @GO_TYPE_MAILBOX,     1948,         "Mailbox"                  )
    ,(142110, @GO_TYPE_MAILBOX,     1948,         "Mailbox"                  )
    ,(142111, @GO_TYPE_MAILBOX,     1948,         "Mailbox"                  )
    ,(142117, @GO_TYPE_MAILBOX,     1948,         "Mailbox"                  )
    ,(142119, @GO_TYPE_MAILBOX,     1948,         "Mailbox"                  )
    ,(143981, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(143982, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(143983, @GO_TYPE_MAILBOX,     2690,         "Mailbox"                  )
    ,(143984, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(143985, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(143986, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(143987, @GO_TYPE_MAILBOX,     1907,         "Mailbox"                  )
    ,(143988, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(143989, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(143990, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(144011, @GO_TYPE_MAILBOX,     1947,         "Mailbox"                  )
    ,(144112, @GO_TYPE_MAILBOX,     2190,         "Mailbox"                  )
    ,(144125, @GO_TYPE_MAILBOX,     2190,         "Mailbox"                  )
    ,(144126, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(144127, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(144128, @GO_TYPE_MAILBOX,     1907,         "Mailbox"                  )
    ,(144129, @GO_TYPE_MAILBOX,     1907,         "Mailbox"                  )
    ,(144130, @GO_TYPE_MAILBOX,     1907,         "Mailbox"                  )
    ,(144131, @GO_TYPE_MAILBOX,     1907,         "Mailbox"                  )
    ,(144179, @GO_TYPE_MAILBOX,     2190,         "Mailbox"                  )
    ,(144570, @GO_TYPE_MAILBOX,     1907,         "Mailbox"                  )
    ,(153578, @GO_TYPE_MAILBOX,     2690,         "Mailbox"                  )
    ,(153716, @GO_TYPE_MAILBOX,     1907,         "Mailbox"                  )
    ,(157637, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(163313, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(163645, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(164618, @GO_TYPE_MAILBOX,     1907,         "Mailbox"                  )
    ,(164840, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(171556, @GO_TYPE_MAILBOX,     1947,         "Mailbox"                  )
    ,(171699, @GO_TYPE_MAILBOX,     1947,         "Mailbox"                  )
    ,(171752, @GO_TYPE_MAILBOX,     2190,         "Mailbox"                  )
    ,(173047, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(173221, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(175668, @GO_TYPE_MAILBOX,     2190,         "Postbox"                  )
    ,(175864, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(176319, @GO_TYPE_MAILBOX,     1948,         "Mailbox"                  )
    ,(176324, @GO_TYPE_MAILBOX,     2690,         "Mailbox"                  )
    ,(176404, @GO_TYPE_MAILBOX,     2190,         "Mailbox"                  )
    ,(177044, @GO_TYPE_MAILBOX,     4591,         "Mailbox"                  )
    ,(178864, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(179895, @GO_TYPE_MAILBOX,     5971,         "Mailbox"                  )
    ,(179896, @GO_TYPE_MAILBOX,     5971,         "Mailbox"                  )
    ,(180451, @GO_TYPE_MAILBOX,     1948,         "Mailbox"                  )
    ,(181236, @GO_TYPE_MAILBOX,     1907,         "Mailbox"                  )
    ,(181380, @GO_TYPE_MAILBOX,     1907,         "Mailbox"                  )
    ,(181381, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(181639, @GO_TYPE_MAILBOX,     1948,         "Mailbox"                  )
    ,(182567, @GO_TYPE_MAILBOX,     5971,         "Mailbox"                  )
    ,(182939, @GO_TYPE_MAILBOX,     1907,         "Mailbox"                  )
    ,(182946, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(183039, @GO_TYPE_MAILBOX,     1948,         "Mailbox"                  )
    ,(183167, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(184085, @GO_TYPE_MAILBOX,     2190,         "Mailbox"                  )
    ,(184147, @GO_TYPE_MAILBOX,     1948,         "Mailbox"                  )
    ,(184148, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(184652, @GO_TYPE_MAILBOX,     1947,         "Mailbox"                  )
    ,(184944, @GO_TYPE_MAILBOX,     2190,         "Mailbox"                  )
    ,(185477, @GO_TYPE_MAILBOX,     1948,         "Mailbox"                  )
    ,(186629, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
    ,(187260, @GO_TYPE_MAILBOX,     2690,         "Mailbox"                  )
    ,(188123, @GO_TYPE_MAILBOX,     1948,         "Mailbox"                  )
    ,(188132, @GO_TYPE_MAILBOX,     2128,         "Mailbox"                  )
;

-- entry,type,displayId,name,factionTemplate,size,faction,name
-- 140908,19,1727,"Mailbox",0,1,NULL,NULL
-- 144570,19,1907,"Mailbox",0,1,NULL,NULL
-- 175668,19,2190,"Postbox",0,1,NULL,NULL
-- 175864,19,2128,"Mailbox",0,1,NULL,NULL
-- 181236,19,1907,"Mailbox",0,1,NULL,NULL
-- 182567,19,5971,"Mailbox",1735,0.842228,NULL,NULL
-- 182939,19,1907,"Mailbox",1733,1,NULL,NULL
-- 182946,19,2128,"Mailbox",1735,1.44,NULL,NULL
-- 183039,19,1948,"Mailbox",0,1,NULL,NULL
-- 183167,19,2128,"Mailbox",1735,1,NULL,NULL
-- 184147,19,1948,"Mailbox",1732,1,NULL,NULL
-- 184148,19,2128,"Mailbox",1735,1,NULL,NULL
-- 184652,19,1947,"Mailbox",1732,1,NULL,NULL
-- 185477,19,1948,"Mailbox",1660,1,NULL,NULL
-- 186629,19,2128,"Mailbox",1735,1,NULL,NULL
-- 188132,19,2128,"Mailbox",0,1,NULL,NULL

-- Configure mailbox templates -----------------------------------------------
UPDATE `gameobject_template`
SET
    `faction`   = 12, -- "Stormwind"
    `size`      = 1
WHERE
    `entry` IN (142075, 142089, 142093, 142094, 142095, 143987, 144128, 144129, 144130, 144131, 153716, 164618, 181380)
;

UPDATE `gameobject_template`
SET
    `faction`   = 55, -- "Ironforge"
    `size`      = 1
WHERE
    `entry` IN (142102, 142103, 144011, 144179, 171556, 171699, 171752)
;

UPDATE `gameobject_template`
SET
    `faction`   = 80, -- "Darnassus"
    `size`      = 1
WHERE
    `entry` IN (142109, 142110, 142111, 142117, 142119, 176319, 181639, 188123)
;

UPDATE `gameobject_template`
SET
    `faction`   = 29, -- "Orgrimmar"
    `size`      = 1
WHERE
    `entry` IN (143981, 143982, 143983, 157637, 163313, 163645, 164840, 173047, 173221, 178864, 179895, 179896, 181381)
;

UPDATE `gameobject_template`
SET
    `faction`   = 104, -- "Thunder Bluff"
    `size`      = 1
WHERE
    `entry` IN (143984, 143985, 143986, 153578, 176324)
;

UPDATE `gameobject_template`
SET
    `faction`   = 68, -- "Undercity"
    `size`      = 1
WHERE
    `entry` IN (143988, 143989, 143990, 177044)
;

UPDATE `gameobject_template`
SET
    `faction`   = 120, -- "Booty Bay"
    `size`      = 1
WHERE
    `entry` IN (144126, 144127)
;

UPDATE `gameobject_template`
SET
    `faction`   = 855, -- "Everlook"
    `size`      = 1
WHERE
    `entry` IN (176404)
;

UPDATE `gameobject_template`
SET
    `faction`   = 474, -- "Gadgetzan"
    `size`      = 1
WHERE
    `entry` IN (184085)
;

UPDATE `gameobject_template`
SET
    `faction`   = 35, -- "Friendly"
    `size`      = 1
WHERE
    `entry` IN (144112, 144125, 187260)
;

UPDATE `gameobject_template`
SET
    `faction`   = 994, -- "Cenarion Circle"
    `size`      = 1
WHERE
    `entry` IN (180451)
;

UPDATE `gameobject_template`
SET
    `faction`   = 84, -- "Alliance Generic"
    `size`      = 1
WHERE
    `entry` IN (184944)
;

-- Spawn mailboxes -----------------------------------------------------------
INSERT INTO `gameobject`
    (`guid`,    `id`,   `map`,  `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES
     (201,142075,0,-9455.99,45.8229,56.4395,1.40499,0.646124,0.763232,900,100,1)
    ,(202,142075,0,-8797,1083.48,90.208,-1,-0.410719,0.911762,120,0,0)
    ,(203,142089,0,-10546.5,-1157.32,27.7834,-3.0456,0.998848,-0.047978,3600,100,1)
    ,(204,142093,0,-9248.41,-2144.23,63.9334,3.14159,1,0,7200,100,1)
    ,(205,142094,0,-3793.98,-838.581,9.54324,3.14159,1,0,7200,100,1)
    ,(206,142095,1,-3618.42,-4437.94,13.4574,3.14159,1,0,900,100,1)
    ,(207,142102,0,-5603.59,-513.781,401.569,3.14159,1,0,900,100,1)
    ,(208,142103,0,-5365.62,-2954.11,323.755,-2.86234,0.990268,-0.139173,7200,100,1)
    ,(209,142109,1,9848.28,957.296,1306.79,-2.80125,0.985556,-0.16935,900,100,1)
    ,(210,142110,1,9943,2497.74,1317.69,-2.6529,0.970296,-0.241922,900,100,1)
    ,(211,142111,1,6423.62,497.105,7.67082,2.80125,0.985556,0.16935,900,100,1)
    ,(212,142117,1,2742.47,-395.144,108.857,2.77507,0.983255,0.182236,900,100,1)
    ,(213,142119,1,-4396.27,3269.05,11.9274,3.14159,1,0,900,100,1)
    ,(214,143981,1,322.408,-4706.9,14.6834,1.03847,0.496216,0.868199,900,100,1)
    ,(215,143982,1,-443.692,-2649.08,95.7738,0.226892,0.113203,0.993572,900,100,1)
    ,(216,143983,1,925.941,901.492,104.969,1.25664,0.587785,0.809017,900,100,1)
    ,(217,143984,1,-2338.21,-367.143,-8.52861,2.67036,0.97237,0.233445,900,100,1)
    ,(218,143985,1,-1263.31,44.5454,127.545,-1.55334,-0.700909,0.71325,900,100,1)
    ,(219,143986,1,-4405.37,237.677,26.7678,2.28638,0.909961,0.414693,900,100,1)
    ,(220,143987,0,-852.203,-546.71,10.9324,-1.54462,-0.697791,0.716302,7200,100,1)
    ,(221,143988,0,-20.3935,-929.422,55.4647,2.64417,0.969231,0.246153,7200,100,1)
    ,(222,143989,0,503.972,1626.93,125.608,-1.57952,-0.710185,0.704015,7200,100,1)
    ,(223,143990,0,2238.56,254.503,34.0054,2.96706,0.996195,0.087156,900,100,1)
    ,(224,144011,0,293.628,-2115.57,121.77,-2.96706,0.996195,-0.087156,7200,100,1)
    ,(225,144112,1,-7154.4,-3829.52,8.75029,-2.05949,-0.857167,0.515038,900,100,1)
    ,(226,144125,1,-1035.11,-3676.03,23.067,2.87107,0.990866,0.134851,900,100,1)
    ,(227,144126,0,-14417.4,517.034,5.01315,2.50455,0.949699,0.313164,900,100,1)
    ,(228,144127,0,-14462,480.032,26.8612,2.40855,0.93358,0.358368,900,100,1)
    ,(229,144128,0,-8637.48,427.748,102.083,2.25147,0.902585,0.430511,900,100,1)
    ,(230,144129,0,-9035.41,844.067,106.96,0.436333,0.21644,0.976296,180,100,0)
    ,(231,144131,0,-8876.98,652.007,95.9927,-1.213,-0.569997,0.821647,900,100,1)
    ,(232,144131,1,16219.5,16272.8,12.9696,1.46398,0,0,900,100,1)
    ,(233,144179,90,-547.903,167.259,-193.804,-1.55334,-0.70091,0.71325,3600,100,1)
    ,(234,153578,1,-2351.58,-1944.75,95.7911,0.427606,0.212178,0.977231,900,100,1)
    ,(235,153716,0,-10644.5,1158.04,33.1382,2.55691,0.957571,0.288196,3600,100,1)
    ,(236,157637,0,-10464,-3265.26,20.1778,1.39626,0.642788,0.766044,600,100,1)
    ,(237,163313,0,-6673.95,-2174.35,244.16,2.53945,0.95502,0.296542,900,100,1)
    ,(238,163645,0,-12387.6,145.805,2.51911,-1.6057,-0.71934,0.694658,900,100,1)
    ,(239,164618,0,-10995.9,-3387.51,62.1163,3.01069,0.997859,0.065403,900,100,1)
    ,(240,164840,0,-927.879,-3525.54,70.8771,1.55334,0.700909,0.71325,7200,100,1)
    ,(241,171556,0,-4949.82,-1277.37,501.583,2.53073,0.953717,0.300706,900,100,1)
    ,(242,171699,0,-4910.38,-976.212,501.408,2.26893,0.906308,0.422619,900,100,1)
    ,(243,171752,0,-4828.28,-1285.05,501.807,2.2602,0.904455,0.426569,900,100,1)
    ,(244,173047,1,1894.97,-4553.88,29.1535,2.15548,0.880891,0.473319,900,100,1)
    ,(245,173221,1,1615.58,-4391.6,10.108,-2.33874,0.920505,-0.390731,900,100,1)
    ,(246,176319,1,248.118,1291.65,190.392,-2.86234,0.990268,-0.139173,900,100,1)
    ,(247,176324,1,-5464.37,-2450.8,89.2474,-2.76635,0.98245,-0.186524,180,100,1)
    ,(248,176404,1,6705.1,-4667.35,721.6,3.14159,1,0,900,100,1)
    ,(249,177044,0,1633.02,219.281,-43.1118,1.0821,0.515038,0.857168,900,100,1)
    ,(250,178864,1,2332.56,-2545.97,101.627,-2.34747,0.922201,-0.386711,900,100,1)
    ,(251,179895,0,-599.543,-4610.39,9.73191,-0.448994,-0.222616,0.974906,7200,100,1)
    ,(252,179896,1,-1609.2,3118.86,44.8293,-2.3911,0.930418,-0.366501,900,100,1)
    ,(253,180451,1,-6840.3,734.942,42.1887,1.27409,0.594823,0.803857,900,100,1)
    ,(254,181639,1,2681.93,1487.06,233.917,-1.47994,-0.674265,0.73849,900,100,1)
    ,(255,187260,1,5103.54,-360.519,357.04,-2.79253,0.984808,-0.173648,180,100,1)
    ,(256,188123,1,10122.1,2227.4,1328.19,-2.49582,0.948324,-0.317305,900,100,1)
;

-- guid,id,map,position_x,position_y,position_z,orientation,rotation2,rotation3,spawntimesecs,animprogress,state
-- ,(257,175668,369,112.364,5.079,-4,0.851,0.412707,0.910864,120,0,1)
-- ,(258,181236,0,2289.56,-5318.35,88.64,2.35787,0.924199,0.381912,900,100,1)
-- ,(259,186629,1,-3158.55,-2894.12,33.6747,2.82743,0.987688,0.156434,900,100,1)
