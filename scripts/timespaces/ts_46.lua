-- TimeSpace Script generated by friends111's python script. Replace all %TODO% values accordingly, check for errors (packet-generation isn't perfect), and modify things if needed.
local Map = require('Map')
local Monster = require('Monster')
local Event = require('Event')
local MapObject = require('MapObject')
local MapNpc = require('MapNpc')
local Portal = require('Portal')
local Location = require('Location')
local TimeSpace = require('TimeSpace')
local PortalType = require("PortalType")
local PortalMinimapOrientation = require('PortalMinimapOrientation')
local TimeSpaceObjective = require('TimeSpaceObjective')
local TimeSpaceTaskType = require('TimeSpaceTaskType')
local TimeSpaceTask = require('TimeSpaceTask')

local objectives = TimeSpaceObjective.Create()
    .WithGoToExit()
    .WithProtectNPC()

-- Grid min:(3, 4) ~ max:(6, 11) (width: 3, height: 7)
--     [ 0][ 1][ 2][ 3][ 4][ 5][ 6][ 7][ 8][ 9][10]
-- [ 0][  ][  ][  ][  ][  ][  ][  ][  ][  ][  ][  ]
-- [ 1][  ][  ][  ][  ][  ][  ][  ][  ][  ][  ][  ]
-- [ 2][  ][  ][  ][  ][  ][  ][  ][  ][  ][  ][  ]
-- [ 3][  ][  ][  ][  ][  ][  ][  ][  ][  ][  ][  ]
-- [ 4][  ][  ][  ][  ][XX][  ][  ][  ][  ][  ][  ]
-- [ 5][  ][  ][  ][  ][OO][  ][  ][  ][  ][  ][  ]
-- [ 6][  ][  ][  ][  ][XX][OO][OO][  ][  ][  ][  ]
-- [ 7][  ][  ][  ][  ][  ][OO][XX][  ][  ][  ][  ]
-- [ 8][  ][  ][  ][XX][OO][XX][  ][  ][  ][  ][  ]
-- [ 9][  ][  ][  ][OO][  ][  ][  ][  ][  ][  ][  ]
-- [10][  ][  ][  ][XX][OO][  ][  ][  ][  ][  ][  ]
-- [11][  ][  ][  ][  ][OO][  ][  ][  ][  ][  ][  ]

local map_4_11 = Map.Create().WithMapId(4201).SetMapCoordinates(4, 11).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.None)
) -- start
local map_4_10 = Map.Create().WithMapId(4209).SetMapCoordinates(4, 10).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.None)
)
local map_3_10 = Map.Create().WithMapId(4207).SetMapCoordinates(3, 10).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.KillAllMonsters).WithTaskText("TS_GENERIC_TEXT_KILL_ALL_ENEMIES").WithOnStartDialog(6151)
)
local map_3_9 = Map.Create().WithMapId(4206).SetMapCoordinates(3, 9).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.None)
)
local map_3_8 = Map.Create().WithMapId(4208).SetMapCoordinates(3, 8).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.KillAllMonsters).WithTaskText("TS_GENERIC_TEXT_KILL_ALL_ENEMIES").WithOnStartDialog(6151)
)
local map_4_8 = Map.Create().WithMapId(4205).SetMapCoordinates(4, 8).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.None).WithOnStartDialog(6152)
)
local map_5_8 = Map.Create().WithMapId(4210).SetMapCoordinates(5, 8).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.KillAllMonsters).WithTaskText("TS_GENERIC_TEXT_KILL_ALL_ENEMIES").WithOnStartDialog(6151)
)
local map_5_7 = Map.Create().WithMapId(4208).SetMapCoordinates(5, 7).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.None)
)
local map_6_7 = Map.Create().WithMapId(4210).SetMapCoordinates(6, 7).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.KillAllMonsters).WithTaskText("TS_GENERIC_TEXT_KILL_ALL_ENEMIES").WithOnStartDialog(6151)
)
local map_6_6 = Map.Create().WithMapId(4209).SetMapCoordinates(6, 6).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.None)
)
local map_5_6 = Map.Create().WithMapId(4205).SetMapCoordinates(5, 6).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.None).WithOnStartDialog(6152)
)
local map_4_6 = Map.Create().WithMapId(4207).SetMapCoordinates(4, 6).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.KillAllMonsters).WithOnStartDialog(6151).WithOnFinishDialog(6153)
)
local map_4_5 = Map.Create().WithMapId(4206).SetMapCoordinates(4, 5).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.None)
)
local map_4_4 = Map.Create().WithMapId(4206).SetMapCoordinates(4, 4).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.KillAllMonsters).WithOnStartDialog(6154).WithOnFinishDialog(6155)
)

