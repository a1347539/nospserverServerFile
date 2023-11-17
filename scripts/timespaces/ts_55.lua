-- TimeSpace Script generated by friends111's python script. Replace all %TODO% values accordingly, check for errors (packet-generation isn't perfect), and modify things if needed.
local Map = require('Map')
local Monster = require('Monster')
local Event = require('Event')
local MapObject = require('MapObject')
local Portal = require('Portal')
local Location = require('Location')
local TimeSpace = require('TimeSpace')
local PortalType = require("PortalType")
local PortalMinimapOrientation = require('PortalMinimapOrientation')
local TimeSpaceObjective = require('TimeSpaceObjective')
local TimeSpaceTaskType = require('TimeSpaceTaskType')
local TimeSpaceTask = require('TimeSpaceTask')

local objectives = TimeSpaceObjective.Create()
    .WithKillMob(155, 17)

local map_4_0 = Map.Create().WithMapId(4400).SetMapCoordinates(4, 0).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.None)
) -- start
local map_4_1 = Map.Create().WithMapId(4412).SetMapCoordinates(4, 1).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.None).WithOnStartDialog(6223)
)
local map_4_2 = Map.Create().WithMapId(4500).SetMapCoordinates(4, 2).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.KillAllMonsters).WithOnStartDialog(6224).WithOnFinishDialog(6225)
)
local map_4_3 = Map.Create().WithMapId(4500).SetMapCoordinates(4, 3).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.KillAllMonsters).WithOnStartDialog(6224).WithOnFinishDialog(6226)
)
local map_4_4 = Map.Create().WithMapId(4501).SetMapCoordinates(4, 4).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.KillAllMonsters).WithOnStartDialog(6224).WithOnFinishDialog(6227)
)
local map_4_5 = Map.Create().WithMapId(4501).SetMapCoordinates(4, 5).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.KillAllMonsters).WithOnStartDialog(6224).WithOnFinishDialog(6228)
)
local map_4_6 = Map.Create().WithMapId(4502).SetMapCoordinates(4, 6).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.KillAllMonsters).WithOnStartDialog(6224).WithOnFinishDialog(6229)
)
local map_4_7 = Map.Create().WithMapId(4503).SetMapCoordinates(4, 7).WithTask(
    TimeSpaceTask.Create(TimeSpaceTaskType.KillAllMonsters).WithTaskText("TS_45_TEXT_0").WithOnStartDialog(6230).WithOnFinishDialog(6231)
)

local portal_4_0_to_4_1 = Portal.Create(PortalType.TsNormal).From(map_4_0, 12, 23).To(map_4_1, 11, 1).MinimapOrientation(PortalMinimapOrientation.South)
local portal_4_1_to_4_0 = Portal.Create(PortalType.TsNormal).From(map_4_1, 11, 1).To(map_4_0, 12, 23).MinimapOrientation(PortalMinimapOrientation.North)
local portal_4_1_to_4_2 = Portal.Create(PortalType.TsNormal).From(map_4_1, 11, 23).To(map_4_2, 11, 13).MinimapOrientation(PortalMinimapOrientation.South)
local portal_4_2_to_4_1 = Portal.Create(PortalType.Locked).From(map_4_2, 11, 13).To(map_4_1, 11, 23).MinimapOrientation(PortalMinimapOrientation.North)
local portal_4_2_to_4_3 = Portal.Create(PortalType.Locked).From(map_4_2, 9, 25).To(map_4_3, 11, 13).MinimapOrientation(PortalMinimapOrientation.South)
local portal_4_3_to_4_2 = Portal.Create(PortalType.Locked).From(map_4_3, 11, 13).To(map_4_2, 9, 25).MinimapOrientation(PortalMinimapOrientation.North)
local portal_4_3_to_4_4 = Portal.Create(PortalType.Locked).From(map_4_3, 9, 25).To(map_4_4, 11, 13).MinimapOrientation(PortalMinimapOrientation.South)
local portal_4_4_to_4_3 = Portal.Create(PortalType.Locked).From(map_4_4, 11, 13).To(map_4_3, 9, 25).MinimapOrientation(PortalMinimapOrientation.North)
local portal_4_4_to_4_5 = Portal.Create(PortalType.Locked).From(map_4_4, 9, 25).To(map_4_5, 11, 13).MinimapOrientation(PortalMinimapOrientation.South)
local portal_4_5_to_4_4 = Portal.Create(PortalType.Locked).From(map_4_5, 11, 13).To(map_4_4, 9, 25).MinimapOrientation(PortalMinimapOrientation.North)
local portal_4_5_to_4_6 = Portal.Create(PortalType.Locked).From(map_4_5, 9, 25).To(map_4_6, 11, 13).MinimapOrientation(PortalMinimapOrientation.South)
local portal_4_6_to_4_5 = Portal.Create(PortalType.Locked).From(map_4_6, 11, 13).To(map_4_5, 9, 25).MinimapOrientation(PortalMinimapOrientation.North)
local portal_4_6_to_4_7 = Portal.Create(PortalType.Locked).From(map_4_6, 9, 25).To(map_4_7, 20, 28).MinimapOrientation(PortalMinimapOrientation.South)
local portal_4_7_to_4_6 = Portal.Create(PortalType.Locked).From(map_4_7, 20, 28).To(map_4_6, 9, 25).MinimapOrientation(PortalMinimapOrientation.North)