local portal_4_11_to_4_10 = Portal.Create(PortalType.TsNormal).From(map_4_11, 14, 1).To(map_4_10, 14, 28).MinimapOrientation(PortalMinimapOrientation.North)
local portal_4_10_to_4_11 = Portal.Create(PortalType.TsNormal).From(map_4_10, 14, 28).To(map_4_11, 14, 1).MinimapOrientation(PortalMinimapOrientation.South)
local portal_4_10_to_3_10 = Portal.Create(PortalType.TsNormal).From(map_4_10, 1, 15).To(map_3_10, 28, 15).MinimapOrientation(PortalMinimapOrientation.West)
local portal_3_10_to_3_9 = Portal.Create(PortalType.Locked).From(map_3_10, 14, 1).To(map_3_9, 14, 28).MinimapOrientation(PortalMinimapOrientation.North)
local portal_3_10_to_4_10 = Portal.Create(PortalType.Locked).From(map_3_10, 28, 15).To(map_4_10, 1, 15).MinimapOrientation(PortalMinimapOrientation.East)
local portal_3_9_to_3_8 = Portal.Create(PortalType.TsNormal).From(map_3_9, 14, 1).To(map_3_8, 14, 28).MinimapOrientation(PortalMinimapOrientation.North)
local portal_3_9_to_3_10 = Portal.Create(PortalType.TsNormal).From(map_3_9, 14, 28).To(map_3_10, 14, 1).MinimapOrientation(PortalMinimapOrientation.South)
local portal_3_8_to_4_8 = Portal.Create(PortalType.Locked).From(map_3_8, 28, 15).To(map_4_8, 1, 15).MinimapOrientation(PortalMinimapOrientation.East)
local portal_3_8_to_3_9 = Portal.Create(PortalType.Locked).From(map_3_8, 14, 28).To(map_3_9, 14, 1).MinimapOrientation(PortalMinimapOrientation.South)
local portal_4_8_to_5_8 = Portal.Create(PortalType.TsNormal).From(map_4_8, 28, 15).To(map_5_8, 1, 15).MinimapOrientation(PortalMinimapOrientation.East)
local portal_4_8_to_3_8 = Portal.Create(PortalType.TsNormal).From(map_4_8, 1, 15).To(map_3_8, 28, 15).MinimapOrientation(PortalMinimapOrientation.West)
local portal_5_8_to_5_7 = Portal.Create(PortalType.Locked).From(map_5_8, 15, 1).To(map_5_7, 14, 28).MinimapOrientation(PortalMinimapOrientation.North)
local portal_5_8_to_4_8 = Portal.Create(PortalType.Locked).From(map_5_8, 1, 15).To(map_4_8, 28, 15).MinimapOrientation(PortalMinimapOrientation.West)
local portal_5_7_to_6_7 = Portal.Create(PortalType.TsNormal).From(map_5_7, 28, 15).To(map_6_7, 1, 15).MinimapOrientation(PortalMinimapOrientation.East)
local portal_5_7_to_5_8 = Portal.Create(PortalType.TsNormal).From(map_5_7, 14, 28).To(map_5_8, 15, 1).MinimapOrientation(PortalMinimapOrientation.South)
local portal_6_7_to_6_6 = Portal.Create(PortalType.Locked).From(map_6_7, 15, 1).To(map_6_6, 14, 28).MinimapOrientation(PortalMinimapOrientation.North)
local portal_6_7_to_5_7 = Portal.Create(PortalType.Locked).From(map_6_7, 1, 15).To(map_5_7, 28, 15).MinimapOrientation(PortalMinimapOrientation.West)
local portal_6_6_to_6_7 = Portal.Create(PortalType.TsNormal).From(map_6_6, 14, 28).To(map_6_7, 15, 1).MinimapOrientation(PortalMinimapOrientation.South)
local portal_6_6_to_5_6 = Portal.Create(PortalType.TsNormal).From(map_6_6, 1, 15).To(map_5_6, 28, 15).MinimapOrientation(PortalMinimapOrientation.West)
local portal_5_6_to_6_6 = Portal.Create(PortalType.TsNormal).From(map_5_6, 28, 15).To(map_6_6, 1, 15).MinimapOrientation(PortalMinimapOrientation.East)
local portal_5_6_to_4_6 = Portal.Create(PortalType.TsNormal).From(map_5_6, 1, 15).To(map_4_6, 28, 15).MinimapOrientation(PortalMinimapOrientation.West)
local portal_4_6_to_4_5 = Portal.Create(PortalType.Locked).From(map_4_6, 14, 1).To(map_4_5, 14, 28).MinimapOrientation(PortalMinimapOrientation.North)
local portal_4_6_to_5_6 = Portal.Create(PortalType.Locked).From(map_4_6, 28, 15).To(map_5_6, 1, 15).MinimapOrientation(PortalMinimapOrientation.East)
local portal_4_5_to_4_4 = Portal.Create(PortalType.TsNormal).From(map_4_5, 14, 1).To(map_4_4, 14, 28).MinimapOrientation(PortalMinimapOrientation.North)
local portal_4_5_to_4_6 = Portal.Create(PortalType.TsNormal).From(map_4_5, 14, 28).To(map_4_6, 14, 1).MinimapOrientation(PortalMinimapOrientation.South)
local portal_4_4_to_UNKNOWN = Portal.Create(PortalType.TSEndClosed).From(map_4_4, 14, 1).To(map_4_4, 14, 1).MinimapOrientation(PortalMinimapOrientation.North)
local portal_4_4_to_4_5 = Portal.Create(PortalType.Locked).From(map_4_4, 14, 28).To(map_4_5, 14, 1).MinimapOrientation(PortalMinimapOrientation.South)