map_4_0.AddPortal(portal_4_0_to_4_1)
map_4_1.AddPortal(portal_4_1_to_4_0)
map_4_1.AddPortal(portal_4_1_to_4_2)
map_4_2.AddPortal(portal_4_2_to_4_1)
map_4_2.AddPortal(portal_4_2_to_4_3)
map_4_3.AddPortal(portal_4_3_to_4_2)
map_4_3.AddPortal(portal_4_3_to_4_4)
map_4_4.AddPortal(portal_4_4_to_4_3)
map_4_4.AddPortal(portal_4_4_to_4_5)
map_4_5.AddPortal(portal_4_5_to_4_4)
map_4_5.AddPortal(portal_4_5_to_4_6)
map_4_6.AddPortal(portal_4_6_to_4_5)
map_4_6.AddPortal(portal_4_6_to_4_7)
map_4_7.AddPortal(portal_4_7_to_4_6)

--- Map 4_0
map_4_0.OnMapJoin({
    Event.TryStartTaskForMap(map_4_0),
})
---

--- Map 4_1
map_4_1.OnMapJoin({
    Event.TryStartTaskForMap(map_4_1),
})
---

--- Map 4_2
map_4_2.AddMonsters({
    Monster.CreateWithVnum(154).At(33, 25).Facing(2), -- Lanetan
    Monster.CreateWithVnum(154).At(26, 9).Facing(3), -- Lanetan
    Monster.CreateWithVnum(154).At(22, 6).Facing(5), -- Lanetan
    Monster.CreateWithVnum(155).At(19, 29).Facing(4).AsTarget(), -- Fernon Dryad
    Monster.CreateWithVnum(154).At(28, 31).Facing(5).SpawnAfterMobsKilled(2), -- Lanetan
    Monster.CreateWithVnum(154).At(34, 17).Facing(1).SpawnAfterMobsKilled(2), -- Lanetan
    Monster.CreateWithVnum(154).At(12, 31).Facing(7).SpawnAfterMobsKilled(4), -- Lanetan
    Monster.CreateWithVnum(154).At(17, 35).Facing(4).SpawnAfterMobsKilled(4), -- Lanetan
    Monster.CreateWithVnum(154).At(6, 26).Facing(5).SpawnAfterMobsKilled(5), -- Lanetan
    Monster.CreateWithVnum(154).At(31, 12).Facing(1).SpawnAfterMobsKilled(6), -- Lanetan
})
map_4_2.OnMapJoin({
    Event.TryStartTaskForMap(map_4_2),
})
map_4_2.OnTaskFinish({
    Event.OpenPortal(portal_4_2_to_4_3),
    Event.OpenPortal(portal_4_2_to_4_1),
})
map_4_2.OnAllTargetMobsDead({
    Event.DespawnAllMobsInRoom(map_4_2),
})
---

--- Map 4_3
map_4_3.AddMonsters({
    Monster.CreateWithVnum(154).At(33, 25).Facing(7), -- Lanetan
    Monster.CreateWithVnum(154).At(26, 9).Facing(5), -- Lanetan
    Monster.CreateWithVnum(154).At(24, 32).Facing(1), -- Lanetan
    Monster.CreateWithVnum(154).At(22, 6).Facing(3), -- Lanetan
    Monster.CreateWithVnum(154).At(15, 6).Facing(2), -- Lanetan
    Monster.CreateWithVnum(155).At(19, 29).Facing(1).AsTarget(), -- Fernon Dryad
    Monster.CreateWithVnum(154).At(28, 31).Facing(5).SpawnAfterMobsKilled(2), -- Lanetan
    Monster.CreateWithVnum(154).At(34, 17).Facing(3).SpawnAfterMobsKilled(2), -- Lanetan
    Monster.CreateWithVnum(154).At(12, 31).Facing(1).SpawnAfterMobsKilled(4), -- Lanetan
    Monster.CreateWithVnum(154).At(17, 35).Facing(2).SpawnAfterMobsKilled(4), -- Lanetan
    Monster.CreateWithVnum(154).At(6, 26).Facing(6).SpawnAfterMobsKilled(5), -- Lanetan
    Monster.CreateWithVnum(154).At(31, 12).Facing(2).SpawnAfterMobsKilled(6), -- Lanetan
})
map_4_3.OnMapJoin({
    Event.TryStartTaskForMap(map_4_3),
})
map_4_3.OnTaskFinish({
    Event.OpenPortal(portal_4_3_to_4_2),
    Event.OpenPortal(portal_4_3_to_4_4),
})
map_4_3.OnAllTargetMobsDead({
    Event.DespawnAllMobsInRoom(map_4_3),
})
---

--- Map 4_4
map_4_4.AddMonsters({
    Monster.CreateWithVnum(154).At(33, 25).Facing(0), -- Lanetan
    Monster.CreateWithVnum(154).At(26, 9).Facing(2), -- Lanetan
    Monster.CreateWithVnum(154).At(23, 33).Facing(7), -- Lanetan
    Monster.CreateWithVnum(154).At(22, 6).Facing(1), -- Lanetan
    Monster.CreateWithVnum(155).At(19, 29).Facing(1).AsTarget(), -- Fernon Dryad
    Monster.CreateWithVnum(154).At(28, 31).Facing(4).SpawnAfterMobsKilled(2), -- Lanetan
    Monster.CreateWithVnum(154).At(34, 17).Facing(6).SpawnAfterMobsKilled(2), -- Lanetan
    Monster.CreateWithVnum(154).At(28, 27).Facing(0).SpawnAfterMobsKilled(3), -- Lanetan
    Monster.CreateWithVnum(154).At(12, 31).Facing(6).SpawnAfterMobsKilled(4), -- Lanetan
    Monster.CreateWithVnum(154).At(17, 35).Facing(0).SpawnAfterMobsKilled(4), -- Lanetan
    Monster.CreateWithVnum(154).At(6, 26).Facing(7).SpawnAfterMobsKilled(5), -- Lanetan
    Monster.CreateWithVnum(154).At(34, 19).Facing(6).SpawnAfterMobsKilled(5), -- Lanetan
    Monster.CreateWithVnum(154).At(31, 12).Facing(1).SpawnAfterMobsKilled(6), -- Lanetan
    Monster.CreateWithVnum(154).At(16, 6).Facing(0).SpawnAfterMobsKilled(7), -- Lanetan
    Monster.CreateWithVnum(154).At(9, 9).Facing(0).SpawnAfterMobsKilled(8), -- Lanetan
})
map_4_4.AddObjects({
    MapObject.CreateRegularBox().At(21, 37),
    MapObject.CreateRegularBox().At(19, 37),
})
map_4_4.OnMapJoin({
    Event.TryStartTaskForMap(map_4_4),
})
map_4_4.OnTaskFinish({
    Event.OpenPortal(portal_4_4_to_4_3),
    Event.OpenPortal(portal_4_4_to_4_5),
})
map_4_4.OnAllTargetMobsDead({
    Event.DespawnAllMobsInRoom(map_4_4),
})
---