map_4_11.AddPortal(portal_4_11_to_4_10)
map_4_10.AddPortal(portal_4_10_to_4_11)
map_4_10.AddPortal(portal_4_10_to_3_10)
map_3_10.AddPortal(portal_3_10_to_3_9)
map_3_10.AddPortal(portal_3_10_to_4_10)
map_3_9.AddPortal(portal_3_9_to_3_8)
map_3_9.AddPortal(portal_3_9_to_3_10)
map_3_8.AddPortal(portal_3_8_to_4_8)
map_3_8.AddPortal(portal_3_8_to_3_9)
map_4_8.AddPortal(portal_4_8_to_5_8)
map_4_8.AddPortal(portal_4_8_to_3_8)
map_5_8.AddPortal(portal_5_8_to_5_7)
map_5_8.AddPortal(portal_5_8_to_4_8)
map_5_7.AddPortal(portal_5_7_to_6_7)
map_5_7.AddPortal(portal_5_7_to_5_8)
map_6_7.AddPortal(portal_6_7_to_6_6)
map_6_7.AddPortal(portal_6_7_to_5_7)
map_6_6.AddPortal(portal_6_6_to_6_7)
map_6_6.AddPortal(portal_6_6_to_5_6)
map_5_6.AddPortal(portal_5_6_to_6_6)
map_5_6.AddPortal(portal_5_6_to_4_6)
map_4_6.AddPortal(portal_4_6_to_4_5)
map_4_6.AddPortal(portal_4_6_to_5_6)
map_4_5.AddPortal(portal_4_5_to_4_4)
map_4_5.AddPortal(portal_4_5_to_4_6)
map_4_4.AddPortal(portal_4_4_to_UNKNOWN)
map_4_4.AddPortal(portal_4_4_to_4_5)

--- Map 4_11
map_4_11.OnMapJoin({
    Event.TryStartTaskForMap(map_4_11),
})
---

--- Map 4_10
map_4_10.AddMonsters({
    Monster.CreateWithVnum(67).At(15, 25).Facing(3), -- Thornwalker [16:45:49]
    Monster.CreateWithVnum(61).At(11, 15).Facing(3), -- Devil Vampie [16:45:49]
    Monster.CreateWithVnum(61).At(8, 9).Facing(3), -- Devil Vampie [16:45:49]
    Monster.CreateWithVnum(61).At(18, 14).Facing(3).SpawnAfterMobsKilled(1), -- Devil Vampie [16:45:52]
    Monster.CreateWithVnum(61).At(17, 17).Facing(3).SpawnAfterMobsKilled(2), -- Devil Vampie [16:45:53]
    Monster.CreateWithVnum(67).At(7, 16).Facing(2).SpawnAfterMobsKilled(3), -- Thornwalker [16:45:54]
    Monster.CreateWithVnum(67).At(19, 9).Facing(1).SpawnAfterMobsKilled(5), -- Thornwalker [16:45:58]
    Monster.CreateWithVnum(67).At(22, 15).Facing(3).SpawnAfterMobsKilled(5), -- Thornwalker [16:45:58]
})
map_4_10.OnMapJoin({
    Event.TryStartTaskForMap(map_4_10),
})
---