--- Map 4_5
map_4_5.AddMonsters({
    Monster.CreateWithVnum(154).At(33, 25).Facing(7), -- Lanetan
    Monster.CreateWithVnum(154).At(26, 9).Facing(0), -- Lanetan
    Monster.CreateWithVnum(154).At(23, 33).Facing(0), -- Lanetan
    Monster.CreateWithVnum(154).At(22, 6).Facing(7), -- Lanetan
    Monster.CreateWithVnum(155).At(29, 20).Facing(0).AsTarget(), -- Fernon Dryad
    Monster.CreateWithVnum(155).At(19, 29).Facing(6).AsTarget(), -- Fernon Dryad
    Monster.CreateWithVnum(154).At(28, 31).Facing(5).SpawnAfterMobsKilled(2), -- Lanetan
    Monster.CreateWithVnum(154).At(34, 17).Facing(5).SpawnAfterMobsKilled(2), -- Lanetan
    Monster.CreateWithVnum(154).At(28, 27).Facing(2).SpawnAfterMobsKilled(3), -- Lanetan
    Monster.CreateWithVnum(154).At(12, 31).Facing(6).SpawnAfterMobsKilled(4), -- Lanetan
    Monster.CreateWithVnum(154).At(17, 35).Facing(5).SpawnAfterMobsKilled(4), -- Lanetan
    Monster.CreateWithVnum(154).At(6, 26).Facing(4).SpawnAfterMobsKilled(5), -- Lanetan
    Monster.CreateWithVnum(154).At(34, 19).Facing(7).SpawnAfterMobsKilled(5), -- Lanetan
    Monster.CreateWithVnum(154).At(31, 12).Facing(6).SpawnAfterMobsKilled(6), -- Lanetan
    Monster.CreateWithVnum(154).At(16, 6).Facing(5).SpawnAfterMobsKilled(7), -- Lanetan
    Monster.CreateWithVnum(154).At(9, 9).Facing(1).SpawnAfterMobsKilled(8), -- Lanetan
})
map_4_5.OnMapJoin({
    Event.TryStartTaskForMap(map_4_5),
})
map_4_5.OnTaskFinish({
    Event.OpenPortal(portal_4_5_to_4_4),
    Event.OpenPortal(portal_4_5_to_4_6),
})
map_4_5.OnAllTargetMobsDead({
    Event.DespawnAllMobsInRoom(map_4_5),
})
---

--- Map 4_6
map_4_6.AddMonsters({
    Monster.CreateWithVnum(154).At(33, 25).Facing(0), -- Lanetan
    Monster.CreateWithVnum(154).At(26, 9).Facing(0), -- Lanetan
    Monster.CreateWithVnum(154).At(23, 33).Facing(6), -- Lanetan
    Monster.CreateWithVnum(154).At(22, 6).Facing(0), -- Lanetan
    Monster.CreateWithVnum(155).At(29, 20).Facing(3).AsTarget(), -- Fernon Dryad
    Monster.CreateWithVnum(155).At(19, 29).Facing(7).AsTarget(), -- Fernon Dryad
    Monster.CreateWithVnum(154).At(28, 31).Facing(3).SpawnAfterMobsKilled(2), -- Lanetan
    Monster.CreateWithVnum(154).At(34, 17).Facing(5).SpawnAfterMobsKilled(2), -- Lanetan
    Monster.CreateWithVnum(154).At(28, 27).Facing(7).SpawnAfterMobsKilled(3), -- Lanetan
    Monster.CreateWithVnum(154).At(12, 31).Facing(4).SpawnAfterMobsKilled(4), -- Lanetan
    Monster.CreateWithVnum(154).At(17, 35).Facing(1).SpawnAfterMobsKilled(4), -- Lanetan
    Monster.CreateWithVnum(154).At(6, 26).Facing(0).SpawnAfterMobsKilled(5), -- Lanetan
    Monster.CreateWithVnum(154).At(34, 19).Facing(3).SpawnAfterMobsKilled(5), -- Lanetan
    Monster.CreateWithVnum(154).At(31, 12).Facing(0).SpawnAfterMobsKilled(6), -- Lanetan
    Monster.CreateWithVnum(154).At(16, 6).Facing(5).SpawnAfterMobsKilled(7), -- Lanetan
    Monster.CreateWithVnum(154).At(9, 9).Facing(6).SpawnAfterMobsKilled(8), -- Lanetan
})
map_4_6.AddObjects({
    MapObject.CreateRegularBox().At(21, 37),
    MapObject.CreateRegularBox().At(20, 37),
    MapObject.CreateRegularBox().At(18, 37),
})
map_4_6.OnMapJoin({
    Event.TryStartTaskForMap(map_4_6),
})
map_4_6.OnTaskFinish({
    Event.OpenPortal(portal_4_6_to_4_5),
    Event.OpenPortal(portal_4_6_to_4_7),
})
map_4_6.OnAllTargetMobsDead({
    Event.DespawnAllMobsInRoom(map_4_6),
})
---