--- Map 3_10
map_3_10.AddMonsters({
    Monster.CreateWithVnum(149).At(22, 15).Facing(0), -- Kenko Spearman [16:46:06]
    Monster.CreateWithVnum(149).At(12, 10).Facing(4), -- Kenko Spearman [16:46:06]
    Monster.CreateWithVnum(152).At(8, 16).Facing(1).SpawnAfterMobsKilled(2), -- Kenko Raider [16:46:14]
    Monster.CreateWithVnum(149).At(17, 10).Facing(3).SpawnAfterMobsKilled(2), -- Kenko Spearman [16:46:14]
    Monster.CreateWithVnum(152).At(15, 17).Facing(6).SpawnAfterMobsKilled(3), -- Kenko Raider [16:46:16]
    Monster.CreateWithVnum(152).At(21, 19).Facing(7).SpawnAfterMobsKilled(4), -- Kenko Raider [16:46:17]
    Monster.CreateWithVnum(152).At(7, 12).Facing(2).SpawnAfterMobsKilled(5), -- Kenko Raider [16:46:19]
})
map_3_10.AddNpcs({
    MapNpc.CreateNpcWithVnum(116).At(19, 21).Facing(7), -- Elite Koaren Sword Fighter [16:46:06]
    MapNpc.CreateNpcWithVnum(122).At(14, 19).Facing(6), -- Elite Koaren Warrior [16:46:06]
    MapNpc.CreateNpcWithVnum(122).At(10, 19).Facing(1), -- Elite Koaren Warrior [16:46:06]
})
map_3_10.OnMapJoin({
    Event.TryStartTaskForMap(map_3_10),
})
map_3_10.OnTaskFinish({
    Event.OpenPortal(portal_3_10_to_3_9),
    Event.OpenPortal(portal_3_10_to_4_10),
    Event.AddTime(150),
})
---

--- Map 3_9
map_3_9.AddMonsters({
    Monster.CreateWithVnum(67).At(18, 17).Facing(5), -- Thornwalker [16:46:26]
    Monster.CreateWithVnum(67).At(19, 11).Facing(5), -- Thornwalker [16:46:26]
    Monster.CreateWithVnum(61).At(18, 14).Facing(3).SpawnAfterMobsKilled(1), -- Devil Vampie [16:46:27]
    Monster.CreateWithVnum(61).At(17, 17).Facing(0).SpawnAfterMobsKilled(2), -- Devil Vampie [16:46:28]
    Monster.CreateWithVnum(67).At(7, 16).Facing(4).SpawnAfterMobsKilled(3), -- Thornwalker [16:46:29]
})
map_3_9.OnMapJoin({
    Event.TryStartTaskForMap(map_3_9),
})
---

--- Map 3_8
map_3_8.AddMonsters({
    Monster.CreateWithVnum(149).At(21, 15).Facing(7), -- Kenko Spearman [16:46:37]
    Monster.CreateWithVnum(149).At(12, 10).Facing(0), -- Kenko Spearman [16:46:37]
    Monster.CreateWithVnum(152).At(8, 16).Facing(2).SpawnAfterMobsKilled(2), -- Kenko Raider [16:46:42]
    Monster.CreateWithVnum(149).At(17, 10).Facing(4).SpawnAfterMobsKilled(2), -- Kenko Spearman [16:46:42]
    Monster.CreateWithVnum(152).At(17, 15).Facing(3).SpawnAfterMobsKilled(3), -- Kenko Raider [16:46:43]
    Monster.CreateWithVnum(152).At(21, 19).Facing(5).SpawnAfterMobsKilled(4), -- Kenko Raider [16:46:45]
    Monster.CreateWithVnum(152).At(7, 12).Facing(1).SpawnAfterMobsKilled(5), -- Kenko Raider [16:46:46]
    Monster.CreateWithVnum(146).At(10, 13).Facing(2).SpawnAfterMobsKilled(7), -- Kenko Swordsman [16:46:50]
    Monster.CreateWithVnum(146).At(20, 13).Facing(5).SpawnAfterMobsKilled(7), -- Kenko Swordsman [16:46:50]
})
map_3_8.AddNpcs({
    MapNpc.CreateNpcWithVnum(116).At(19, 21).Facing(3), -- Elite Koaren Sword Fighter [16:46:37]
    MapNpc.CreateNpcWithVnum(122).At(14, 19).Facing(0), -- Elite Koaren Warrior [16:46:37]
    MapNpc.CreateNpcWithVnum(122).At(10, 19).Facing(4), -- Elite Koaren Warrior [16:46:37]
    MapNpc.CreateNpcWithVnum(116).At(6, 19).Facing(2), -- Elite Koaren Sword Fighter [16:46:37]
})
map_3_8.OnMapJoin({
    Event.TryStartTaskForMap(map_3_8),
})
map_3_8.OnTaskFinish({
    Event.OpenPortal(portal_3_8_to_4_8),
    Event.OpenPortal(portal_3_8_to_3_9),
    Event.AddTime(120),
})
---