--- Map 4_7
map_4_7.AddMonsters({
    Monster.CreateWithVnum(154).At(31, 27).Facing(1).SpawnAfterTaskStart(), -- Lanetan
    Monster.CreateWithVnum(154).At(30, 23).Facing(6).SpawnAfterTaskStart(), -- Lanetan
    Monster.CreateWithVnum(154).At(28, 31).Facing(1).SpawnAfterTaskStart(), -- Lanetan
    Monster.CreateWithVnum(154).At(23, 23).Facing(0).SpawnAfterTaskStart(), -- Lanetan
    Monster.CreateWithVnum(154).At(22, 31).Facing(0).SpawnAfterTaskStart(), -- Lanetan
    Monster.CreateWithVnum(154).At(16, 23).Facing(2).SpawnAfterTaskStart(), -- Lanetan
    Monster.CreateWithVnum(154).At(15, 32).Facing(7).SpawnAfterTaskStart(), -- Lanetan
    Monster.CreateWithVnum(154).At(11, 20).Facing(0).SpawnAfterTaskStart(), -- Lanetan
    Monster.CreateWithVnum(155).At(30, 36).Facing(3).SpawnAfterTaskStart().AsTarget(), -- Fernon Dryad
    Monster.CreateWithVnum(155).At(30, 20).Facing(5).SpawnAfterTaskStart().AsTarget(), -- Fernon Dryad
    Monster.CreateWithVnum(155).At(26, 27).Facing(1).SpawnAfterTaskStart().AsTarget(), -- Fernon Dryad
    Monster.CreateWithVnum(155).At(20, 38).Facing(3).SpawnAfterTaskStart().AsTarget(), -- Fernon Dryad
    Monster.CreateWithVnum(155).At(20, 19).Facing(1).SpawnAfterTaskStart().AsTarget(), -- Fernon Dryad
    Monster.CreateWithVnum(155).At(14, 26).Facing(1).SpawnAfterTaskStart().AsTarget(), -- Fernon Dryad
    Monster.CreateWithVnum(155).At(10, 36).Facing(1).SpawnAfterTaskStart().AsTarget(), -- Fernon Dryad
    Monster.CreateWithVnum(155).At(7, 14).Facing(3).SpawnAfterTaskStart().AsTarget(), -- Fernon Dryad
    Monster.CreateWithVnum(155).At(3, 28).Facing(0).SpawnAfterTaskStart().AsTarget(), -- Fernon Dryad
    Monster.CreateWithVnum(155).At(2, 19).Facing(2).SpawnAfterTaskStart().AsTarget(), -- Fernon Dryad
    Monster.CreateWithVnum(154).At(9, 28).Facing(0).SpawnAfterTaskStart().SpawnAfterMobsKilled(1), -- Lanetan
    Monster.CreateWithVnum(154).At(8, 24).Facing(2).SpawnAfterTaskStart().SpawnAfterMobsKilled(2), -- Lanetan
    Monster.CreateWithVnum(154).At(22, 28).Facing(3).SpawnAfterTaskStart().SpawnAfterMobsKilled(3), -- Lanetan
    Monster.CreateWithVnum(154).At(18, 27).Facing(3).SpawnAfterTaskStart().SpawnAfterMobsKilled(4), -- Lanetan
    Monster.CreateWithVnum(154).At(26, 21).Facing(6).SpawnAfterTaskStart().SpawnAfterMobsKilled(5), -- Lanetan
    Monster.CreateWithVnum(154).At(31, 17).Facing(6).SpawnAfterTaskStart().SpawnAfterMobsKilled(6), -- Lanetan
    Monster.CreateWithVnum(154).At(30, 28).Facing(2).SpawnAfterTaskStart().SpawnAfterMobsKilled(8), -- Lanetan
    Monster.CreateWithVnum(154).At(21, 34).Facing(0).SpawnAfterTaskStart().SpawnAfterMobsKilled(9), -- Lanetan
    Monster.CreateWithVnum(154).At(16, 31).Facing(0).SpawnAfterTaskStart().SpawnAfterMobsKilled(11), -- Lanetan
    Monster.CreateWithVnum(154).At(12, 31).Facing(4).SpawnAfterTaskStart().SpawnAfterMobsKilled(12), -- Lanetan
    Monster.CreateWithVnum(154).At(8, 27).Facing(6).SpawnAfterTaskStart().SpawnAfterMobsKilled(13), -- Lanetan
    Monster.CreateWithVnum(154).At(6, 23).Facing(5).SpawnAfterTaskStart().SpawnAfterMobsKilled(14), -- Lanetan
    Monster.CreateWithVnum(154).At(7, 19).Facing(6).SpawnAfterTaskStart().SpawnAfterMobsKilled(15), -- Lanetan
    Monster.CreateWithVnum(154).At(10, 17).Facing(6).SpawnAfterTaskStart().SpawnAfterMobsKilled(16), -- Lanetan
    Monster.CreateWithVnum(154).At(13, 18).Facing(2).SpawnAfterTaskStart().SpawnAfterMobsKilled(17), -- Lanetan
    Monster.CreateWithVnum(154).At(12, 24).Facing(0).SpawnAfterTaskStart().SpawnAfterMobsKilled(18), -- Lanetan
    Monster.CreateWithVnum(154).At(19, 23).Facing(1).SpawnAfterTaskStart().SpawnAfterMobsKilled(19), -- Lanetan
    Monster.CreateWithVnum(154).At(23, 26).Facing(1).SpawnAfterTaskStart().SpawnAfterMobsKilled(20), -- Lanetan
    Monster.CreateWithVnum(154).At(27, 26).Facing(7).SpawnAfterTaskStart().SpawnAfterMobsKilled(21), -- Lanetan
    Monster.CreateWithVnum(154).At(26, 30).Facing(6).SpawnAfterTaskStart().SpawnAfterMobsKilled(22), -- Lanetan
    Monster.CreateWithVnum(154).At(23, 34).Facing(2).SpawnAfterTaskStart().SpawnAfterMobsKilled(23), -- Lanetan
    Monster.CreateWithVnum(154).At(19, 30).Facing(0).SpawnAfterTaskStart().SpawnAfterMobsKilled(24), -- Lanetan
    Monster.CreateWithVnum(154).At(23, 20).Facing(3).SpawnAfterTaskStart().SpawnAfterMobsKilled(25), -- Lanetan
    Monster.CreateWithVnum(154).At(16, 20).Facing(1).SpawnAfterTaskStart().SpawnAfterMobsKilled(26), -- Lanetan
    Monster.CreateWithVnum(154).At(13, 29).Facing(1).SpawnAfterTaskStart().SpawnAfterMobsKilled(27), -- Lanetan
    Monster.CreateWithVnum(154).At(32, 30).Facing(2).SpawnAfterTaskStart().SpawnAfterMobsKilled(28), -- Lanetan
    Monster.CreateWithVnum(154).At(32, 25).Facing(5).SpawnAfterTaskStart().SpawnAfterMobsKilled(29), -- Lanetan
    Monster.CreateWithVnum(154).At(14, 22).Facing(7).SpawnAfterTaskStart().SpawnAfterMobsKilled(30), -- Lanetan
    Monster.CreateWithVnum(154).At(28, 17).Facing(4).SpawnAfterTaskStart().SpawnAfterMobsKilled(30), -- Lanetan
    Monster.CreateWithVnum(154).At(32, 20).Facing(4).SpawnAfterTaskStart().SpawnAfterMobsKilled(30), -- Lanetan
    Monster.CreateWithVnum(154).At(5, 20).Facing(4).SpawnAfterTaskStart().SpawnAfterMobsKilled(31), -- Lanetan
    Monster.CreateWithVnum(154).At(9, 22).Facing(0).SpawnAfterTaskStart().SpawnAfterMobsKilled(31), -- Lanetan
})
map_4_7.OnMapJoin({
    Event.TryStartTaskForMap(map_4_7),
})
map_4_7.OnAllTargetMobsDead({
    Event.DespawnAllMobsInRoom(map_4_7),
})
---

local ts = TimeSpace.Create(45)  -- TimeSpace ID
    .SetMaps({map_4_0, map_4_1, map_4_2, map_4_3, map_4_4, map_4_5, map_4_6, map_4_7})
    .SetSpawn(Location.InMap(map_4_0).At(6, 11))
    .SetLives(3)
    .SetObjectives(objectives)
    .SetDurationInSeconds(2000)
    .SetBonusPointItemDropChance(5000)
    .SetPreFinishDialog(6232)
return ts