--- Map 4_8
map_4_8.AddNpcs({
    MapNpc.CreateNpcWithVnum(319).At(9, 14).Facing(0), -- Kliff [16:46:57]
})
map_4_8.OnMapJoin({
    Event.TryStartTaskForMap(map_4_8),
})
---

--- Map 5_8
map_5_8.AddMonsters({
    Monster.CreateWithVnum(149).At(22, 15).Facing(0), -- Kenko Spearman [16:47:04]
    Monster.CreateWithVnum(149).At(12, 10).Facing(7), -- Kenko Spearman [16:47:04]
    Monster.CreateWithVnum(149).At(4, 14).Facing(5), -- Kenko Spearman [16:47:04]
    Monster.CreateWithVnum(152).At(8, 16).Facing(0).SpawnAfterMobsKilled(2), -- Kenko Raider [16:47:09]
    Monster.CreateWithVnum(149).At(17, 10).Facing(0).SpawnAfterMobsKilled(2), -- Kenko Spearman [16:47:09]
    Monster.CreateWithVnum(152).At(17, 15).Facing(7).SpawnAfterMobsKilled(3), -- Kenko Raider [16:47:12]
    Monster.CreateWithVnum(149).At(24, 13).Facing(3).SpawnAfterMobsKilled(3), -- Kenko Spearman [16:47:12]
    Monster.CreateWithVnum(152).At(21, 19).Facing(4).SpawnAfterMobsKilled(4), -- Kenko Raider [16:47:13]
    Monster.CreateWithVnum(152).At(7, 12).Facing(1).SpawnAfterMobsKilled(5), -- Kenko Raider [16:47:14]
    Monster.CreateWithVnum(146).At(10, 13).Facing(2).SpawnAfterMobsKilled(7), -- Kenko Swordsman [16:47:18]
    Monster.CreateWithVnum(146).At(20, 13).Facing(0).SpawnAfterMobsKilled(7), -- Kenko Swordsman [16:47:18]
})
map_5_8.AddNpcs({
    MapNpc.CreateNpcWithVnum(116).At(19, 21).Facing(1), -- Elite Koaren Sword Fighter [16:47:04]
    MapNpc.CreateNpcWithVnum(122).At(14, 19).Facing(2), -- Elite Koaren Warrior [16:47:04]
    MapNpc.CreateNpcWithVnum(122).At(10, 19).Facing(1), -- Elite Koaren Warrior [16:47:04]
    MapNpc.CreateNpcWithVnum(116).At(5, 15).Facing(1), -- Elite Koaren Sword Fighter [16:47:04]
})
map_5_8.OnMapJoin({
    Event.TryStartTaskForMap(map_5_8),
})
map_5_8.OnTaskFinish({
    Event.OpenPortal(portal_5_8_to_5_7),
    Event.OpenPortal(portal_5_8_to_4_8),
    Event.AddTime(120),
})
---

--- Map 5_7
map_5_7.AddMonsters({
    Monster.CreateWithVnum(67).At(12, 26).Facing(2), -- Thornwalker [16:47:31]
    Monster.CreateWithVnum(61).At(13, 16).Facing(3), -- Devil Vampie [16:47:31]
    Monster.CreateWithVnum(61).At(12, 8).Facing(3), -- Devil Vampie [16:47:31]
    Monster.CreateWithVnum(61).At(18, 14).Facing(4).SpawnAfterMobsKilled(1), -- Devil Vampie [16:47:32]
    Monster.CreateWithVnum(61).At(17, 17).Facing(7).SpawnAfterMobsKilled(2), -- Devil Vampie [16:47:34]
    Monster.CreateWithVnum(67).At(7, 16).Facing(5).SpawnAfterMobsKilled(3), -- Thornwalker [16:47:35]
    Monster.CreateWithVnum(67).At(19, 9).Facing(3).SpawnAfterMobsKilled(5), -- Thornwalker [16:47:37]
    Monster.CreateWithVnum(67).At(22, 15).Facing(3).SpawnAfterMobsKilled(5), -- Thornwalker [16:47:37]
})
map_5_7.OnMapJoin({
    Event.TryStartTaskForMap(map_5_7),
})
---

--- Map 6_7
map_6_7.AddMonsters({
    Monster.CreateWithVnum(149).At(12, 10).Facing(7), -- Kenko Spearman [16:47:46]
    Monster.CreateWithVnum(149).At(4, 14).Facing(4), -- Kenko Spearman [16:47:46]
    Monster.CreateWithVnum(152).At(8, 16).Facing(3).SpawnAfterMobsKilled(2), -- Kenko Raider [16:47:49]
    Monster.CreateWithVnum(149).At(22, 15).Facing(2).SpawnAfterMobsKilled(2), -- Kenko Spearman [16:47:49]
    Monster.CreateWithVnum(152).At(15, 17).Facing(4).SpawnAfterMobsKilled(3), -- Kenko Raider [16:47:50]
    Monster.CreateWithVnum(149).At(17, 10).Facing(0).SpawnAfterMobsKilled(3), -- Kenko Spearman [16:47:50]
    Monster.CreateWithVnum(152).At(21, 19).Facing(2).SpawnAfterMobsKilled(4), -- Kenko Raider [16:47:52]
    Monster.CreateWithVnum(149).At(24, 13).Facing(4).SpawnAfterMobsKilled(5), -- Kenko Spearman [16:47:55]
})
map_6_7.AddNpcs({
    MapNpc.CreateNpcWithVnum(122).At(17, 19).Facing(6), -- Elite Koaren Warrior [16:47:46]
    MapNpc.CreateNpcWithVnum(122).At(14, 19).Facing(0), -- Elite Koaren Warrior [16:47:46]
    MapNpc.CreateNpcWithVnum(122).At(10, 19).Facing(5), -- Elite Koaren Warrior [16:47:46]
    MapNpc.CreateNpcWithVnum(116).At(5, 15).Facing(4), -- Elite Koaren Sword Fighter [16:47:46]
})
map_6_7.OnMapJoin({
    Event.TryStartTaskForMap(map_6_7),
})
map_6_7.OnTaskFinish({
    Event.OpenPortal(portal_6_7_to_6_6),
    Event.OpenPortal(portal_6_7_to_5_7),
    Event.AddTime(150),
})
---

--- Map 6_6
map_6_6.AddMonsters({
    Monster.CreateWithVnum(67).At(18, 23).Facing(5), -- Thornwalker [16:48:02]
    Monster.CreateWithVnum(142).At(12, 17).Facing(0), -- Large Mimic [16:48:02]
    Monster.CreateWithVnum(61).At(8, 10).Facing(0), -- Devil Vampie [16:48:02]
    Monster.CreateWithVnum(61).At(10, 9).Facing(6), -- Devil Vampie [16:48:02]
    Monster.CreateWithVnum(61).At(18, 14).Facing(5).SpawnAfterMobsKilled(1), -- Devil Vampie [16:48:03]
    Monster.CreateWithVnum(61).At(17, 17).Facing(7).SpawnAfterMobsKilled(2), -- Devil Vampie [16:48:04]
    Monster.CreateWithVnum(67).At(7, 16).Facing(6).SpawnAfterMobsKilled(3), -- Thornwalker [16:48:06]
    Monster.CreateWithVnum(67).At(19, 9).Facing(6).SpawnAfterMobsKilled(5), -- Thornwalker [16:48:09]
    Monster.CreateWithVnum(67).At(22, 15).Facing(1).SpawnAfterMobsKilled(5), -- Thornwalker [16:48:09]
    Monster.CreateWithVnum(142).At(15, 13).Facing(3).SpawnAfterMobsKilled(6), -- Large Mimic [16:48:10]
    Monster.CreateWithVnum(142).At(7, 12).Facing(2).SpawnAfterMobsKilled(7), -- Large Mimic [16:48:11]
})
map_6_6.OnMapJoin({
    Event.TryStartTaskForMap(map_6_6),
})
---

--- Map 5_6
map_5_6.AddNpcs({
    MapNpc.CreateNpcWithVnum(319).At(14, 15).Facing(6), -- Kliff [16:48:22]
})
map_5_6.OnMapJoin({
    Event.TryStartTaskForMap(map_5_6),
})
---

--- Map 4_6
map_4_6.AddMonsters({
    Monster.CreateWithVnum(149).At(22, 15).Facing(6), -- Kenko Spearman [16:48:29]
    Monster.CreateWithVnum(149).At(12, 10).Facing(3), -- Kenko Spearman [16:48:29]
    Monster.CreateWithVnum(149).At(4, 14).Facing(6), -- Kenko Spearman [16:48:29]
    Monster.CreateWithVnum(152).At(8, 16).Facing(6).SpawnAfterMobsKilled(2), -- Kenko Raider [16:48:33]
    Monster.CreateWithVnum(149).At(17, 10).Facing(5).SpawnAfterMobsKilled(2), -- Kenko Spearman [16:48:33]
    Monster.CreateWithVnum(152).At(15, 17).Facing(1).SpawnAfterMobsKilled(3), -- Kenko Raider [16:48:35]
    Monster.CreateWithVnum(149).At(24, 13).Facing(1).SpawnAfterMobsKilled(3), -- Kenko Spearman [16:48:35]
    Monster.CreateWithVnum(152).At(21, 19).Facing(2).SpawnAfterMobsKilled(4), -- Kenko Raider [16:48:37]
    Monster.CreateWithVnum(152).At(7, 12).Facing(1).SpawnAfterMobsKilled(5), -- Kenko Raider [16:48:38]
    Monster.CreateWithVnum(146).At(10, 13).Facing(4).SpawnAfterMobsKilled(7), -- Kenko Swordsman [16:48:41]
    Monster.CreateWithVnum(146).At(20, 13).Facing(6).SpawnAfterMobsKilled(7), -- Kenko Swordsman [16:48:41]
    Monster.CreateWithVnum(149).At(11, 15).Facing(5).SpawnAfterMobsKilled(8), -- Kenko Spearman [16:48:42]
    Monster.CreateWithVnum(149).At(18, 15).Facing(4).SpawnAfterMobsKilled(9), -- Kenko Spearman [16:48:43]
})
map_4_6.AddNpcs({
    MapNpc.CreateNpcWithVnum(122).At(23, 20).Facing(4), -- Elite Koaren Warrior [16:48:29]
    MapNpc.CreateNpcWithVnum(116).At(19, 21).Facing(1), -- Elite Koaren Sword Fighter [16:48:29]
    MapNpc.CreateNpcWithVnum(122).At(17, 19).Facing(3), -- Elite Koaren Warrior [16:48:29]
    MapNpc.CreateNpcWithVnum(122).At(14, 19).Facing(2), -- Elite Koaren Warrior [16:48:29]
    MapNpc.CreateNpcWithVnum(122).At(10, 19).Facing(7), -- Elite Koaren Warrior [16:48:29]
    MapNpc.CreateNpcWithVnum(116).At(6, 19).Facing(4), -- Elite Koaren Sword Fighter [16:48:29]
})
map_4_6.AddObjects({
    MapObject.CreateRegularBox().At(20, 6), -- [16:48:29]
    MapObject.CreateRegularBox().At(9, 6), -- [16:48:29]
})
map_4_6.OnMapJoin({
    Event.TryStartTaskForMap(map_4_6),
})
map_4_6.OnTaskFinish({
    Event.OpenPortal(portal_4_6_to_4_5),
    Event.OpenPortal(portal_4_6_to_5_6),
    Event.AddTime(150),
})
---

--- Map 4_5
map_4_5.AddMonsters({
    Monster.CreateWithVnum(67).At(15, 23).Facing(3), -- Thornwalker [16:48:55]
    Monster.CreateWithVnum(61).At(18, 19).Facing(2), -- Devil Vampie [16:48:55]
    Monster.CreateWithVnum(61).At(12, 8).Facing(1), -- Devil Vampie [16:48:55]
    Monster.CreateWithVnum(61).At(18, 14).Facing(7).SpawnAfterMobsKilled(1), -- Devil Vampie [16:48:57]
    Monster.CreateWithVnum(61).At(17, 17).Facing(0).SpawnAfterMobsKilled(2), -- Devil Vampie [16:49:00]
    Monster.CreateWithVnum(67).At(7, 16).Facing(5).SpawnAfterMobsKilled(3), -- Thornwalker [16:49:01]
    Monster.CreateWithVnum(67).At(19, 9).Facing(4).SpawnAfterMobsKilled(5), -- Thornwalker [16:49:04]
    Monster.CreateWithVnum(67).At(22, 15).Facing(5).SpawnAfterMobsKilled(5), -- Thornwalker [16:49:04]
})
map_4_5.OnMapJoin({
    Event.TryStartTaskForMap(map_4_5),
})
---

--- Map 4_4
map_4_4.AddMonsters({
    Monster.CreateWithVnum(149).At(22, 15).Facing(2), -- Kenko Spearman [16:49:15]
    Monster.CreateWithVnum(149).At(12, 10).Facing(7), -- Kenko Spearman [16:49:15]
    Monster.CreateWithVnum(149).At(4, 14).Facing(5), -- Kenko Spearman [16:49:15]
    Monster.CreateWithVnum(152).At(8, 16).Facing(3).SpawnAfterMobsKilled(2), -- Kenko Raider [16:49:22]
    Monster.CreateWithVnum(149).At(17, 10).Facing(3).SpawnAfterMobsKilled(2), -- Kenko Spearman [16:49:22]
    Monster.CreateWithVnum(152).At(16, 15).Facing(6).SpawnAfterMobsKilled(3), -- Kenko Raider [16:49:23]
    Monster.CreateWithVnum(149).At(24, 13).Facing(0).SpawnAfterMobsKilled(3), -- Kenko Spearman [16:49:23]
    Monster.CreateWithVnum(152).At(21, 19).Facing(0).SpawnAfterMobsKilled(4), -- Kenko Raider [16:49:25]
    Monster.CreateWithVnum(152).At(7, 12).Facing(6).SpawnAfterMobsKilled(5), -- Kenko Raider [16:49:28]
    Monster.CreateWithVnum(146).At(10, 13).Facing(4).SpawnAfterMobsKilled(7), -- Kenko Swordsman [16:49:31]
    Monster.CreateWithVnum(146).At(20, 13).Facing(3).SpawnAfterMobsKilled(7), -- Kenko Swordsman [16:49:31]
    Monster.CreateWithVnum(149).At(11, 15).Facing(7).SpawnAfterMobsKilled(8), -- Kenko Spearman [16:49:32]
    Monster.CreateWithVnum(149).At(18, 15).Facing(0).SpawnAfterMobsKilled(9), -- Kenko Spearman [16:49:35]
})
map_4_4.AddNpcs({
    MapNpc.CreateNpcWithVnum(122).At(20, 21).Facing(7), -- Elite Koaren Warrior [16:49:14]
    MapNpc.CreateNpcWithVnum(122).At(14, 22).Facing(2), -- Elite Koaren Warrior [16:49:14]
    MapNpc.CreateNpcWithVnum(329).At(14, 20).Facing(3).WithMustProtectAura(), -- Kenel [16:49:14]
    MapNpc.CreateNpcWithVnum(122).At(8, 21).Facing(5), -- Elite Koaren Warrior [16:49:14]
})
map_4_4.OnMapJoin({
    Event.TryStartTaskForMap(map_4_4),
})
map_4_4.OnTaskFinish({
    Event.OpenPortal(portal_4_4_to_UNKNOWN),
    Event.OpenPortal(portal_4_4_to_4_5),
})
---

local ts = TimeSpace.Create(36)  -- TimeSpace ID
    .SetMaps({map_4_11, map_4_10, map_3_10, map_3_9, map_3_8, map_4_8, map_5_8, map_5_7, map_6_7, map_6_6, map_5_6, map_4_6, map_4_5, map_4_4})
    .SetSpawn(Location.InMap(map_4_11).At(9, 15))
    .SetLives(3)
    .SetObjectives(objectives)
    .SetDurationInSeconds(200)
    .SetBonusPointItemDropChance(5000)
return ts
