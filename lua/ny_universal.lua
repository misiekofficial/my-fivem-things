local msgpack = msgpack
local _i, _f, _v, _r, _ri, _rf, _rl, _s, _rv, _ro, _in, _ii, _fi =
	Citizen.PointerValueInt(), Citizen.PointerValueFloat(), Citizen.PointerValueVector(),
	Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger(), Citizen.ResultAsFloat(), Citizen.ResultAsLong(), Citizen.ResultAsString(), Citizen.ResultAsVector(), Citizen.ResultAsObject2(msgpack.unpack),
	Citizen.InvokeNative, Citizen.PointerValueIntInitialized, Citizen.PointerValueFloatInitialized

local g = _G
local rs = rawset
local _tostring = tostring
local function _ts(num)
	if num == 0 or not num then -- workaround for users calling string parameters with '0', also nil being translated
		return nil
	end
	return _tostring(num)
end
local function _obj(obj)
	local s = msgpack.pack(obj)
	return s, #s
end
local function _ch(hash)
	if g.type(hash) == 'string' then
		return g.GetHashKey(hash)
	end

	return hash
end

local function _mfr(fn)
	return g.Citizen.GetFunctionReference(fn)
end

local Global = setmetatable({}, { __newindex = function(_, n, v)
	g[n] = v

	rs(_, n, v)
end})

_ENV = nil

function Global.AbortAllGarageActivity()
	return _in(0x5DB95843)
end

function Global.AbortScriptedConversation(abort)
	return _in(0x57DB70CE, abort, _ri)
end

function Global.Absf(value)
	return _in(0x067640F3, value, _rf)
end

function Global.Absi(value)
	return _in(0x75A648B7, value, _rf)
end

function Global.Acos(Unk496)
	return _in(0x2E746E53, Unk496, _rf)
end

function Global.ActivateCheat(cheat)
	return _in(0x69E742FC, cheat)
end

function Global.ActivateDamageTrackerOnNetworkId(Unk897, Unk898)
	return _in(0x01181CA3, Unk897, Unk898)
end

function Global.ActivateFrontend()
	return _in(0x3C64626F)
end

function Global.ActivateHeliSpeedCheat(heli, cheat)
	return _in(0x033B52CA, heli, cheat)
end

function Global.ActivateInterior(interior, unknownTrue)
	return _in(0x66DD4F67, interior, unknownTrue)
end

function Global.ActivateMenuItem(menuid, item, activate)
	return _in(0x608237A4, menuid, item, activate)
end

function Global.ActivateNetworkSettingsMenu()
	return _in(0x609D0203)
end

function Global.ActivateReplayMenu()
	return _in(0x61040B08)
end

function Global.ActivateSaveMenu()
	return _in(0x78AC735F)
end

function Global.ActivateScriptPopulationZone()
	return _in(0x03F90052)
end

function Global.ActivateScriptedCams(Unk538, Unk539)
	return _in(0x3EBE11B9, Unk538, Unk539)
end

--- Activates built-in timecycle editing tool.
function Global.ActivateTimecycleEditor()
	return _in(0xeeb9b76a)
end

function Global.ActivateViewport(viewportid, activate)
	return _in(0x4D7D105A, viewportid, activate)
end

function Global.AddAdditionalPopulationModel(model)
	return _in(0x7EDE120F, model)
end

function Global.AddAmmoToChar(ped, weapon, amount)
	return _in(0x1ADA0C3A, ped, weapon, amount)
end

function Global.AddArmourToChar(ped, amount)
	return _in(0x1C623537, ped, amount)
end

--- Adds an output for the specified audio submix.
-- @param submixId The input submix.
-- @param outputSubmixId The output submix. Use `0` for the master game submix.
function Global.AddAudioSubmixOutput(submixId, outputSubmixId)
	return _in(0xac6e290d, submixId, outputSubmixId)
end

function Global.AddBlipForCar(vehicle, pBlip)
	return _in(0x6D21564D, vehicle, _ii(pBlip) --[[ may be optional ]])
end

function Global.AddBlipForChar(ped, pBlip)
	return _in(0x19A64C5D, ped, _ii(pBlip) --[[ may be optional ]])
end

function Global.AddBlipForContact(x, y, z, pBlip)
	return _in(0x7C671162, x, y, z, _ii(pBlip) --[[ may be optional ]])
end

function Global.AddBlipForCoord(x, y, z, pBlip)
	return _in(0x3E7D3074, x, y, z, _ii(pBlip) --[[ may be optional ]])
end

function Global.AddBlipForGangTerritory(x0, y0, x1, y1, colour, blip)
	return _in(0x2C1B52CE, x0, y0, x1, y1, colour, _ii(blip) --[[ may be optional ]])
end

function Global.AddBlipForObject(obj, pBlip)
	return _in(0x70CC1487, obj, _ii(pBlip) --[[ may be optional ]])
end

function Global.AddBlipForPickup(pickup, pBlip)
	return _in(0x04F567FB, pickup, _ii(pBlip) --[[ may be optional ]])
end

function Global.AddBlipForRadius(x, y, z, type, blip)
	return _in(0x21804D1A, x, y, z, type, _ii(blip) --[[ may be optional ]])
end

function Global.AddBlipForWeapon(x, y, z, blip)
	return _in(0x4CA708B9, x, y, z, _ii(blip) --[[ may be optional ]])
end

function Global.AddCamSplineNode(cam, camnode)
	return _in(0x3B4F1EBA, cam, camnode)
end

function Global.AddCarToMissionDeletionList(car)
	return _in(0x45E80BF7, car)
end

function Global.AddCharDecisionMakerEventResponse(dm, eventid, responseid, param1, param2, param3, param4, unknown0_1, unknown1_1)
	return _in(0x65536ECF, dm, eventid, responseid, param1, param2, param3, param4, unknown0_1, unknown1_1)
end

function Global.AddCoverBlockingArea(Unk110, Unk111, Unk112, Unk113, Unk114, Unk115, Unk116, Unk117, Unk118)
	return _in(0x6E856548, Unk110, Unk111, Unk112, Unk113, Unk114, Unk115, Unk116, Unk117, Unk118)
end

function Global.AddCoverPoint(Unk119, Unk120, Unk121, Unk122, Unk123, Unk124, Unk125, Unk126)
	return _in(0x18D5264D, Unk119, Unk120, Unk121, Unk122, Unk123, Unk124, Unk125, Unk126)
end

function Global.AddExplosion(x, y, z, exptype, radius, playsound, novisual, camshake)
	return _in(0x32DA5E3A, x, y, z, exptype, radius, playsound, novisual, camshake)
end

function Global.AddFirstNCharactersOfStringToHtmlScriptObject(htmlobj, str, n)
	return _in(0x75FC34EF, htmlobj, _ts(str), n)
end

function Global.AddFollowNavmeshToPhoneTask(ped, Unk127, Unk128, Unk129)
	return _in(0x7F5D69C4, ped, Unk127, Unk128, Unk129)
end

function Global.AddGroupDecisionMakerEventResponse(dm, eventid, responseid, param1, param2, param3, param4, unknown0_1, unknown1_1)
	return _in(0x40CF3953, dm, eventid, responseid, param1, param2, param3, param4, unknown0_1, unknown1_1)
end

function Global.AddGroupToNetworkRestartNodeGroupList(Unk899)
	return _in(0x592E0E0F, Unk899)
end

function Global.AddHospitalRestart(x, y, z, radius, islandnum)
	return _in(0x2AB06643, x, y, z, radius, islandnum)
end

function Global.AddLineToConversation(Unk522, Unk523, Unk524, Unk525, Unk526)
	return _in(0x75080482, Unk522, Unk523, Unk524, Unk525, Unk526)
end

function Global.AddLineToMobilePhoneCall(id, name, text)
	return _in(0x0BED1DDE, id, _ts(name), _ts(text))
end

function Global.AddLineToScriptedConversation(conversation, Unk527, Unk528)
	return _in(0x416413F6, conversation, Unk527, Unk528)
end

function Global.AddNavmeshRequiredRegion(x, y, z)
	return _in(0x6CB64BDB, x, y, z, _ri)
end

function Global.AddNeededAtPosn(x, y, z)
	return _in(0x2E831921, x, y, z)
end

function Global.AddNewConversationSpeaker(id, Unk529, Unk530)
	return _in(0x542D499E, id, Unk529, _ii(Unk530) --[[ may be optional ]])
end

function Global.AddNewFrontendConversationSpeaker(Unk531, Unk532)
	return _in(0x13D44996, Unk531, Unk532)
end

function Global.AddNextMessageToPreviousBriefs(add)
	return _in(0x1B086D33, add)
end

function Global.AddObjectToInteriorRoomByKey(obj, roomKey)
	return _in(0x67D83807, obj, roomKey)
end

function Global.AddObjectToInteriorRoomByName(obj, room_name)
	return _in(0x076863C9, obj, _ts(room_name))
end

function Global.AddPedToCinematographyAi(Unk28, ped)
	return _in(0x62687944, Unk28, ped)
end

function Global.AddPedToMissionDeletionList(ped, Unk29)
	return _in(0x10F64FBF, ped, Unk29)
end

function Global.AddPickupToInteriorRoomByKey(pickup, room_hash)
	return _in(0x198B786F, pickup, room_hash)
end

function Global.AddPickupToInteriorRoomByName(pickup, roomName)
	return _in(0x0365042F, pickup, _ts(roomName))
end

function Global.AddPointToGpsRaceTrack(point)
	return _in(0x5BE115FD, _v)
end

function Global.AddPoliceRestart(x, y, z, radius, islandnum)
	return _in(0x42492860, x, y, z, radius, islandnum)
end

function Global.AddScenarioBlockingArea(x0, y0, z0, x1, y1, z1)
	return _in(0x4C1E3A64, x0, y0, z0, x1, y1, z1)
end

function Global.AddScore(playerIndex, score)
	return _in(0x537379A8, playerIndex, score)
end

function Global.AddSimpleBlipForPickup(pickup)
	return _in(0x44B30452, pickup)
end

function Global.AddSpawnBlockingArea(Unk900, Unk901, Unk902, Unk903)
	return _in(0x36DF37DB, Unk900, Unk901, Unk902, Unk903)
end

function Global.AddSpawnBlockingDisc(Unk904, Unk905, Unk906, Unk907, Unk908)
	return _in(0x2B4E2A8C, Unk904, Unk905, Unk906, Unk907, Unk908)
end

--- Adds a handler for changes to a state bag.
-- The function called expects to match the following signature:
-- ```ts
-- function StateBagChangeHandler(bagName: string, key: string, value: any, reserved: number, replicated: boolean);
-- ```
-- *   **bagName**: The internal bag ID for the state bag which changed. This is usually `player:Source`, `entity:NetID`
-- or `localEntity:Handle`.
-- *   **key**: The changed key.
-- *   **value**: The new value stored at key. The old value is still stored in the state bag at the time this callback executes.
-- *   **reserved**: Currently unused.
-- *   **replicated**: Whether the set is meant to be replicated.
-- At this time, the change handler can't opt to reject changes.
-- If bagName refers to an entity, use [GET_ENTITY_FROM_STATE_BAG_NAME](?\_0x4BDF1868) to get the entity handle
-- If bagName refers to a player, use [GET_PLAYER_FROM_STATE_BAG_NAME](?\_0xA56135E0) to get the player handle
-- @param keyFilter The key to check for, or null for no filter.
-- @param bagFilter The bag ID to check for such as `entity:65535`, or null for no filter.
-- @param handler The handler function.
-- @return A cookie to remove the change handler.
function Global.AddStateBagChangeHandler(keyFilter, bagFilter, handler)
	return _in(0x5ba35aaf, _ts(keyFilter), _ts(bagFilter), _mfr(handler), _ri)
end

function Global.AddStringToHtmlScriptObject(htmlobj, str)
	return _in(0x7EB70379, htmlobj, _ts(str))
end

function Global.AddStringToNewsScrollbar(str)
	return _in(0x192E5726, _ts(str))
end

function Global.AddStringWithThisTextLabelToPreviousBrief(gxtname)
	return _in(0x76860554, _ts(gxtname))
end

function Global.AddStuckCarCheck(car, stuckdif, timeout)
	return _in(0x03A01B12, car, stuckdif, timeout)
end

function Global.AddStuckCarCheckWithWarp(car, stuckdif, time, flag0, flag1, flag2, flag3)
	return _in(0x3BCA4ACA, car, stuckdif, time, flag0, flag1, flag2, flag3)
end

function Global.AddStuntJump(x, y, z, x0, y0, z0, x1, y1, z1, x2, y2, z2, x3, y3, z3, reward)
	return _in(0x422E7AC3, x, y, z, x0, y0, z0, x1, y1, z1, x2, y2, z2, x3, y3, z3, reward)
end

--- ADD_TEXT_ENTRY
function Global.AddTextEntry(entryKey, entryText)
	return _in(0x32ca01c3, _ts(entryKey), _ts(entryText))
end

--- ADD_TEXT_ENTRY_BY_HASH
function Global.AddTextEntryByHash(entryKey, entryText)
	return _in(0x289da860, _ch(entryKey), _ts(entryText))
end

function Global.AddTextWidget(Unk1089)
	return _in(0x7537050D, Unk1089, _s)
end

function Global.AddTickerToPreviousBriefWithUnderscore(Unk625, Unk626, Unk627, Unk628, Unk629, Unk630, Unk631)
	return _in(0x020E0318, Unk625, Unk626, Unk627, Unk628, Unk629, Unk630, Unk631)
end

function Global.AddToHtmlScriptObject(htmlobj, htmlcode)
	return _in(0x3ECC0086, htmlobj, _ts(htmlcode))
end

function Global.AddToPreviousBrief(gxtentry)
	return _in(0x446E6515, _ts(gxtentry))
end

function Global.AddToPreviousBriefWithUnderscore(gxtentry)
	return _in(0x3D0A71A2, _ts(gxtentry))
end

function Global.AddToWidgetCombo(Unk1091)
	return _in(0x4F0D4AC7, Unk1091)
end

function Global.AddUpsidedownCarCheck(vehicle)
	return _in(0x557C076C, vehicle)
end

function Global.AddWidgetFloatReadOnly(Unk1092, Unk1093)
	return _in(0x4C8A7614, Unk1092, Unk1093)
end

function Global.AddWidgetFloatSlider(Unk1094, Unk1095, Unk1096, Unk1097, Unk1098)
	return _in(0x6F9256DF, Unk1094, Unk1095, Unk1096, Unk1097, Unk1098)
end

function Global.AddWidgetReadOnly(Unk1099, Unk1100)
	return _in(0x4A2E3BCA, Unk1099, Unk1100)
end

function Global.AddWidgetSlider(Unk1101, Unk1102, Unk1103, Unk1104, Unk1105)
	return _in(0x4A904476, Unk1101, Unk1102, Unk1103, Unk1104, Unk1105)
end

function Global.AddWidgetString(Unk1106)
	return _in(0x27D20F21, Unk1106)
end

function Global.AddWidgetToggle(Unk1107, Unk1108)
	return _in(0x66F47727, Unk1107, Unk1108)
end

function Global.AllocateScriptToObject(ScriptName, model, Unk602, radius, UnkTime)
	return _in(0x71C30148, _ts(ScriptName), model, Unk602, radius, UnkTime)
end

function Global.AllocateScriptToRandomPed(ScriptName, model, Unk603, flag)
	return _in(0x19DB19D8, _ts(ScriptName), model, Unk603, flag)
end

function Global.AllowAutoConversationLookats(ped, allow)
	return _in(0x736D423E, ped, allow)
end

function Global.AllowEmergencyServices(allow)
	return _in(0x69A72C50, allow)
end

function Global.AllowGameToPauseForStreaming(allow)
	return _in(0x085E559E, allow)
end

function Global.AllowGangRelationshipsToBeChangedByNextCommand(value)
	return _in(0x585157FE, value)
end

function Global.AllowLockonToFriendlyPlayers(player, allow)
	return _in(0x362B5D1B, player, allow)
end

function Global.AllowLockonToRandomPeds(player, allow)
	return _in(0x6FE455D8, player, allow)
end

function Global.AllowMultipleDrivebyPickups(allow)
	return _in(0x7FC02528, allow)
end

function Global.AllowOneTimeOnlyCommandsToRun()
	return _in(0x3B2E3198, _r)
end

function Global.AllowPlayerToCarryNonMissionObjects(playerIndex, allow)
	return _in(0x6A0A724C, playerIndex, allow)
end

function Global.AllowReactionAnims(ped, allow)
	return _in(0x0FEA6230, ped, allow)
end

function Global.AllowScenarioPedsToBeReturnedByNextCommand(value)
	return _in(0x6EEE7E6C, value)
end

function Global.AllowStuntJumpsToTrigger(allow)
	return _in(0x5E8D7E3F, allow)
end

function Global.AllowTargetWhenInjured(ped, allow)
	return _in(0x33F8250B, ped, allow)
end

function Global.AllowThisScriptToBePaused(allows)
	return _in(0x3514533B, allows)
end

function Global.AlterWantedLevel(playerIndex, level)
	return _in(0x60C80EC9, playerIndex, level)
end

function Global.AlterWantedLevelNoDrop(playerIndex, level)
	return _in(0x5F3B6079, playerIndex, level)
end

function Global.AlwaysUseHeadOnHornAnimWhenDeadInCar(ped, use)
	return _in(0x7C156670, ped, use)
end

function Global.AmbientAudioBankNoLongerNeeded()
	return _in(0x292349C7)
end

function Global.AnchorBoat(boat, anchor)
	return _in(0x2E12687B, boat, anchor)
end

function Global.AnchorObject(obj, anchor, flags)
	return _in(0x5785181B, obj, anchor, flags)
end

function Global.ApplyForceToCar(vehicle, unknown0_3, x, y, z, spinX, spinY, spinZ, unknown4_0, unknown5_1, unknown6_1, unknown7_1)
	return _in(0x434611A3, vehicle, unknown0_3, x, y, z, spinX, spinY, spinZ, unknown4_0, unknown5_1, unknown6_1, unknown7_1)
end

function Global.ApplyForceToObject(obj, uk0_3, pX, pY, pZ, spinX, spinY, spinZ, uk4_0, uk5_1, uk6_1, uk7_1)
	return _in(0x438F6ECB, obj, uk0_3, pX, pY, pZ, spinX, spinY, spinZ, uk4_0, uk5_1, uk6_1, uk7_1)
end

function Global.ApplyForceToPed(ped, unknown0_3, x, y, z, spinX, spinY, spinZ, unknown4_0, unknown5_1, unknown6_1, unknown7_1)
	return _in(0x7305301D, ped, unknown0_3, x, y, z, spinX, spinY, spinZ, unknown4_0, unknown5_1, unknown6_1, unknown7_1)
end

function Global.ApplyWantedLevelChangeNow(playerIndex)
	return _in(0x705A6ED9, playerIndex)
end

function Global.AreAllNavmeshRegionsLoaded()
	return _in(0x73737990, _r)
end

function Global.AreAnyCharsNearChar(ped, radius)
	return _in(0x0F4A4FB2, ped, radius, _r)
end

function Global.AreCreditsFinished()
	return _in(0x63A669B6, _r)
end

function Global.AreEnemyPedsInArea(ped, x, y, z, radius)
	return _in(0x5C081186, ped, x, y, z, radius, _r)
end

function Global.AreTaxiLightsOn(vehicle)
	return _in(0x5F4B0B22, vehicle, _r)
end

function Global.AreWidescreenBordersActive()
	return _in(0x4FE17259, _r)
end

function Global.AsciiIntToString(ascii)
	return _in(0x7F4C0E47, ascii, _s)
end

function Global.Asin(value)
	return _in(0x590A6F04, value, _rf)
end

function Global.Atan(value)
	return _in(0x7FFE0A12, value, _rf)
end

function Global.Atan2(Unk497, Unk498)
	return _in(0x10A1449C, Unk497, Unk498, _rf)
end

function Global.AttachAnimsToModel(model, anims)
	return _in(0x0B5704E0, model, _ts(anims))
end

function Global.AttachCamToObject(cam, obj)
	return _in(0x2966710D, cam, obj)
end

function Global.AttachCamToPed(cam, ped)
	return _in(0x78B00CB2, cam, ped)
end

function Global.AttachCamToVehicle(cam, veh)
	return _in(0x5E564CFF, cam, veh)
end

function Global.AttachCamToViewport(cam, viewportid)
	return _in(0x21A3110A, cam, viewportid)
end

function Global.AttachCarToCar(car0, car1, Unk51, x0, y0, z0, x1, y1, z1)
	return _in(0x64146142, car0, car1, Unk51, x0, y0, z0, x1, y1, z1)
end

function Global.AttachCarToCarPhysically(vehid1, vehid2, Unk52, Unk53, xoffset, yoffset, zoffset, xbuffer, ybuffer, zbuffer, xrotateveh1, yrotateveh1, Unk54, Unk55, Unk56)
	return _in(0x778F46E3, vehid1, vehid2, Unk52, Unk53, xoffset, yoffset, zoffset, xbuffer, ybuffer, zbuffer, xrotateveh1, yrotateveh1, Unk54, Unk55, Unk56)
end

function Global.AttachCarToObject(car, obj, Unk57, Unk58, Unk59, Unk60, Unk61, Unk62, Unk63)
	return _in(0x61C81E88, car, obj, Unk57, Unk58, Unk59, Unk60, Unk61, Unk62, Unk63)
end

function Global.AttachObjectToCar(obj, v, unknown0_0, pX, pY, pZ, rX, rY, rZ)
	return _in(0x7E81412A, obj, v, unknown0_0, pX, pY, pZ, rX, rY, rZ)
end

function Global.AttachObjectToCarPhysically(obj, car, Unk79, Unk80, Unk81, Unk82, Unk83, Unk84, Unk85, Unk86, Unk87, Unk88, Unk89, Unk90, flag)
	return _in(0x161B05A9, obj, car, Unk79, Unk80, Unk81, Unk82, Unk83, Unk84, Unk85, Unk86, Unk87, Unk88, Unk89, Unk90, flag)
end

function Global.AttachObjectToObject(obj0, obj1_attach_to, Unk91, x0, y0, z0, x1, y1, z1)
	return _in(0x089E42C1, obj0, obj1_attach_to, Unk91, x0, y0, z0, x1, y1, z1)
end

function Global.AttachObjectToPed(obj, c, bone, pX, pY, pZ, rX, rY, rZ, unknown1_0)
	return _in(0x577A699E, obj, c, bone, pX, pY, pZ, rX, rY, rZ, unknown1_0)
end

function Global.AttachObjectToPedPhysically(obj, c, unknown, bone, pX, pY, pZ, rX, rY, rZ, unknown1_0, unknown2_0)
	return _in(0x1F760E1A, obj, c, unknown, bone, pX, pY, pZ, rX, rY, rZ, unknown1_0, unknown2_0)
end

function Global.AttachParachuteModelToPlayer(ped, obj)
	return _in(0x7EDD58E1, ped, obj)
end

function Global.AttachPedToCar(ped, vehicle, unknown0_0, offsetX, offsetY, offsetZ, rotX, rotY, Unk64, Unk65)
	return _in(0x3EFC1A7D, ped, vehicle, unknown0_0, offsetX, offsetY, offsetZ, rotX, rotY, Unk64, Unk65)
end

function Global.AttachPedToCarPhysically(ped, car, pedbone, x, y, z, angle, Unk30, Unk31, Unk32)
	return _in(0x7FF3248C, ped, car, pedbone, x, y, z, angle, Unk30, Unk31, Unk32)
end

function Global.AttachPedToObject(ped, obj, pedbone, x, y, z, angle, Unk33, Unk34, Unk35)
	return _in(0x376917AB, ped, obj, pedbone, x, y, z, angle, Unk33, Unk34, Unk35)
end

function Global.AttachPedToObjectPhysically(ped, obj, pedbone, x, y, z, angle, Unk36, Unk37, Unk38)
	return _in(0x782E78BF, ped, obj, pedbone, x, y, z, angle, Unk36, Unk37, Unk38)
end

function Global.AttachPedToShimmyEdge(ped, x, y, z, Unk39)
	return _in(0x0860560B, ped, x, y, z, Unk39)
end

function Global.AwardAchievement(achievement)
	return _in(0x5ED03255, achievement, _ri)
end

function Global.AwardPlayerMissionRespect(respect)
	return _in(0x7783449D, respect)
end

function Global.BeginCamCommands(Unk540)
	return _in(0x351F4C86, _ii(Unk540) --[[ may be optional ]])
end

function Global.BeginCharSearchCriteria()
	return _in(0x43F86230)
end

function Global.BlendFromNmWithAnim(ped, AnimName0, AnimName1, Unk1, x, y, z)
	return _in(0x6E405BD5, ped, _ts(AnimName0), _ts(AnimName1), Unk1, x, y, z)
end

function Global.BlendOutCharMoveAnims(ped)
	return _in(0x65A34B7A, ped)
end

function Global.BlockCharAmbientAnims(ped, block)
	return _in(0x1A2D7640, ped, block)
end

function Global.BlockCharGestureAnims(ped, value)
	return _in(0x1C144E4E, ped, value)
end

function Global.BlockCharHeadIk(ped, block)
	return _in(0x3EFA66E8, ped, block)
end

function Global.BlockCharVisemeAnims(ped, block)
	return _in(0x44881D27, ped, block)
end

function Global.BlockCoweringInCover(ped, set)
	return _in(0x1866612D, ped, set)
end

function Global.BlockPedWeaponSwitching(ped, value)
	return _in(0x315238D5, ped, value)
end

function Global.BlockPeekingInCover(ped, set)
	return _in(0x15101503, ped, set)
end

function Global.BlockStatsMenuActions(player)
	return _in(0x734E3F62, player)
end

function Global.BreakCarDoor(vehicle, door, unknownFalse)
	return _in(0x18BD071B, vehicle, door, unknownFalse)
end

function Global.BurstCarTyre(vehicle, tyre)
	return _in(0x690D344F, vehicle, tyre)
end

function Global.CalculateChecksum(Unk1006, Unk1007)
	return _in(0x18A302CD, Unk1006, Unk1007, _ri)
end

function Global.CalculateTravelDistanceBetweenNodes(x0, y0, z0, x1, y1, z1)
	return _in(0x09A558A5, x0, y0, z0, x1, y1, z1, _rf)
end

function Global.CamIsSphereVisible(camera, pX, pY, pZ, radius)
	return _in(0x2D5611D4, camera, pX, pY, pZ, radius, _r)
end

function Global.CamProcess(cam)
	return _in(0x52411DDA, cam)
end

function Global.CamRestore()
	return _in(0x348F612D)
end

function Global.CamRestoreJumpcut()
	return _in(0x538021CD)
end

function Global.CamSequenceClose()
	return _in(0x5D975A46)
end

function Global.CamSequenceGetProgress(Unk541, progress)
	return _in(0x7AAD273F, Unk541, _ii(progress) --[[ may be optional ]])
end

function Global.CamSequenceOpen(Unk542)
	return _in(0x5D867A02, Unk542)
end

function Global.CamSequenceRemove(Unk543)
	return _in(0x01473ACB, Unk543)
end

function Global.CamSequenceStart(Unk544)
	return _in(0x26335EE7, Unk544)
end

function Global.CamSequenceStop(Unk545)
	return _in(0x282E4EFB, Unk545)
end

function Global.CamSequenceWait(cam, time)
	return _in(0x0D970483, cam, time)
end

function Global.CamSetCinematic(veh, set)
	return _in(0x63A86D87, veh, set)
end

function Global.CamSetDollyZoomLock(cam, set)
	return _in(0x25071DF3, cam, set)
end

function Global.CamSetInterpGraphPos(cam, Unk547)
	return _in(0x3C7C3E89, cam, Unk547)
end

function Global.CamSetInterpGraphRot(cam, val)
	return _in(0x1C5B7C51, cam, val)
end

function Global.CamSetInterpStateSrc(cam, Unk548)
	return _in(0x32C67124, cam, Unk548)
end

function Global.CamSetInterpStateSrc(Unk549, Unk550)
	return _in(0x32C67124, Unk549, Unk550)
end

function Global.CamSetInterpolationDetails(Unk546)
	return _in(0x5AAC39C1, Unk546)
end

function Global.CanBeDescribedAsACar(veh)
	return _in(0x79103802, veh, _r)
end

function Global.CanCharSeeDeadChar(ped, pednext)
	return _in(0x7ED82ED9, ped, pednext, _r)
end

function Global.CanCreateRandomChar(flag0, flag1)
	return _in(0x5CD64D63, flag0, flag1, _r)
end

function Global.CanFontBeLoaded(fontid)
	return _in(0x1E2A5820, fontid, _r)
end

function Global.CanPedShimmyInDirection(ped, direction)
	return _in(0x6D1E5C25, ped, direction, _r)
end

function Global.CanPhoneBeSeenOnScreen()
	return _in(0x5C9863F6, _r)
end

function Global.CanPlayerStartMission(player)
	return _in(0x02A235D0, player, _r)
end

function Global.CanRegisterMissionObject()
	return _in(0x42F1557D, _r)
end

function Global.CanRegisterMissionPed()
	return _in(0x1DC730B8, _r)
end

function Global.CanRegisterMissionVehicle()
	return _in(0x200A510B, _r)
end

function Global.CanStartMissionPassedTune()
	return _in(0x22AB641D, _r)
end

function Global.CanTheStatHaveString(stat)
	return _in(0x0B651AFB, stat, _r)
end

function Global.CancelCurrentlyPlayingAmbientSpeech(ped)
	return _in(0x495D445F, ped)
end

function Global.CancelCurrentlyPlayingAmbientSpeech(ped)
	return _in(0x495D445F, ped)
end

--- Cancels the currently executing event.
function Global.CancelEvent()
	return _in(0xfa29d35d)
end

function Global.CancelOverrideRestart()
	return _in(0x6ED83424)
end

function Global.Ceil(value)
	return _in(0x76181322, value, _ri)
end

function Global.CellCamActivate(Unk551, Unk552)
	return _in(0x446F74E5, Unk551, Unk552)
end

function Global.CellCamIsCharVisible(ped)
	return _in(0x0D6C0836, ped, _r)
end

function Global.CellCamIsCharVisibleNoFaceCheck(ped)
	return _in(0x770600CF, ped, _r)
end

function Global.CellCamSetCentrePos(x, y)
	return _in(0x32C67003, x, y)
end

function Global.CellCamSetColourBrightness(Unk553, Unk554, Unk555, Unk556)
	return _in(0x4ECB189E, Unk553, Unk554, Unk555, Unk556)
end

function Global.CellCamSetZoom(zoom)
	return _in(0x087C5347, zoom)
end

function Global.ChangeBlipAlpha(blip, alpha)
	return _in(0x2FB14E41, blip, alpha)
end

function Global.ChangeBlipColour(blip, colour)
	return _in(0x1D8800E3, blip, colour)
end

function Global.ChangeBlipDisplay(blip, display)
	return _in(0x3ACC1794, blip, display)
end

function Global.ChangeBlipNameFromAscii(blip, blipName)
	return _in(0x6C9F2330, blip, _ts(blipName))
end

function Global.ChangeBlipNameFromTextFile(blip, gxtName)
	return _in(0x0A9D695E, blip, _ts(gxtName))
end

function Global.ChangeBlipNameToPlayerName(blip, playerid)
	return _in(0x731B11A7, blip, playerid)
end

function Global.ChangeBlipPriority(blip, priority)
	return _in(0x69EC0E70, blip, priority)
end

function Global.ChangeBlipRotation(blip, rotation)
	return _in(0x3AF307B1, blip, rotation)
end

function Global.ChangeBlipScale(blip, scale)
	return _in(0x44D349D9, blip, scale)
end

function Global.ChangeBlipSprite(blip, sprite)
	return _in(0x6A90123D, blip, sprite)
end

function Global.ChangeBlipTeamRelevance(blip, relevance)
	return _in(0x4B2625BE, blip, relevance)
end

function Global.ChangeCarColour(vehicle, colour1, colour2)
	return _in(0x06441EAF, vehicle, colour1, colour2)
end

function Global.ChangeCharSitIdleAnim(ped, Unk2, Unk3, Unk4)
	return _in(0x7B2822F7, ped, Unk2, Unk3, Unk4)
end

function Global.ChangeGarageType(garage, type)
	return _in(0x6E0A438A, garage, type)
end

function Global.ChangePickupBlipColour(colour)
	return _in(0x65D949B7, colour)
end

function Global.ChangePickupBlipDisplay(display)
	return _in(0x3E5F2362, display)
end

function Global.ChangePickupBlipPriority(priority)
	return _in(0x31321D1A, priority)
end

function Global.ChangePickupBlipScale(scale)
	return _in(0x4F66544E, scale)
end

function Global.ChangePickupBlipSprite(sprite)
	return _in(0x05766DDE, sprite)
end

function Global.ChangePlaybackToUseAi(car)
	return _in(0x76EB2878, car)
end

function Global.ChangePlayerModel(playerIndex, model)
	return _in(0x232F1A85, playerIndex, model)
end

function Global.ChangePlayerPhoneModel(player, model)
	return _in(0x7F2A71FD, player, model)
end

function Global.ChangePlayerPhoneModelOffsets(player, x0, y0, z0, x1, y1, z1)
	return _in(0x481E2BE7, player, x0, y0, z0, x1, y1, z1)
end

function Global.ChangeTerritoryBlipScale(blip, Unk632, Unk633)
	return _in(0x35A250C2, blip, Unk632, Unk633)
end

function Global.CheatHappenedRecently(cheat, time)
	return _in(0x7488454D, cheat, time, _r)
end

function Global.CheckNmFeedback(ped, id, Unk13)
	return _in(0x7C4C63EF, ped, id, Unk13, _r)
end

function Global.CheckStuckTimer(car, timernum, timeout)
	return _in(0x15285933, car, timernum, timeout, _r)
end

function Global.ClearAdditionalText(textid, Unk634)
	return _in(0x0A1B465C, textid, Unk634)
end

function Global.ClearAllCharProps(ped)
	return _in(0x232A52FA, ped)
end

function Global.ClearAllCharRelationships(ped, relgroup)
	return _in(0x57297D58, ped, relgroup)
end

function Global.ClearAngledAreaOfCars(x0, y0, z0, x1, y1, z1, radius)
	return _in(0x7E2A7743, x0, y0, z0, x1, y1, z1, radius)
end

function Global.ClearArea(x, y, z, radius, unknown)
	return _in(0x27722942, x, y, z, radius, unknown)
end

function Global.ClearAreaOfCars(x, y, z, radius)
	return _in(0x24367E48, x, y, z, radius)
end

function Global.ClearAreaOfChars(x, y, z, radius)
	return _in(0x0C2747B9, x, y, z, radius)
end

function Global.ClearAreaOfCops(x, y, z, radius)
	return _in(0x5F182E21, x, y, z, radius)
end

function Global.ClearAreaOfObjects(x, y, z, radius)
	return _in(0x118A67C9, x, y, z, radius)
end

function Global.ClearBit(bit)
	return _in(0x66D57CC4, _i, bit)
end

function Global.ClearBrief()
	return _in(0x16D762E5)
end

function Global.ClearCarLastDamageEntity(vehicle)
	return _in(0x4D6665F7, vehicle)
end

function Global.ClearCarLastWeaponDamage(vehicle)
	return _in(0x31102E20, vehicle)
end

function Global.ClearCharLastDamageBone(ped)
	return _in(0x1A013092, ped)
end

function Global.ClearCharLastDamageEntity(ped)
	return _in(0x0AB9317B, ped)
end

function Global.ClearCharLastWeaponDamage(ped)
	return _in(0x718508B4, ped)
end

function Global.ClearCharProp(ped, unknown)
	return _in(0x51546112, ped, unknown)
end

function Global.ClearCharRelationship(ped, reltype, relgroup)
	return _in(0x42DB145F, ped, reltype, relgroup)
end

function Global.ClearCharSecondaryTask(ped)
	return _in(0x7FC96DD5, ped)
end

function Global.ClearCharTasks(ped)
	return _in(0x4AB470F3, ped)
end

function Global.ClearCharTasksImmediately(ped)
	return _in(0x3C116620, ped)
end

function Global.ClearCutscene()
	return _in(0x79611458)
end

function Global.ClearGroupDecisionMakerEventResponse(dm, eventid)
	return _in(0x3BF71D5F, dm, eventid)
end

function Global.ClearHelp()
	return _in(0x07244253)
end

function Global.ClearNamedCutscene(name)
	return _in(0x62EF058E, _ts(name))
end

function Global.ClearNetworkRestartNodeGroupList()
	return _in(0x1BDA1F9A)
end

function Global.ClearNewsScrollbar()
	return _in(0x0D721EEA)
end

function Global.ClearObjectLastDamageEntity(obj)
	return _in(0x64BE2E39, obj)
end

function Global.ClearObjectLastWeaponDamage(obj)
	return _in(0x15F11BAB, obj)
end

function Global.ClearOnscreenCounter(counterid)
	return _in(0x3F236954, counterid)
end

function Global.ClearOnscreenTimer(timerid)
	return _in(0x34C751A2, timerid)
end

function Global.ClearPedNonCreationArea()
	return _in(0x0C1C7919)
end

function Global.ClearPedNonRemovalArea()
	return _in(0x0A74017B)
end

function Global.ClearPlayerHasDamagedAtLeastOnePed(playerIndex)
	return _in(0x45AB718F, playerIndex)
end

function Global.ClearPlayerHasDamagedAtLeastOneVehicle(player)
	return _in(0x26AA20CF, player)
end

function Global.ClearPrints()
	return _in(0x1D8C324A)
end

function Global.ClearRelationship(p0, p1, p2)
	return _in(0x3FF16CBC, p0, p1, p2)
end

function Global.ClearRoomForCar(vehicle)
	return _in(0x5FD24FEA, vehicle)
end

function Global.ClearRoomForChar(ped)
	return _in(0x405B16CF, ped)
end

function Global.ClearRoomForObject(obj)
	return _in(0x12ED69A6, obj)
end

function Global.ClearRoomForViewport(viewportid)
	return _in(0x7A583068, viewportid)
end

function Global.ClearScriptArrayFromScratchpad(Unk909)
	return _in(0x6E120246, Unk909)
end

function Global.ClearScriptedConversionCentre()
	return _in(0x2E4662B3)
end

function Global.ClearSequenceTask(taskSequence)
	return _in(0x7ED774FE, taskSequence)
end

function Global.ClearShakePlayerpadWhenControllerDisabled()
	return _in(0x3F1F51E0)
end

function Global.ClearSmallPrints()
	return _in(0x7C515B18)
end

function Global.ClearTextLabel(label)
	return _in(0x412E68D0, _ts(label))
end

function Global.ClearThisBigPrint(gxtentry)
	return _in(0x4A4F2699, _ts(gxtentry))
end

function Global.ClearThisPrint(gxtentry)
	return _in(0x08D85CBB, _ts(gxtentry))
end

function Global.ClearThisPrintBigNow(Unk635)
	return _in(0x1C8B73B6, Unk635)
end

function Global.ClearTimecycleModifier()
	return _in(0x60FB61A7)
end

function Global.ClearWantedLevel(playerIndex)
	return _in(0x205622AC, playerIndex)
end

function Global.CloneCam(cam, camcopy)
	return _in(0x483E5BE8, cam, _ii(camcopy) --[[ may be optional ]])
end

--- CLONE_TIMECYCLE_MODIFIER
-- @param sourceModifierName The source timecycle name.
-- @param clonedModifierName The clone timecycle name, must be unique.
-- @return The cloned timecycle modifier index, or -1 if failed.
function Global.CloneTimecycleModifier(sourceModifierName, clonedModifierName)
	return _in(0x54d636b3, _ts(sourceModifierName), _ts(clonedModifierName), _ri)
end

function Global.CloseAllCarDoors(vehicle)
	return _in(0x56B8674F, vehicle)
end

function Global.CloseDebugFile()
	return _in(0x41286578)
end

function Global.CloseGarage(garageName)
	return _in(0x5C083072, _ts(garageName))
end

function Global.CloseMicPed(id, ped)
	return _in(0x14B06047, id, ped)
end

function Global.CloseSequenceTask(taskSequence)
	return _in(0x016C1B04, taskSequence)
end

function Global.CodeWantsMobilePhoneRemoved()
	return _in(0x63DA2195, _r)
end

function Global.CodeWantsMobilePhoneRemovedForWeaponSwitching()
	return _in(0x736027E6, _r)
end

function Global.CompareString(str0, str1)
	return _in(0x080B4F21, _ts(str0), _ts(str1), _ri)
end

function Global.CompareTwoDates(date0_0, date0_1, date1_0, date1_1)
	return _in(0x116D009A, date0_0, date0_1, date1_0, date1_1, _ri)
end

function Global.ConnectLods(obj0, obj1)
	return _in(0x79EB2BC9, obj0, obj1)
end

function Global.ControlCarDoor(vehicle, door, unknown_maybe_open, angle)
	return _in(0x194F76D4, vehicle, door, unknown_maybe_open, angle)
end

function Global.ConvertIntToPlayerindex(playerId)
	return _in(0x5996315E, playerId, _ri)
end

function Global.ConvertMetresToFeet(metres)
	return _in(0x4D2771CE, metres, _rf)
end

function Global.ConvertMetresToFeetInt(metres)
	return _in(0x01A05ADD, metres, _ri)
end

function Global.ConvertThenAddStringToHtmlScriptObject(htmlobj, strgxtkey)
	return _in(0x72EC0AA6, htmlobj, _ts(strgxtkey))
end

function Global.CopyAnimations(ped, pednext, speed)
	return _in(0x308D1778, ped, pednext, speed)
end

function Global.CopyCharDecisionMaker(type, pDM)
	return _in(0x1BB41B75, type, _ii(pDM) --[[ may be optional ]])
end

function Global.CopyCombatDecisionMaker(type, pDM)
	return _in(0x062E0076, type, _ii(pDM) --[[ may be optional ]])
end

function Global.CopyGroupCharDecisionMaker(type, pDM)
	return _in(0x472E65D6, type, _ii(pDM) --[[ may be optional ]])
end

function Global.CopyGroupCombatDecisionMaker(type, pDM)
	return _in(0x17002E03, type, _ii(pDM) --[[ may be optional ]])
end

function Global.CopySharedCharDecisionMaker(type, pDM)
	return _in(0x189E32C9, type, _ii(pDM) --[[ may be optional ]])
end

function Global.CopySharedCombatDecisionMaker(type, pDM)
	return _in(0x13DE5C59, type, _ii(pDM) --[[ may be optional ]])
end

function Global.Cos(value)
	return _in(0x061D4B5F, value, _rf)
end

function Global.CountPickupsOfType(type)
	return _in(0x2E921B0F, type, _ri)
end

function Global.CountScriptCams()
	return _in(0x4806044A, _ri)
end

function Global.CountScriptCamsByTypeAndOrState(type, Unk536, Unk537)
	return _in(0x009641EE, type, Unk536, Unk537, _ri)
end

--- Creates an audio submix with the specified name, or gets the existing audio submix by that name.
-- @param name The audio submix name.
-- @return A submix ID, or -1 if the submix could not be created.
function Global.CreateAudioSubmix(name)
	return _in(0x658d2bc8, _ts(name), _ri)
end

function Global.CreateCam(camtype_usually14, camera)
	return _in(0x694A0DC1, camtype_usually14, _ii(camera) --[[ may be optional ]])
end

function Global.CreateCar(nameHash, x, y, z, unknownTrue)
	return _in(0x2F1D6843, nameHash, x, y, z, _i, unknownTrue)
end

function Global.CreateCarGenerator(x, y, z, yaw, pitch, roll, model, color1, color2, spec1, spec2, Unk66, alarm, doorlock, handle)
	return _in(0x0F132F7E, x, y, z, yaw, pitch, roll, model, color1, color2, spec1, spec2, Unk66, alarm, doorlock, _ii(handle) --[[ may be optional ]])
end

function Global.CreateCarsOnGeneratorsInArea(x0, y0, z0, x1, y1, z1)
	return _in(0x0D940AF4, x0, y0, z0, x1, y1, z1)
end

function Global.CreateChar(type, model, x, y, z, unknownTrue)
	return _in(0x4A673763, type, model, x, y, z, _i, unknownTrue)
end

function Global.CreateCharAsPassenger(vehicle, charType, model, passengerIndex, pPed)
	return _in(0x442B1C1D, vehicle, charType, model, passengerIndex, _ii(pPed) --[[ may be optional ]])
end

function Global.CreateCharInsideCar(vehicle, charType, model, pPed)
	return _in(0x2702274D, vehicle, charType, model, _ii(pPed) --[[ may be optional ]])
end

function Global.CreateCheckpoint(type, x, y, z, Unk709, Unk710)
	return _in(0x41F27499, type, x, y, z, Unk709, Unk710, _ri)
end

--- Creates a DUI browser. This can be used to draw on a runtime texture using CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.
-- @param url The initial URL to load in the browser.
-- @param width The width of the backing surface.
-- @param height The height of the backing surface.
-- @return A DUI object.
function Global.CreateDui(url, width, height)
	return _in(0x23eaf899, _ts(url), width, height, _rl)
end

function Global.CreateEmergencyServicesCar(model, x, y, z)
	return _in(0x768B3AC7, model, x, y, z, _r)
end

function Global.CreateEmergencyServicesCarReturnDriver(model, x, y, z)
	return _in(0x68251A95, model, x, y, z, _i, _i, _i, _r)
end

function Global.CreateEmergencyServicesCarThenWalk(model, x, y, z)
	return _in(0x4A3D6D97, model, x, y, z, _r)
end

function Global.CreateGroup(unknownFalse, unknownTrue)
	return _in(0x78300C0C, unknownFalse, _i, unknownTrue)
end

function Global.CreateHtmlScriptObject(objname)
	return _in(0x6AA63375, _ts(objname), _ri)
end

function Global.CreateHtmlViewport(htmlviewport)
	return _in(0x2FAE4C6E, _ii(htmlviewport) --[[ may be optional ]])
end

function Global.CreateMenu(gxtentry, Unk859, Unk860, Unk861, Unk862, Unk863, Unk864, Unk865, menuid)
	return _in(0x7DCA398F, _ts(gxtentry), Unk859, Unk860, Unk861, Unk862, Unk863, Unk864, Unk865, _ii(menuid) --[[ may be optional ]])
end

function Global.CreateMissionTrain(unknown1, x, y, z, unknown2, pTrain)
	return _in(0x0DDD70AE, unknown1, x, y, z, unknown2, _ii(pTrain) --[[ may be optional ]])
end

function Global.CreateMobilePhone(Unk799)
	return _in(0x2FEE095B, Unk799)
end

function Global.CreateMoneyPickup(x, y, z, amount, unknownTrue, pPickup)
	return _in(0x019A0068, x, y, z, amount, unknownTrue, _ii(pPickup) --[[ may be optional ]])
end

function Global.CreateNmMessage(Unk40, id)
	return _in(0x22AA010C, Unk40, id)
end

function Global.CreateObject(model, x, y, z, unknownTrue)
	return _in(0x4DE152A0, model, x, y, z, _i, unknownTrue)
end

function Global.CreateObjectNoOffset(model, x, y, z, unknownTrue)
	return _in(0x75C51A26, model, x, y, z, _i, unknownTrue)
end

function Global.CreatePickup(model, pickupType, x, y, z, unknownFalse)
	return _in(0x7E2868D4, model, pickupType, x, y, z, _i, unknownFalse)
end

function Global.CreatePickupRotate(model, pickupType, unknown, x, y, z, rX, rY, rZ, pPickup)
	return _in(0x675E5940, model, pickupType, unknown, x, y, z, rX, rY, rZ, _ii(pPickup) --[[ may be optional ]])
end

function Global.CreatePickupWithAmmo(model, pickupType, unknown, x, y, z, pPickup)
	return _in(0x1F736F00, model, pickupType, unknown, x, y, z, _ii(pPickup) --[[ may be optional ]])
end

function Global.CreatePlayer(playerId, x, y, z, pPlayerIndex)
	return _in(0x335E3951, playerId, x, y, z, _ii(pPlayerIndex) --[[ may be optional ]])
end

function Global.CreateRandomCarForCarPark(x, y, z, radius)
	return _in(0x36DA42AF, x, y, z, radius)
end

function Global.CreateRandomChar(x, y, z, pPed)
	return _in(0x375D6223, x, y, z, _ii(pPed) --[[ may be optional ]])
end

function Global.CreateRandomCharAsDriver(vehicle, pPed)
	return _in(0x31CD5F18, vehicle, _ii(pPed) --[[ may be optional ]])
end

function Global.CreateRandomCharAsPassenger(vehicle, seat, pPed)
	return _in(0x46D01849, vehicle, seat, _ii(pPed) --[[ may be optional ]])
end

function Global.CreateRandomFemaleChar(x, y, z, pPed)
	return _in(0x1A920C02, x, y, z, _ii(pPed) --[[ may be optional ]])
end

function Global.CreateRandomMaleChar(x, y, z, pPed)
	return _in(0x2FC728BB, x, y, z, _ii(pPed) --[[ may be optional ]])
end

function Global.CreateTemporaryRadarBlipsForPickupsInArea(x, y, z, radius, bliptype)
	return _in(0x44EA47BB, x, y, z, radius, bliptype)
end

--- Create a clean timecycle modifier. See [`SET_TIMECYCLE_MODIFIER_VAR`](#\_0x6E0A422B) to add variables.
-- @param modifierName The new timecycle name, must be unique.
-- @return The created timecycle modifier index, or -1 if failed.
function Global.CreateTimecycleModifier(modifierName)
	return _in(0x70fa2afa, _ts(modifierName), _ri)
end

function Global.CreateViewport(viewport)
	return _in(0x13134CCD, _ii(viewport) --[[ may be optional ]])
end

function Global.CreateWidgetGroup(Unk1109)
	return _in(0x558C4259, Unk1109)
end

function Global.DamageCar(car, x, y, z, unkforce0, unkforce1, flag)
	return _in(0x2D2B208A, car, x, y, z, unkforce0, unkforce1, flag)
end

function Global.DamageChar(ped, hitPoints, unknown)
	return _in(0x6045426E, ped, hitPoints, unknown)
end

function Global.DamagePedBodyPart(ped, part, hitPoints)
	return _in(0x0744307B, ped, part, hitPoints)
end

function Global.DeactivateFrontend()
	return _in(0x72B16D0D)
end

function Global.DeactivateNetworkSettingsMenu()
	return _in(0x4AD22B80)
end

function Global.DeactivateScriptPopulationZone()
	return _in(0x66BB737D)
end

function Global.DebugOff()
	return _in(0x67177EEC)
end

function Global.DecrementFloatStat(stat, val)
	return _in(0x0754000C, stat, val)
end

function Global.DecrementIntStat(stat, amount)
	return _in(0x7DD91295, stat, amount)
end

function Global.DefinePedGenerationConstraintArea(x, y, z, radius)
	return _in(0x0991172D, x, y, z, radius)
end

function Global.DeleteAllHtmlScriptObjects()
	return _in(0x31A77970)
end

function Global.DeleteAllTrains()
	return _in(0x552B2224)
end

function Global.DeleteCar(pVehicle)
	return _in(0x7F71342D, _ii(pVehicle) --[[ may be optional ]])
end

function Global.DeleteCarGenerator(handle)
	return _in(0x76E738A3, handle)
end

function Global.DeleteChar(pPed)
	return _in(0x0E3B49BF, _ii(pPed) --[[ may be optional ]])
end

function Global.DeleteCheckpoint(checkpoint)
	return _in(0x1293731D, checkpoint)
end

--- DELETE_FUNCTION_REFERENCE
function Global.DeleteFunctionReference(referenceIdentity)
	return _in(0x1e86f206, _ts(referenceIdentity))
end

function Global.DeleteHtmlScriptObject(htmlobj)
	return _in(0x53456730, htmlobj)
end

function Global.DeleteMenu(menuid)
	return _in(0x252138B3, menuid)
end

function Global.DeleteMissionTrain(pTrain)
	return _in(0x7DA237BC, _ii(pTrain) --[[ may be optional ]])
end

function Global.DeleteMissionTrains()
	return _in(0x7D635E2C)
end

function Global.DeleteObject(pObj)
	return _in(0x62FE6290, _ii(pObj) --[[ may be optional ]])
end

function Global.DeletePlayer()
	return _in(0x627A3586)
end

--- DELETE_RESOURCE_KVP
-- @param key The key to delete
function Global.DeleteResourceKvp(key)
	return _in(0x7389b5df, _ts(key))
end

function Global.DeleteWidget(Unk1110)
	return _in(0x267D5146, Unk1110)
end

function Global.DeleteWidgetGroup(Unk1111)
	return _in(0x17D72833, Unk1111)
end

function Global.DestroyAllCams()
	return _in(0x614A3353)
end

function Global.DestroyAllScriptViewports()
	return _in(0x5E4327D2)
end

function Global.DestroyCam(camera)
	return _in(0x14334EEE, camera)
end

--- Destroys a DUI browser.
-- @param duiObject The DUI browser handle.
function Global.DestroyDui(duiObject)
	return _in(0xa085cb10, duiObject)
end

function Global.DestroyMobilePhone()
	return _in(0x38BE5BF6)
end

function Global.DestroyPedGenerationConstraintArea()
	return _in(0x3CC5682F)
end

function Global.DestroyThread(ScriptHandle)
	return _in(0x47381E59, ScriptHandle)
end

function Global.DestroyViewport(viewportid)
	return _in(0x651E50EC, viewportid)
end

function Global.DetachCamFromViewport(Unk557)
	return _in(0x1DEA65DE, Unk557)
end

function Global.DetachCar(vehicle)
	return _in(0x34CC1F23, vehicle)
end

function Global.DetachObject(obj, unknown)
	return _in(0x05C87C26, obj, unknown)
end

function Global.DetachObjectNoCollide(obj, flag)
	return _in(0x6B2E49CD, obj, flag)
end

function Global.DetachPed(ped, unknown)
	return _in(0x2CD52C5C, ped, unknown)
end

function Global.DidSaveCompleteSuccessfully()
	return _in(0x5AA33E86, _r)
end

function Global.DimBlip(blip, unknownTrue)
	return _in(0x272D15FD, blip, unknownTrue)
end

function Global.DisableCarGenerators(flag0, flag1)
	return _in(0x581E2306, flag0, flag1)
end

function Global.DisableCarGeneratorsWithHeli(disable)
	return _in(0x018C4131, disable)
end

function Global.DisableEndCreditsFade()
	return _in(0x21B45EC1)
end

function Global.DisableFrontendRadio()
	return _in(0x6B2F3E97)
end

function Global.DisableGps(disable)
	return _in(0x32A81853, disable)
end

function Global.DisableHeliChaseCamBonnetNitroFix()
	return _in(0x19A73E70)
end

function Global.DisableHeliChaseCamThisUpdate()
	return _in(0x78D17492)
end

function Global.DisableIntermezzoCams()
	return _in(0x3DA200CB)
end

function Global.DisableLocalPlayerPickups(disable)
	return _in(0x19211E9D, disable)
end

function Global.DisablePauseMenu(disabled)
	return _in(0x07ED1DBF, disabled)
end

function Global.DisablePlayerAutoVehicleExit(ped, disable)
	return _in(0x50E33E8F, ped, disable)
end

function Global.DisablePlayerLockon(playerIndex, disabled)
	return _in(0x711214F3, playerIndex, disabled)
end

function Global.DisablePlayerSprint(playerIndex, disabled)
	return _in(0x3A244927, playerIndex, disabled)
end

function Global.DisablePlayerVehicleEntry(player, disable)
	return _in(0x05D51783, player, disable)
end

function Global.DisablePoliceScanner()
	return _in(0x63AF5057)
end

function Global.DisableStickyBombActiveSound(ped, disable)
	return _in(0x0C2D2CC5, ped, disable)
end

--- Disables the game's world horizon lods rendering (see `farlods.#dd`).
-- Using the island hopper natives might also affect this state.
-- @param state On/Off
function Global.DisableWorldhorizonRendering(state)
	return _in(0xa9c92cdc, state)
end

function Global.DisplayAltimeterThisFrame()
	return _in(0x50C13702)
end

function Global.DisplayAmmo(display)
	return _in(0x2E115B4B, display)
end

function Global.DisplayAreaName(display)
	return _in(0x1E87298A, display)
end

function Global.DisplayCash(display)
	return _in(0x62ED1551, display)
end

function Global.DisplayFrontendMapBlips(display)
	return _in(0x61B830BC, display)
end

function Global.DisplayGrimeThisFrame()
	return _in(0x56B95223)
end

function Global.DisplayHelpTextThisFrame(gxtkey, Unk636)
	return _in(0x071542EB, _ts(gxtkey), Unk636)
end

function Global.DisplayHud(display)
	return _in(0x52632919, display)
end

function Global.DisplayLoadingThisFrameWithScriptSprites()
	return _in(0x38A10933)
end

function Global.DisplayNonMinigameHelpMessages(Unk637)
	return _in(0x73F56AC5, Unk637)
end

function Global.DisplayNthOnscreenCounterWithString(Unk638, Unk639, Unk640, str)
	return _in(0x4D9C4195, Unk638, Unk639, Unk640, _ts(str))
end

function Global.DisplayOnscreenTimerWithString(timerid, Unk641, str)
	return _in(0x384F104F, timerid, Unk641, _ts(str))
end

function Global.DisplayPlayerNames(Unk910)
	return _in(0x0B177D76, Unk910)
end

function Global.DisplayRadar(display)
	return _in(0x17920FA7, display)
end

function Global.DisplaySniperScopeThisFrame()
	return _in(0x5BF23AD5)
end

function Global.DisplayText(x, y, gxtName)
	return _in(0x0F002557, x, y, _ts(gxtName))
end

function Global.DisplayTextSubstring(Unk642, Unk643, Unk644, Unk645, Unk646, Unk647, Unk648)
	return _in(0x0DA61310, Unk642, Unk643, Unk644, Unk645, Unk646, Unk647, Unk648)
end

function Global.DisplayTextWithBlipName(x, y, str, blip)
	return _in(0x7E8D1DCE, x, y, _ts(str), blip)
end

function Global.DisplayTextWithFloat(x, y, gxtName, value, unknown)
	return _in(0x311F4FE9, x, y, _ts(gxtName), value, unknown)
end

function Global.DisplayTextWithLiteralString(x, y, gxtName, literalStr)
	return _in(0x661B239A, x, y, _ts(gxtName), _ts(literalStr))
end

function Global.DisplayTextWithLiteralSubstring(Unk652, Unk653, Unk654, Unk655, Unk656, Unk657)
	return _in(0x1FCB5241, Unk652, Unk653, Unk654, Unk655, Unk656, Unk657)
end

function Global.DisplayTextWithNumber(x, y, gxtName, value)
	return _in(0x5A495ABE, x, y, _ts(gxtName), value)
end

function Global.DisplayTextWithString(x, y, gxtName, gxtStringName)
	return _in(0x10A75905, x, y, _ts(gxtName), _ts(gxtStringName))
end

function Global.DisplayTextWithStringAndInt(x, y, gxtname, gxtnamenext, val)
	return _in(0x369A4540, x, y, _ts(gxtname), _ts(gxtnamenext), val)
end

function Global.DisplayTextWithSubstringGivenHashKey(x, y, gxtkey, gxtkey0)
	return _in(0x7EF6599D, x, y, _ts(gxtkey), gxtkey0)
end

function Global.DisplayTextWithTwoLiteralStrings(x, y, gxtName, literalStr1, literalStr2)
	return _in(0x4B7C3AEC, x, y, _ts(gxtName), _ts(literalStr1), _ts(literalStr2))
end

function Global.DisplayTextWithTwoStrings(x, y, gxtName, gxtStringName1, gxtStringName2)
	return _in(0x66842574, x, y, _ts(gxtName), _ts(gxtStringName1), _ts(gxtStringName2))
end

function Global.DisplayTextWithTwoSubstringsGivenHashKeys(x, y, gxtkey, gxtkey0, gxtkey1)
	return _in(0x39E77F70, x, y, _ts(gxtkey), gxtkey0, gxtkey1)
end

function Global.DisplayTextWith_2Numbers(x, y, gxtName, number1, number2)
	return _in(0x337957AF, x, y, _ts(gxtName), number1, number2)
end

function Global.DisplayTextWith_3Numbers(x, y, gxtentry, Unk649, Unk650, Unk651)
	return _in(0x746C06E8, x, y, _ts(gxtentry), Unk649, Unk650, Unk651)
end

function Global.DoAutoSave()
	return _in(0x09B85174)
end

function Global.DoScreenFadeIn(timeMS)
	return _in(0x04D72200, timeMS)
end

function Global.DoScreenFadeInUnhacked(timeMS)
	return _in(0x5F9218C3, timeMS)
end

function Global.DoScreenFadeOut(timeMS)
	return _in(0x65DE621C, timeMS)
end

function Global.DoScreenFadeOutUnhacked(timeMS)
	return _in(0x42D250A7, timeMS)
end

function Global.DoesBlipExist(blip)
	return _in(0x590A6FF4, blip, _r)
end

function Global.DoesCamExist(camera)
	return _in(0x46953225, camera, _r)
end

function Global.DoesCarHaveHydraulics(car)
	return _in(0x0F0956CA, car, _r)
end

function Global.DoesCarHaveRoof(vehicle)
	return _in(0x7AE52512, vehicle, _r)
end

function Global.DoesCarHaveStuckCarCheck(vehicle)
	return _in(0x2B856FAA, vehicle, _r)
end

function Global.DoesCharExist(ped)
	return _in(0x46531797, ped, _r)
end

function Global.DoesDecisionMakerExist(dm)
	return _in(0x66D53314, dm, _r)
end

function Global.DoesGameCodeWantToLeaveNetworkSession()
	return _in(0x7E412AC8, _r)
end

function Global.DoesGroupExist(group)
	return _in(0x3D385F6D, group, _r)
end

function Global.DoesObjectExist(obj)
	return _in(0x6DAB78CD, obj, _r)
end

function Global.DoesObjectExistWithNetworkId(netid)
	return _in(0x5BBC62CB, netid, _r)
end

function Global.DoesObjectHavePhysics(obj)
	return _in(0x39587D51, obj, _r)
end

function Global.DoesObjectHaveThisModel(obj, model)
	return _in(0x7505765B, obj, model, _r)
end

function Global.DoesObjectOfTypeExistAtCoords(x, y, z, radius, model)
	return _in(0x1F881A88, x, y, z, radius, model, _r)
end

function Global.DoesPedExistWithNetworkId(netid)
	return _in(0x21641887, netid, _r)
end

function Global.DoesPickupExist(pickup)
	return _in(0x7B567F1A, pickup, _r)
end

function Global.DoesPlayerHaveControlOfNetworkId(player, id)
	return _in(0x3D0B5E56, player, id, _r)
end

function Global.DoesScenarioExistInArea(Unk104, Unk105, Unk106, Unk107, Unk108)
	return _in(0x48252E33, Unk104, Unk105, Unk106, Unk107, Unk108, _r)
end

function Global.DoesScriptExist(name)
	return _in(0x1D1B266B, _ts(name), _r)
end

function Global.DoesScriptFireExist(fire)
	return _in(0x637E1D42, fire, _r)
end

function Global.DoesTextLabelExist(gxtentry)
	return _in(0x2A611607, _ts(gxtentry), _r)
end

function Global.DoesThisMinigameScriptAllowNonMinigameHelpMessages()
	return _in(0x73A1443F, _r)
end

--- DOES_TIMECYCLE_MODIFIER_HAS_VAR
-- @param modifierName The name of timecycle modifier.
-- @param varName The name of timecycle variable.
-- @return Whether or not variable by name was found on the specified timecycle modifier.
function Global.DoesTimecycleModifierHasVar(modifierName, varName)
	return _in(0xc53bb6d3, _ts(modifierName), _ts(varName), _r)
end

function Global.DoesVehicleExist(vehicle)
	return _in(0x67A42263, vehicle, _r)
end

function Global.DoesVehicleExistWithNetworkId(nedid)
	return _in(0x69C033D8, nedid, _r)
end

function Global.DoesViewportExist(viewportid)
	return _in(0x0C5A551B, viewportid, _r)
end

function Global.DoesWebPageExist(webaddress)
	return _in(0x1DE062FD, _ts(webaddress), _r)
end

function Global.DoesWidgetGroupExist(Unk1114)
	return _in(0x3AAF5BE5, Unk1114, _r)
end

function Global.DontAbortCarConversations(flag0, flag1)
	return _in(0x0A432423, flag0, flag1)
end

function Global.DontDispatchCopsForPlayer(player, dont)
	return _in(0x63B87EBE, player, dont)
end

function Global.DontDisplayLoadingOnFadeThisFrame()
	return _in(0x2F58286C)
end

function Global.DontRemoveChar(ped)
	return _in(0x3659084A, ped)
end

function Global.DontRemoveObject(obj)
	return _in(0x74FF26F9, obj)
end

function Global.DontSuppressAnyCarModels()
	return _in(0x69F55DCC)
end

function Global.DontSuppressAnyPedModels()
	return _in(0x72EF466E)
end

function Global.DontSuppressCarModel(model)
	return _in(0x0348074B, model)
end

function Global.DontSuppressPedModel(model)
	return _in(0x7CF256D0, model)
end

--- Returns a list of door system entries: a door system hash (see [ADD_DOOR_TO_SYSTEM](#\_0x6F8838D03D1DC226)) and its object handle.
-- The data returned adheres to the following layout:
-- ```
-- [{doorHash1, doorHandle1}, ..., {doorHashN, doorHandleN}]
-- ```
-- @return An object containing a list of door system entries.
function Global.DoorSystemGetActive()
	return _in(0xf65bba4b, _ro)
end

--- DOOR_SYSTEM_GET_SIZE
-- @return The number of doors registered in the system
function Global.DoorSystemGetSize()
	return _in(0x237613b3, _ri)
end

function Global.DrawCheckpoint(x, y, z, radius, r, g, b)
	return _in(0x29FC3E19, x, y, z, radius, r, g, b)
end

function Global.DrawCheckpointWithAlpha(x, y, z, radius, r, g, b, a)
	return _in(0x26810BE3, x, y, z, radius, r, g, b, a)
end

function Global.DrawColouredCylinder(x, y, z, Unk712, Unk713, r, g, b, a)
	return _in(0x309860C4, x, y, z, Unk712, Unk713, r, g, b, a)
end

function Global.DrawCorona(x, y, z, radius, Unk714, Unk715, Unk716, Unk717, Unk718)
	return _in(0x39ED0C43, x, y, z, radius, Unk714, Unk715, Unk716, Unk717, Unk718)
end

function Global.DrawCurvedWindow(Unk719, Unk720, Unk721, Unk722, alpha)
	return _in(0x4B684D0B, Unk719, Unk720, Unk721, Unk722, alpha)
end

function Global.DrawCurvedWindowNotext(Unk723, Unk724, Unk725, Unk726, Unk727)
	return _in(0x12B9197E, Unk723, Unk724, Unk725, Unk726, Unk727)
end

function Global.DrawCurvedWindowText(Unk728, Unk729, Unk730, Unk731, Unk732, str0, str1, Unk733)
	return _in(0x7DD67E15, Unk728, Unk729, Unk730, Unk731, Unk732, _ts(str0), _ts(str1), Unk733)
end

function Global.DrawDebugSphere(x, y, z, radius)
	return _in(0x539572F3, x, y, z, radius)
end

function Global.DrawFrontendHelperText(str0, str1, Unk734)
	return _in(0x44E14770, _ts(str0), _ts(str1), Unk734)
end

function Global.DrawLightWithRange(x, y, z, r, g, b, width, height)
	return _in(0x30D27EB1, x, y, z, r, g, b, width, height)
end

function Global.DrawMovie(Unk735, Unk736, Unk737, Unk738, Unk739, r, g, b, a)
	return _in(0x26274628, Unk735, Unk736, Unk737, Unk738, Unk739, r, g, b, a)
end

function Global.DrawRect(x1, y1, x2, y2, r, g, b, a)
	return _in(0x3B2526E3, x1, y1, x2, y2, r, g, b, a)
end

function Global.DrawSphere(x, y, z, radius)
	return _in(0x769F6E66, x, y, z, radius)
end

function Global.DrawSprite(texture, Unk740, Unk741, Unk742, Unk743, angle, r, g, b, a)
	return _in(0x6ADD40EC, texture, Unk740, Unk741, Unk742, Unk743, angle, r, g, b, a)
end

function Global.DrawSpriteFrontBuff(x0, y0, x1, y1, rotation, r, g, b, a)
	return _in(0x22417905, x0, y0, x1, y1, rotation, r, g, b, a)
end

function Global.DrawSpritePhoto(x0, y0, x1, y1, rotation, r, g, b, a)
	return _in(0x4BD4248E, x0, y0, x1, y1, rotation, r, g, b, a)
end

function Global.DrawSpriteWithFixedRotation(texture, Unk744, Unk745, Unk746, Unk747, angle, r, g, b, a)
	return _in(0x7CB404D4, texture, Unk744, Unk745, Unk746, Unk747, angle, r, g, b, a)
end

function Global.DrawSpriteWithUv(texture, Unk748, Unk749, Unk750, Unk751, angle, r, g, b, a)
	return _in(0x58C41E8F, texture, Unk748, Unk749, Unk750, Unk751, angle, r, g, b, a)
end

function Global.DrawSpriteWithUvCoords(texture, Unk752, Unk753, Unk754, Unk755, Unk756, Unk757, Unk758, Unk759, angle, r, g, b, a)
	return _in(0x2D1D17C9, texture, Unk752, Unk753, Unk754, Unk755, Unk756, Unk757, Unk758, Unk759, angle, r, g, b, a)
end

function Global.DrawToplevelSprite(texture, Unk760, Unk761, Unk762, Unk763, angle, r, g, b, a)
	return _in(0x1849408D, texture, Unk760, Unk761, Unk762, Unk763, angle, r, g, b, a)
end

function Global.DrawWindow(Unk764, Unk765, Unk766, Unk767, str, alpha)
	return _in(0x232642DE, Unk764, Unk765, Unk766, Unk767, _ts(str), alpha)
end

function Global.DrawWindowText(Unk768, Unk769, Unk770, Unk771, str0, Unk772)
	return _in(0x3D0F5735, Unk768, Unk769, Unk770, Unk771, _ts(str0), Unk772)
end

function Global.DropObject(ped, unknownTrue)
	return _in(0x24C45D0D, ped, unknownTrue)
end

--- DUPLICATE_FUNCTION_REFERENCE
function Global.DuplicateFunctionReference(referenceIdentity)
	return _in(0xf4e2079d, _ts(referenceIdentity), _s)
end

function Global.EnableAllPedHelmets(enable)
	return _in(0x6C305137, enable)
end

function Global.EnableCamCollision(cam, enable)
	return _in(0x71AE1BDC, cam, enable)
end

function Global.EnableChaseAudio(enable)
	return _in(0x68664078, enable)
end

function Global.EnableDebugCam(enable)
	return _in(0x296B09E8, enable)
end

function Global.EnableDeferredLighting(enable)
	return _in(0x6CFC30AD, enable)
end

function Global.EnableDisabledAttractorsOnObject(obj, enable)
	return _in(0x17F62193, obj, enable)
end

function Global.EnableEndCreditsFade()
	return _in(0x1EA85697)
end

function Global.EnableFancyWater(enable)
	return _in(0x74FC2325, enable)
end

function Global.EnableFovLodMultiplier(enable)
	return _in(0x556B0755, enable)
end

function Global.EnableFrontendRadio()
	return _in(0x5328068B)
end

function Global.EnableGpsInVehicle(veh, enable)
	return _in(0x144F3CE5, veh, enable)
end

function Global.EnableMaxAmmoCap(enable)
	return _in(0x7E657B56, enable)
end

function Global.EnablePedHelmet(ped, enable)
	return _in(0x0C704586, ped, enable)
end

function Global.EnablePoliceScanner()
	return _in(0x5B262142)
end

function Global.EnableSaveHouse(savehouse, enable)
	return _in(0x208C03C9, savehouse, enable)
end

function Global.EnableSceneStreaming(enable)
	return _in(0x362B7D1B, enable)
end

function Global.EnableScriptControlledMicrophone()
	return _in(0x3EA0648D, _r)
end

function Global.EnableShadows(enable)
	return _in(0x41596B09, enable)
end

function Global.EndCamCommands(Unk558)
	return _in(0x627F3275, _ii(Unk558) --[[ may be optional ]])
end

function Global.EndCharSearchCriteria()
	return _in(0x5ECF404A)
end

--- END_FIND_KVP
-- @param handle The KVP find handle returned from [START_FIND_KVP](#\_0xDD379006)
-- @return None.
function Global.EndFindKvp(handle)
	return _in(0xb3210203, handle)
end

--- END_FIND_OBJECT
function Global.EndFindObject(findHandle)
	return _in(0xdeda4e50, findHandle)
end

--- END_FIND_PED
function Global.EndFindPed(findHandle)
	return _in(0x9615c2ad, findHandle)
end

--- END_FIND_PICKUP
function Global.EndFindPickup(findHandle)
	return _in(0x3c407d53, findHandle)
end

--- END_FIND_VEHICLE
function Global.EndFindVehicle(findHandle)
	return _in(0x9227415a, findHandle)
end

function Global.EndWidgetGroup()
	return _in(0x6F760759)
end

--- Internal function for ensuring an entity has a state bag.
function Global.EnsureEntityStateBag(entity)
	return _in(0x3bb78f05, entity)
end

function Global.EvolvePtfx(ptfx, evolvetype, val)
	return _in(0x3CE05E7C, ptfx, _ts(evolvetype), val)
end

--- EXECUTE_COMMAND
function Global.ExecuteCommand(commandString)
	return _in(0x561c060b, _ts(commandString))
end

function Global.Exp(Unk1084)
	return _in(0x1BA61E20, Unk1084, _rf)
end

--- This native is not implemented.
function Global.ExperimentalLoadCloneCreate(data, objectId, tree)
	return _in(0xd2cb95a3, _ts(data), objectId, _ts(tree), _ri)
end

--- This native is not implemented.
function Global.ExperimentalLoadCloneSync(entity, data)
	return _in(0x6bc189ac, entity, _ts(data))
end

--- This native is not implemented.
function Global.ExperimentalSaveCloneCreate(entity)
	return _in(0x9d65cad2, entity, _s)
end

--- This native is not implemented.
function Global.ExperimentalSaveCloneSync(entity)
	return _in(0x38d19210, entity, _s)
end

function Global.ExplodeCar(vehicle, unknownTrue, unknownFalse)
	return _in(0x505518A2, vehicle, unknownTrue, unknownFalse)
end

function Global.ExplodeCarInCutscene(car, explode)
	return _in(0x01820DAA, car, explode)
end

function Global.ExplodeCarInCutsceneShakeAndBit(car, flag0, flag1, flag2)
	return _in(0x7CF61A81, car, flag0, flag1, flag2)
end

function Global.ExplodeCharHead(ped)
	return _in(0x4A802E89, ped)
end

function Global.ExtendPatrolRoute(Unk484, Unk485, Unk486, Unk487, Unk488)
	return _in(0x0F3402B8, Unk484, Unk485, Unk486, Unk487, Unk488)
end

function Global.ExtinguishCarFire(vehicle)
	return _in(0x63A40F58, vehicle)
end

function Global.ExtinguishCharFire(ped)
	return _in(0x5D786EEE, ped)
end

function Global.ExtinguishFireAtPoint(x, y, z, radius)
	return _in(0x35A97B73, x, y, z, radius)
end

function Global.ExtinguishObjectFire(obj)
	return _in(0x5FBC5FFF, obj)
end

function Global.FailKillFrenzy()
	return _in(0x5EA253A5)
end

function Global.FakeDeatharrest()
	return _in(0x30D17655)
end

--- FIND_FIRST_OBJECT
function Global.FindFirstObject(outEntity)
	return _in(0xfaa6cb5d, _ii(outEntity) --[[ may be optional ]], _ri)
end

--- FIND_FIRST_PED
function Global.FindFirstPed(outEntity)
	return _in(0xfb012961, _ii(outEntity) --[[ may be optional ]], _ri)
end

--- FIND_FIRST_PICKUP
function Global.FindFirstPickup(outEntity)
	return _in(0x3ff9d340, _ii(outEntity) --[[ may be optional ]], _ri)
end

--- FIND_FIRST_VEHICLE
function Global.FindFirstVehicle(outEntity)
	return _in(0x15e55694, _ii(outEntity) --[[ may be optional ]], _ri)
end

--- FIND_KVP
-- @param handle The KVP find handle returned from [START_FIND_KVP](#\_0xDD379006)
-- @return None.
function Global.FindKvp(handle)
	return _in(0xbd7bebc5, handle, _s)
end

function Global.FindMaxNumberOfGroupMembers()
	return _in(0x7E154274, _ri)
end

function Global.FindNearestCollectableBinBags(x, y, z)
	return _in(0x056314A9, x, y, z)
end

function Global.FindNearestEntitiesWithSpecialAttribute(x, y, z)
	return _in(0x035261C6, x, y, z)
end

function Global.FindNetworkKillerOfPlayer(playerIndex)
	return _in(0x766E78A3, playerIndex, _ri)
end

function Global.FindNetworkRestartPoint(Unk911, Unk912, Unk913)
	return _in(0x66F445BB, Unk911, Unk912, Unk913)
end

--- FIND_NEXT_OBJECT
function Global.FindNextObject(findHandle, outEntity)
	return _in(0x4e129dbf, findHandle, _ii(outEntity) --[[ may be optional ]], _r)
end

--- FIND_NEXT_PED
function Global.FindNextPed(findHandle, outEntity)
	return _in(0xab09b548, findHandle, _ii(outEntity) --[[ may be optional ]], _r)
end

--- FIND_NEXT_PICKUP
function Global.FindNextPickup(findHandle, outEntity)
	return _in(0x4107ef0f, findHandle, _ii(outEntity) --[[ may be optional ]], _r)
end

--- FIND_NEXT_VEHICLE
function Global.FindNextVehicle(findHandle, outEntity)
	return _in(0x8839120d, findHandle, _ii(outEntity) --[[ may be optional ]], _r)
end

function Global.FindPositionInRecording(car)
	return _in(0x22087F31, car, _rf)
end

function Global.FindPrimaryPopulationZoneGroup()
	return _in(0x36601178, _i, _i)
end

function Global.FindStaticEmitterIndex(StaticEmitterName)
	return _in(0x64793A54, _ts(StaticEmitterName), _ri)
end

function Global.FindStreetNameAtPosition(pX, pY, pZ)
	return _in(0x49763A4F, pX, pY, pZ, _i, _i)
end

function Global.FindTimePositionInRecording(car)
	return _in(0x08D25912, car, _rf)
end

function Global.FindTrainDirection(train)
	return _in(0x013C1EB7, train, _ri)
end

function Global.FinishStreamingRequestList()
	return _in(0x1788346E)
end

function Global.FinishWidgetCombo(Unk1112, Unk1113)
	return _in(0x2CCA0D6A, Unk1112, Unk1113)
end

function Global.FirePedWeapon(ped, x, y, z)
	return _in(0x25BB7D67, ped, x, y, z)
end

function Global.FireSingleBullet(x, y, z, targetX, targetY, targetZ, unknown)
	return _in(0x30975326, x, y, z, targetX, targetY, targetZ, unknown)
end

function Global.FixAmbienceOrientation(fix)
	return _in(0x788F7A03, fix)
end

function Global.FixCar(vehicle)
	return _in(0x3D562F78, vehicle)
end

function Global.FixCarTyre(vehicle, tyre)
	return _in(0x0FDA7965, vehicle, tyre)
end

function Global.FixScriptMicToCurrentPosisition()
	return _in(0x456C0C43)
end

function Global.FlashBlip(blip, on)
	return _in(0x4DFE09D6, blip, on)
end

function Global.FlashBlipAlt(blip, on)
	return _in(0x611948A3, blip, on)
end

function Global.FlashRadar(flash)
	return _in(0x265F6FF5, flash)
end

function Global.FlashRoute(flash)
	return _in(0x20E74A9C, flash)
end

function Global.FlashWeaponIcon(on)
	return _in(0x796A6B88, on)
end

function Global.Floor(value)
	return _in(0x49261BA6, value, _ri)
end

function Global.FlushAllOutOfDateRadarBlipsFromMissionCleanupList()
	return _in(0x1F1C77E1)
end

function Global.FlushAllPlayerRespawnCoords()
	return _in(0x187B3202)
end

function Global.FlushAllSpawnBlockingAreas()
	return _in(0x65B05F3F)
end

function Global.FlushCoverBlockingAreas()
	return _in(0x5A535133)
end

function Global.FlushPatrolRoute()
	return _in(0x015F4F3E)
end

function Global.FlushScenarioBlockingAreas()
	return _in(0x754D0FC4)
end

function Global.ForceAirDragMultForPlayersCar(player, multiplier)
	return _in(0x554053ED, player, multiplier)
end

function Global.ForceAllVehicleLightsOff(off)
	return _in(0x0CE96445, off)
end

function Global.ForceCarLights(car, lights)
	return _in(0x71B81DE7, car, lights)
end

function Global.ForceCharToDropWeapon(ped)
	return _in(0x214C5455, ped)
end

function Global.ForceFullVoice(ped)
	return _in(0x62285CAD, ped)
end

function Global.ForceGameTelescopeCam(force)
	return _in(0x01C51E90, force)
end

function Global.ForceGenerateParkedCarsTooCloseToOthers(set)
	return _in(0x1B8F031D, set)
end

function Global.ForceHighLod(force)
	return _in(0x1EFB0992, force)
end

function Global.ForceInitialPlayerStation(stationName)
	return _in(0x32D3165D, _ts(stationName))
end

function Global.ForceInteriorLightingForPlayer(player, force)
	return _in(0x45DF1D92, player, force)
end

function Global.ForceLoadingScreen(force)
	return _in(0x4E68316C, force)
end

function Global.ForceNoCamPause(foce)
	return _in(0x2CC70E04, foce)
end

function Global.ForceNoiseOff(off)
	return _in(0x0CC0186A, off)
end

function Global.ForcePedPinnedDown(ped, force, timerMaybe)
	return _in(0x56A70F57, ped, force, timerMaybe)
end

function Global.ForcePedToFleeWhilstDrivingVehicle(ped, vehicle)
	return _in(0x2FED14F5, ped, vehicle)
end

function Global.ForcePedToLoadCover(ped, force)
	return _in(0x61D07789, ped, force)
end

function Global.ForcePopulationInit()
	return _in(0x42180729)
end

function Global.ForceRadioTrack(radiostation, trackname, Unk533, Unk534)
	return _in(0x6A7E47C9, _ts(radiostation), _ts(trackname), Unk533, Unk534)
end

function Global.ForceRandomCarModel(hash)
	return _in(0x521D0D5B, hash)
end

function Global.ForceRandomPedType(type)
	return _in(0x57E37103, type)
end

function Global.ForceSpawnScenarioPedsInArea(x, y, z, radius, Unk41)
	return _in(0x186D42A4, x, y, z, radius, Unk41)
end

function Global.ForceTimeOfDay(hour, minute)
	return _in(0x0B9B5070, hour, minute)
end

function Global.ForceWeather(weather)
	return _in(0x7EFB5077, weather)
end

function Global.ForceWeatherNow(weather)
	return _in(0x63737D31, weather)
end

function Global.ForceWind(wind)
	return _in(0x310E75C9, wind)
end

function Global.ForwardToTimeOfDay(hour, minute)
	return _in(0x456C6096, hour, minute)
end

function Global.FreezeCarPosition(vehicle, frozen)
	return _in(0x295C4C52, vehicle, frozen)
end

function Global.FreezeCarPositionAndDontLoadCollision(vehicle, frozen)
	return _in(0x588A27FB, vehicle, frozen)
end

function Global.FreezeCharPosition(ped, frozen)
	return _in(0x20266A86, ped, frozen)
end

function Global.FreezeCharPositionAndDontLoadCollision(ped, frozen)
	return _in(0x74576E37, ped, frozen)
end

function Global.FreezeObjectPosition(obj, set)
	return _in(0x7CA8382B, obj, set)
end

function Global.FreezeObjectPosition(obj, frozen)
	return _in(0x7CA8382B, obj, frozen)
end

function Global.FreezeObjectPositionAndDontLoadCollision(obj, freeze)
	return _in(0x668F64C7, obj, freeze)
end

function Global.FreezeOnscreenTimer(freeze)
	return _in(0x4B8B6F24, freeze)
end

function Global.FreezePositionOfClosestObjectOfType(x, y, z, radius, model, frozen)
	return _in(0x5A196B79, x, y, z, radius, model, frozen)
end

function Global.FreezeRadioStation(stationName)
	return _in(0x08A015CF, _ts(stationName))
end

function Global.GenerateDirections(x, y, z)
	return _in(0x203A137B, x, y, z, _i, _v)
end

function Global.GenerateRandomFloat(Unk1086)
	return _in(0x380C142A, _fi(Unk1086) --[[ may be optional ]])
end

function Global.GenerateRandomFloatInRange(min, max, pValue)
	return _in(0x74C626EB, min, max, _fi(pValue) --[[ may be optional ]])
end

function Global.GenerateRandomInt(Unk1087)
	return _in(0x335D0F34, _ii(Unk1087) --[[ may be optional ]])
end

function Global.GenerateRandomIntInRange(min, max, pValue)
	return _in(0x168B1717, min, max, _ii(pValue) --[[ may be optional ]])
end

function Global.GetAcceptButton()
	return _in(0x530F4572, _ri)
end

--- Returns all player indices for 'active' physical players known to the client.
-- The data returned adheres to the following layout:
-- ```
-- [127, 42, 13, 37]
-- ```
-- @return An object containing a list of player indices.
function Global.GetActivePlayers()
	return _in(0xcf143fb9, _ro)
end

function Global.GetAmmoInCharWeapon(ped, weapon, pAmmo)
	return _in(0x23E140A9, ped, weapon, _ii(pAmmo) --[[ may be optional ]])
end

function Global.GetAmmoInClip(ped, weapon, pAmmo)
	return _in(0x612C748F, ped, weapon, _ii(pAmmo) --[[ may be optional ]], _r)
end

function Global.GetAngleBetween_2dVectors(x1, y1, x2, y2, pResult)
	return _in(0x5BC4602D, x1, y1, x2, y2, _fi(pResult) --[[ may be optional ]])
end

function Global.GetAnimGroupFromChar(ped)
	return _in(0x55EB748F, ped, _s)
end

function Global.GetAsciiJustPressed(key, Unk830)
	return _in(0x092829D0, key, Unk830, _ri)
end

function Global.GetAsciiPressed(key, Unk820)
	return _in(0x495F399D, key, _ii(Unk820) --[[ may be optional ]], _r)
end

function Global.GetAspectRatio()
	return _in(0x36600272, _rf)
end

function Global.GetAudibleMusicTrackTextId()
	return _in(0x18246AC8, _ri)
end

function Global.GetAudioRoomId()
	return _in(0x03AC3097, _ri)
end

function Global.GetBitsInRange(val, rangebegin, rangeend)
	return _in(0x58AE7C1D, val, rangebegin, rangeend, _ri)
end

function Global.GetBlipAlpha(blip, alpha)
	return _in(0x61497585, blip, _ii(alpha) --[[ may be optional ]])
end

function Global.GetBlipColour(blip, pColour)
	return _in(0x59B425DA, blip, _ii(pColour) --[[ may be optional ]])
end

function Global.GetBlipCoords(blip, pVector)
	return _in(0x4C1E75DB, blip, _v)
end

function Global.GetBlipInfoIdCarIndex(blip)
	return _in(0x566D04C2, blip, _ri)
end

function Global.GetBlipInfoIdDisplay(blip)
	return _in(0x1B731C3F, blip, _ri)
end

function Global.GetBlipInfoIdObjectIndex(blip)
	return _in(0x7B05072C, blip, _ri)
end

function Global.GetBlipInfoIdPedIndex(blip)
	return _in(0x5FD47B45, blip, _ri)
end

function Global.GetBlipInfoIdPickupIndex(blip)
	return _in(0x059E3BEB, blip, _ri)
end

function Global.GetBlipInfoIdRotation(blip)
	return _in(0x6FBA4274, blip, _ri)
end

function Global.GetBlipInfoIdType(blip)
	return _in(0x6A9E5CE5, blip, _ri)
end

function Global.GetBlipSprite(blip)
	return _in(0x30B1316B, blip, _ri)
end

function Global.GetBufferedAscii(key, Unk821)
	return _in(0x21F43531, key, _ii(Unk821) --[[ may be optional ]], _r)
end

function Global.GetCamFarClip(cam, clip)
	return _in(0x752643C9, cam, _fi(clip) --[[ may be optional ]])
end

function Global.GetCamFarDof(cam, fardof)
	return _in(0x1CB27FE1, cam, _fi(fardof) --[[ may be optional ]])
end

function Global.GetCamFov(camera, fov)
	return _in(0x7BF4652D, camera, _fi(fov) --[[ may be optional ]])
end

--- Returns the world matrix of the specified camera. To turn this into a view matrix, calculate the inverse.
function Global.GetCamMatrix(camera)
	return _in(0x8f57a89d, camera, _v, _v, _v, _v)
end

function Global.GetCamMotionBlur(cam, blur)
	return _in(0x64EF411D, cam, _ii(blur) --[[ may be optional ]])
end

function Global.GetCamNearClip(cam, clip)
	return _in(0x2EF477FD, cam, _fi(clip) --[[ may be optional ]])
end

function Global.GetCamNearDof(cam, dof)
	return _in(0x50D15F0D, cam, _fi(dof) --[[ may be optional ]])
end

function Global.GetCamPos(camera)
	return _in(0x60C22E93, camera, _f, _f, _f)
end

function Global.GetCamRot(camera)
	return _in(0x51A06698, camera, _f, _f, _f)
end

function Global.GetCamState(cam)
	return _in(0x22AA0984, cam, _ri)
end

function Global.GetCameraFromNetworkId(ned_id, cam)
	return _in(0x7E656E50, ned_id, _ii(cam) --[[ may be optional ]])
end

function Global.GetCarAnimCurrentTime(car, animname0, animname1, time)
	return _in(0x5B580DCC, car, _ts(animname0), _ts(animname1), _fi(time) --[[ may be optional ]])
end

function Global.GetCarAnimTotalTime(car, animname0, animname1, time)
	return _in(0x295C34B8, car, _ts(animname0), _ts(animname1), _fi(time) --[[ may be optional ]])
end

function Global.GetCarBlockingCar(car0, car1)
	return _in(0x66B43B06, car0, _ii(car1) --[[ may be optional ]])
end

function Global.GetCarCharIsUsing(ped, pVehicle)
	return _in(0x1B067237, ped, _ii(pVehicle) --[[ may be optional ]])
end

function Global.GetCarColours(vehicle)
	return _in(0x6CAC3D62, vehicle, _i, _i)
end

function Global.GetCarCoordinates(vehicle)
	return _in(0x2D432EAB, vehicle, _f, _f, _f)
end

function Global.GetCarDeformationAtPos(vehicle, x, y, z, pDeformation)
	return _in(0x1F913BC7, vehicle, x, y, z, _v)
end

function Global.GetCarDoorLockStatus(vehicle, pValue)
	return _in(0x774426C2, vehicle, _ii(pValue) --[[ may be optional ]])
end

function Global.GetCarForwardVector(car, vec)
	return _in(0x7E4F49B5, car, _v)
end

function Global.GetCarForwardX(vehicle, pValue)
	return _in(0x47A21100, vehicle, _fi(pValue) --[[ may be optional ]])
end

function Global.GetCarForwardY(vehicle, pValue)
	return _in(0x3BDB4496, vehicle, _fi(pValue) --[[ may be optional ]])
end

function Global.GetCarHeading(vehicle, pValue)
	return _in(0x46803CFA, vehicle, _fi(pValue) --[[ may be optional ]])
end

function Global.GetCarHealth(vehicle, pValue)
	return _in(0x4D417CD3, vehicle, _ii(pValue) --[[ may be optional ]])
end

function Global.GetCarLivery(car, livery)
	return _in(0x10237666, car, _ii(livery) --[[ may be optional ]])
end

function Global.GetCarMass(car, mass)
	return _in(0x5D7C4F08, car, _fi(mass) --[[ may be optional ]])
end

function Global.GetCarModel(vehicle, pValue)
	return _in(0x5FF84497, vehicle, _ii(pValue) --[[ may be optional ]])
end

function Global.GetCarModelValue(car, value)
	return _in(0x29D37792, car, _ii(value) --[[ may be optional ]])
end

function Global.GetCarObjectIsAttachedTo(obj)
	return _in(0x2D215414, obj, _ri)
end

function Global.GetCarPitch(vehicle, pValue)
	return _in(0x61EE5C9A, vehicle, _fi(pValue) --[[ may be optional ]])
end

function Global.GetCarRoll(vehicle, pValue)
	return _in(0x09C95A65, vehicle, _fi(pValue) --[[ may be optional ]])
end

function Global.GetCarSirenHealth(car)
	return _in(0x0896249A, car, _ri)
end

function Global.GetCarSpeed(vehicle, pValue)
	return _in(0x16DD2D00, vehicle, _fi(pValue) --[[ may be optional ]])
end

function Global.GetCarSpeedVector(vehicle, unknownFalse)
	return _in(0x112E7FB1, vehicle, _v, unknownFalse)
end

function Global.GetCarUprightValue(vehicle, pValue)
	return _in(0x326E2886, vehicle, _fi(pValue) --[[ may be optional ]])
end

function Global.GetCellphoneRanked()
	return _in(0x6B6019DB, _r)
end

function Global.GetCharAllowedToRunOnBoats(ped)
	return _in(0x4C872A85, ped, _r)
end

function Global.GetCharAnimBlendAmount(ped, AnimName0, AnimName1, amount)
	return _in(0x1DE37A21, ped, _ts(AnimName0), _ts(AnimName1), _fi(amount) --[[ may be optional ]])
end

function Global.GetCharAnimCurrentTime(ped, animGroup, animName, pValue)
	return _in(0x555D3B8C, ped, _ts(animGroup), _ts(animName), _fi(pValue) --[[ may be optional ]])
end

function Global.GetCharAnimIsEvent(ped, AnimName0, AnimName1, flag)
	return _in(0x118174EC, ped, _ts(AnimName0), _ts(AnimName1), flag, _r)
end

function Global.GetCharAnimTotalTime(ped, animGroup, animName, pValue)
	return _in(0x2E51318F, ped, _ts(animGroup), _ts(animName), _fi(pValue) --[[ may be optional ]])
end

function Global.GetCharArmour(ped, pArmour)
	return _in(0x3C756E54, ped, _ii(pArmour) --[[ may be optional ]])
end

function Global.GetCharCoordinates(ped)
	return _in(0x2B5C06E6, ped, _f, _f, _f)
end

function Global.GetCharDrawableVariation(ped, component)
	return _in(0x1A1A6D83, ped, component, _ri)
end

function Global.GetCharExtractedDisplacement(ped, unknown)
	return _in(0x466B5AA0, ped, unknown, _f, _f, _f)
end

function Global.GetCharExtractedVelocity(ped, Unk5)
	return _in(0x7B3F0058, ped, Unk5, _f, _f, _f)
end

function Global.GetCharGravity(ped)
	return _in(0x746E7171, ped, _ri)
end

function Global.GetCharHeading(ped, pValue)
	return _in(0x057A3AC7, ped, _fi(pValue) --[[ may be optional ]])
end

function Global.GetCharHealth(ped, pHealth)
	return _in(0x4B6C2256, ped, _ii(pHealth) --[[ may be optional ]])
end

function Global.GetCharHeightAboveGround(ped, pValue)
	return _in(0x79973C5A, ped, _fi(pValue) --[[ may be optional ]])
end

function Global.GetCharHighestPriorityEvent(ped, event)
	return _in(0x061A75D3, ped, _ii(event) --[[ may be optional ]])
end

function Global.GetCharInCarPassengerSeat(vehicle, seatIndex, pPed)
	return _in(0x5E756B51, vehicle, seatIndex, _ii(pPed) --[[ may be optional ]])
end

function Global.GetCharLastDamageBone(ped, pBone)
	return _in(0x767E5013, ped, _ii(pBone) --[[ may be optional ]], _ri)
end

function Global.GetCharMaxMoveBlendRatio(ped)
	return _in(0x54AE4F4B, ped, _rf)
end

function Global.GetCharMeleeActionFlag0(ped)
	return _in(0x103F14E4, ped, _r)
end

function Global.GetCharMeleeActionFlag1(ped)
	return _in(0x08A308F8, ped, _r)
end

function Global.GetCharMeleeActionFlag2(ped)
	return _in(0x032F729B, ped, _r)
end

function Global.GetCharModel(ped, pModel)
	return _in(0x0A3D60CE, ped, _ii(pModel) --[[ may be optional ]])
end

function Global.GetCharMoney(ped)
	return _in(0x7D675993, ped, _ri)
end

function Global.GetCharMoveAnimSpeedMultiplier(ped, multiplier)
	return _in(0x325B1A34, ped, _fi(multiplier) --[[ may be optional ]])
end

function Global.GetCharMovementAnimsBlocked(ped)
	return _in(0x11292C09, ped, _r)
end

function Global.GetCharPropIndex(ped, unknown, pIndex)
	return _in(0x3AC85DB1, ped, unknown, _ii(pIndex) --[[ may be optional ]])
end

function Global.GetCharReadyToBeExecuted(ped)
	return _in(0x3FFF4DE9, ped, _r)
end

function Global.GetCharReadyToBeStunned(ped)
	return _in(0x5C422066, ped, _r)
end

function Global.GetCharSpeed(ped, pValue)
	return _in(0x3E156AFC, ped, _fi(pValue) --[[ may be optional ]])
end

function Global.GetCharSwimState(ped, state)
	return _in(0x34460DD7, ped, _ii(state) --[[ may be optional ]], _r)
end

function Global.GetCharTextureVariation(ped, component)
	return _in(0x3A7B78C5, ped, component, _ri)
end

function Global.GetCharVelocity(ped)
	return _in(0x3B977FD4, ped, _f, _f, _f)
end

function Global.GetCharWalkAlongsideLeaderWhenAppropriate(ped)
	return _in(0x6D170B31, ped, _r)
end

function Global.GetCharWeaponInSlot(ped, slot)
	return _in(0x74EC7580, ped, slot, _i, _i, _i)
end

function Global.GetCharWillCowerInsteadOfFleeing(ped)
	return _in(0x69A52C96, ped, _r)
end

function Global.GetCharWillTryToLeaveBoatAfterLeader(ped)
	return _in(0x6D5F1592, ped, _r)
end

function Global.GetCharWillTryToLeaveWater(ped)
	return _in(0x7BC85E73, ped, _r)
end

function Global.GetCinematicCam(cam)
	return _in(0x00C87FB8, _ii(cam) --[[ may be optional ]])
end

function Global.GetClosestCar(x, y, z, radius, unknownFalse, unknown70)
	return _in(0x2CB303F8, x, y, z, radius, unknownFalse, unknown70, _ri)
end

function Global.GetClosestCarNode(x, y, z)
	return _in(0x27F87222, x, y, z, _f, _f, _f, _r)
end

function Global.GetClosestCarNodeFavourDirection(Unk802, x, y, z)
	return _in(0x2F2405D1, Unk802, x, y, z, _f, _f, _f, _f, _r)
end

function Global.GetClosestCarNodeWithHeading(x, y, z)
	return _in(0x371467E0, x, y, z, _f, _f, _f, _f, _r)
end

function Global.GetClosestChar(x, y, z, radius, unknown1, unknown2, pPed)
	return _in(0x0F4B0239, x, y, z, radius, unknown1, unknown2, _ii(pPed) --[[ may be optional ]], _r)
end

function Global.GetClosestMajorCarNode(x, y, z)
	return _in(0x406A035E, x, y, z, _f, _f, _f, _r)
end

function Global.GetClosestNetworkRestartNode(Unk1008, Unk1009, Unk1010, Unk1011, Unk1012)
	return _in(0x46CD1D73, Unk1008, Unk1009, Unk1010, Unk1011, Unk1012, _ri)
end

function Global.GetClosestRoad(x, y, z, Unk803, Unk804)
	return _in(0x63C00DE7, x, y, z, Unk803, Unk804, _v, _v, _f, _f, _f, _r)
end

function Global.GetClosestStealableObject(x, y, z, radius, obj)
	return _in(0x27045521, x, y, z, radius, _ii(obj) --[[ may be optional ]])
end

function Global.GetConsoleCommandToken()
	return _in(0x5D607947, _ri)
end

function Global.GetContentsOfTextWidget(Unk1090)
	return _in(0x742E3376, Unk1090, _ri)
end

function Global.GetControlValue(Unk831, controlid)
	return _in(0x06285788, Unk831, controlid, _ri)
end

--- Can be used to get a console variable of type `char*`, for example a string.
-- @param varName The console variable to look up.
-- @param default_ The default value to set if none is found.
-- @return Returns the convar value if it can be found, otherwise it returns the assigned `default`.
function Global.GetConvar(varName, default_)
	return _in(0x6ccd2564, _ts(varName), _ts(default_), _s)
end

--- Can be used to get a console variable casted back to `int` (an integer value).
-- @param varName The console variable to look up.
-- @param default_ The default value to set if none is found (variable not set using [SET_CONVAR](#\_0x341B16D2), or not accessible).
-- @return Returns the convar value if it can be found, otherwise it returns the assigned `default`.
function Global.GetConvarInt(varName, default_)
	return _in(0x935c0ab2, _ts(varName), default_, _ri)
end

function Global.GetCoordinatesForNetworkRestartNode(Unk914, Unk915, Unk916)
	return _in(0x2EAA3C4A, Unk914, Unk915, Unk916)
end

function Global.GetCorrectedColour(r, g, b)
	return _in(0x64D35E1D, r, g, b, _i, _i, _i)
end

function Global.GetCreateRandomCops()
	return _in(0x4F9342F3, _r)
end

function Global.GetCurrentBasicCopModel(pModel)
	return _in(0x1B305900, _ii(pModel) --[[ may be optional ]])
end

function Global.GetCurrentBasicPoliceCarModel(pModel)
	return _in(0x76901A85, _ii(pModel) --[[ may be optional ]])
end

function Global.GetCurrentCharWeapon(ped, pWeapon)
	return _in(0x5AB8289F, ped, _ii(pWeapon) --[[ may be optional ]], _r)
end

function Global.GetCurrentCopModel(pModel)
	return _in(0x018B2055, _ii(pModel) --[[ may be optional ]])
end

function Global.GetCurrentDate()
	return _in(0x2E5B068F, _i, _i)
end

function Global.GetCurrentDayOfWeek()
	return _in(0x39FD432B, _ri)
end

function Global.GetCurrentEpisode()
	return _in(0x7D7619D2, _ri)
end

--- This native returns the currently used game's name.
-- @return The game name as a string, one of the following values: gta4, gta5, rdr3
function Global.GetCurrentGameName()
	return _in(0xaca18ecd, _s)
end

function Global.GetCurrentLanguage()
	return _in(0x1105259C, _ri)
end

function Global.GetCurrentPlaybackNumberForCar(car)
	return _in(0x678813A4, car, _ri)
end

function Global.GetCurrentPoliceCarModel(pModel)
	return _in(0x20A53B7F, _ii(pModel) --[[ may be optional ]])
end

function Global.GetCurrentPopulationZoneType()
	return _in(0x30516A11, _ri)
end

--- Returns the name of the currently executing resource.
-- @return The name of the resource.
function Global.GetCurrentResourceName()
	return _in(0xe5e9ebbb, _s)
end

function Global.GetCurrentScriptedConversationLine()
	return _in(0x0DE30821, _ri)
end

--- Returns the peer address of the remote game server that the user is currently connected to.
-- @return The peer address of the game server (e.g. `127.0.0.1:30120`), or NULL if not available.
function Global.GetCurrentServerEndpoint()
	return _in(0xea11bfba, _s)
end

function Global.GetCurrentStackSize()
	return _in(0x6AC52840, _ri)
end

function Global.GetCurrentStationForTrain(train)
	return _in(0x10FE0FE9, train, _ri)
end

function Global.GetCurrentTaxiCarModel(pModel)
	return _in(0x1D6D767E, _ii(pModel) --[[ may be optional ]])
end

function Global.GetCurrentWeather(pWeather)
	return _in(0x27E421EA, _ii(pWeather) --[[ may be optional ]])
end

function Global.GetCurrentWeatherFull()
	return _in(0x3FFA65EE, _i, _i, _i)
end

function Global.GetCurrentZoneScumminess()
	return _in(0x4B7B5F77, _ri)
end

function Global.GetCutsceneAudioTimeMs()
	return _in(0x2B8A0C6B, _ri)
end

function Global.GetCutscenePedPosition(unkped, pos)
	return _in(0x366B549F, unkped, _v)
end

function Global.GetCutsceneSectionPlaying()
	return _in(0x04C65BEB, _ri)
end

function Global.GetCutsceneTime()
	return _in(0x7DF26C8C, _ri)
end

function Global.GetDamageToPedBodyPart(ped, part)
	return _in(0x062A507A, ped, part, _ri)
end

function Global.GetDeadCarCoordinates(vehicle)
	return _in(0x3BC827E6, vehicle, _f, _f, _f)
end

function Global.GetDeadCharPickupCoords(ped)
	return _in(0x2A7475D8, ped, _f, _f, _f)
end

function Global.GetDebugCam(cam)
	return _in(0x7D15544E, _ii(cam) --[[ may be optional ]])
end

function Global.GetDestroyerOfNetworkId(playerIndex, id)
	return _in(0x11E80442, playerIndex, id, _ri)
end

function Global.GetDisplayNameFromVehicleModel(model)
	return _in(0x404E0056, model, _s)
end

function Global.GetDistanceBetweenCoords_2d(x1, y1, x2, y2, pDist)
	return _in(0x687107CA, x1, y1, x2, y2, _fi(pDist) --[[ may be optional ]])
end

function Global.GetDistanceBetweenCoords_3d(x1, y1, z1, x2, y2, z2, pDist)
	return _in(0x23F772E7, x1, y1, z1, x2, y2, z2, _fi(pDist) --[[ may be optional ]])
end

function Global.GetDoorAngleRatio(vehicle, door, pAngleRatio)
	return _in(0x44EA2669, vehicle, door, _fi(pAngleRatio) --[[ may be optional ]])
end

function Global.GetDoorState(obj)
	return _in(0x64861559, obj, _i, _f)
end

function Global.GetDriverOfCar(vehicle, pPed)
	return _in(0x22457083, vehicle, _ii(pPed) --[[ may be optional ]])
end

--- Returns the NUI window handle for a specified DUI browser object.
-- @param duiObject The DUI browser handle.
-- @return The NUI window handle, for use in e.g. CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.
function Global.GetDuiHandle(duiObject)
	return _in(0x1655d41d, duiObject, _s)
end

function Global.GetEngineHealth(vehicle)
	return _in(0x2B0A05E0, vehicle, _rf)
end

--- Returns the entity handle for the specified state bag name. For use with [ADD_STATE_BAG_CHANGE_HANDLER](?\_0x5BA35AAF).
-- @param bagName An internal state bag ID from the argument to a state bag change handler.
-- @return The entity handle or 0 if the state bag name did not refer to an entity, or the entity does not exist.
function Global.GetEntityFromStateBagName(bagName)
	return _in(0x4bdf1867, _ts(bagName), _ri)
end

function Global.GetEpisodeIndexFromSummons()
	return _in(0x704E638F, _ri)
end

function Global.GetEpisodeName(episodeIndex)
	return _in(0x6004431B, episodeIndex, _s)
end

--- A getter for [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938), but for a specified resource.
-- @param resource The resource to fetch from.
-- @param key The key to fetch
-- @return A float that contains the value stored in the Kvp or nil/null if none.
function Global.GetExternalKvpFloat(resource, key)
	return _in(0x3cc98b25, _ts(resource), _ts(key), _rf)
end

--- A getter for [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8), but for a specified resource.
-- @param resource The resource to fetch from.
-- @param key The key to fetch
-- @return A int that contains the value stored in the Kvp or nil/null if none.
function Global.GetExternalKvpInt(resource, key)
	return _in(0x12b8d689, _ts(resource), _ts(key), _ri)
end

--- A getter for [SET_RESOURCE_KVP](#\_0x21C7A35B), but for a specified resource.
-- @param resource The resource to fetch from.
-- @param key The key to fetch
-- @return A string that contains the value stored in the Kvp or nil/null if none.
function Global.GetExternalKvpString(resource, key)
	return _in(0x9080363a, _ts(resource), _ts(key), _s)
end

function Global.GetExtraCarColours(vehicle)
	return _in(0x25B87BCA, vehicle, _i, _i)
end

function Global.GetFilterMenuOn()
	return _in(0x509D75E8, _r)
end

function Global.GetFilterSaveSetting(filterid)
	return _in(0x25CA45EA, filterid, _ri)
end

function Global.GetFirstBlipInfoId(type)
	return _in(0x3BD729E9, type, _ri)
end

function Global.GetFirstNCharactersOfLiteralString(literalString, chars)
	return _in(0x42D249E3, _ts(literalString), chars, _s)
end

function Global.GetFirstNCharactersOfString(gxtName, chars)
	return _in(0x108B4A25, _ts(gxtName), chars, _s)
end

function Global.GetFloatStat(stat)
	return _in(0x1D801FC0, stat, _rf)
end

function Global.GetFollowVehicleCamSubmode(mode)
	return _in(0x4C7B7A29, _ii(mode) --[[ may be optional ]])
end

function Global.GetFragmentDamageHealthOfClosestObjectOfType(x, y, z, radius, Unk77, flag)
	return _in(0x052803D0, x, y, z, radius, Unk77, flag, _rf)
end

function Global.GetFrameCount()
	return _in(0x0DA146AA, _ri)
end

function Global.GetFrameTime(time)
	return _in(0x206420A6, _fi(time) --[[ may be optional ]])
end

function Global.GetFreeCam(cam)
	return _in(0x538514CC, _ii(cam) --[[ may be optional ]])
end

function Global.GetFrontendDesignValue(frontendid)
	return _in(0x747E681E, frontendid, _f, _f)
end

--- Returns the internal build number of the current game being executed.
-- Possible values:
-- *   FiveM
-- *   1604
-- *   2060
-- *   2189
-- *   2372
-- *   2545
-- *   2612
-- *   2699
-- *   2802
-- *   2944
-- *   3095
-- *   RedM
-- *   1311
-- *   1355
-- *   1436
-- *   1491
-- *   LibertyM
-- *   43
-- *   FXServer
-- *   0
-- @return The build number, or **0** if no build number is known.
function Global.GetGameBuildNumber()
	return _in(0x804b9f7b, _ri)
end

function Global.GetGameCam(camera)
	return _in(0x0B2A2801, _ii(camera) --[[ may be optional ]])
end

function Global.GetGameCamChild(camera)
	return _in(0x588F6BC0, _ii(camera) --[[ may be optional ]])
end

--- Returns the current game being executed.
-- Possible values:
-- | Return value | Meaning                        |
-- | ------------ | ------------------------------ |
-- | `fxserver`   | Server-side code ('Duplicity') |
-- | `fivem`      | FiveM for GTA V                |
-- | `libertym`   | LibertyM for GTA IV            |
-- | `redm`       | RedM for Red Dead Redemption 2 |
-- @return The game the script environment is running in.
function Global.GetGameName()
	return _in(0xe8eaa18b, _s)
end

--- Returns a list of entity handles (script GUID) for all entities in the specified pool - the data returned is an array as
-- follows:
-- ```json
-- [ 770, 1026, 1282, 1538, 1794, 2050, 2306, 2562, 2818, 3074, 3330, 3586, 3842, 4098, 4354, 4610, ...]
-- ```
-- ### Supported pools
-- *   `CPed`: Peds (including animals) and players.
-- *   `CObject`: Objects (props), doors, and projectiles.
-- *   `CVehicle`: Vehicles.
-- *   `CPickup`: Pickups.
-- @param poolName The pool name to get a list of entities from.
-- @return An array containing entity handles for each entity in the named pool.
function Global.GetGamePool(poolName)
	return _in(0x2b9d4f50, _ts(poolName), _ro)
end

function Global.GetGameTimer(pTimer)
	return _in(0x022B2DA9, _ii(pTimer) --[[ may be optional ]])
end

function Global.GetGameViewportId(viewportid)
	return _in(0x57F7558B, _ii(viewportid) --[[ may be optional ]])
end

function Global.GetGamerNetworkScore(playerIndex, Unk888, Unk889)
	return _in(0x6C507EAC, playerIndex, Unk888, Unk889, _ri)
end

function Global.GetGfwlHasSafeHouse()
	return _in(0x6CC85D46, _r)
end

function Global.GetGfwlIsReturningToSinglePlayer()
	return _in(0x2FDF565D, _r)
end

function Global.GetGroundZFor_3dCoord(x, y, z, pGroundZ)
	return _in(0x6D902EE3, x, y, z, _fi(pGroundZ) --[[ may be optional ]], _ri)
end

function Global.GetGroupCharDucksWhenAimedAt(ped)
	return _in(0x070B1C45, ped, _r)
end

function Global.GetGroupFormation(group, formation)
	return _in(0x596174E5, group, _ii(formation) --[[ may be optional ]])
end

function Global.GetGroupFormationSpacing(group, spacing)
	return _in(0x67DB4150, group, _fi(spacing) --[[ may be optional ]])
end

function Global.GetGroupLeader(group, pPed)
	return _in(0x5DBB46B5, group, _ii(pPed) --[[ may be optional ]])
end

function Global.GetGroupMember(group, index, pPed)
	return _in(0x2FF90FF5, group, index, _ii(pPed) --[[ may be optional ]])
end

function Global.GetGroupSize(group)
	return _in(0x45EE4E9A, group, _i, _i)
end

function Global.GetHashKey(value)
	return _in(0x68FF7165, _ts(value), _ri)
end

function Global.GetHeadingFromVector_2d(x, y, pHeading)
	return _in(0x09DD61E1, x, y, _fi(pHeading) --[[ may be optional ]])
end

function Global.GetHeightOfVehicle(vehicle, x, y, z, unknownTrue1, unknownTrue2)
	return _in(0x5FAD09CA, vehicle, x, y, z, unknownTrue1, unknownTrue2, _rf)
end

function Global.GetHelpMessageBoxSize()
	return _in(0x267D251F, _f, _f)
end

function Global.GetHostId()
	return _in(0x79C84DBC, _ri)
end

function Global.GetHostMatchOn()
	return _in(0x757A0EB8, _r)
end

function Global.GetHoursOfDay()
	return _in(0x0A9F7BA1, _ri)
end

function Global.GetHudColour(type)
	return _in(0x07533EC9, type, _i, _i, _i, _i)
end

function Global.GetIdOfThisThread()
	return _in(0x051A131D, _ri)
end

--- GET_INSTANCE_ID
function Global.GetInstanceId()
	return _in(0x9f1c4383, _ri)
end

function Global.GetIntStat(stat)
	return _in(0x48994D58, stat, _ri)
end

function Global.GetInteriorAtCoords(x, y, z, pInterior)
	return _in(0x29216610, x, y, z, _ii(pInterior) --[[ may be optional ]])
end

function Global.GetInteriorFromCar(vehicle, pInterior)
	return _in(0x25714BE4, vehicle, _ii(pInterior) --[[ may be optional ]])
end

function Global.GetInteriorFromChar(ped, pInterior)
	return _in(0x028227F7, ped, _ii(pInterior) --[[ may be optional ]])
end

function Global.GetInteriorHeading(interior, pHeading)
	return _in(0x73245AB3, interior, _fi(pHeading) --[[ may be optional ]])
end

--- GET_INVOKING_RESOURCE
function Global.GetInvokingResource()
	return _in(0x4d52fe5b, _s)
end

function Global.GetIsAutosaveOff()
	return _in(0x551C6295, _r)
end

function Global.GetIsDepositAnimRunning()
	return _in(0x3CCB4248, _r)
end

function Global.GetIsDisplayingsavemessage()
	return _in(0x34F9164D, _r)
end

function Global.GetIsHidef()
	return _in(0x19976813, _r)
end

function Global.GetIsProjectileTypeInArea(x0, y0, z0, x1, y1, z1, type)
	return _in(0x7B2E70F3, x0, y0, z0, x1, y1, z1, type, _r)
end

function Global.GetIsStickyBombStuckToObject(obj)
	return _in(0x04D623FF, obj, _r)
end

function Global.GetIsStickyBombStuckToVehicle(veh)
	return _in(0x29BF0233, veh, _r)
end

function Global.GetIsWidescreen()
	return _in(0x0F0269B5, _r)
end

function Global.GetKeyForCarInRoom(vehicle, pKey)
	return _in(0x0E390571, vehicle, _ii(pKey) --[[ may be optional ]])
end

function Global.GetKeyForCharInRoom(ped, pKey)
	return _in(0x266D0801, ped, _ii(pKey) --[[ may be optional ]])
end

function Global.GetKeyForViewportInRoom(viewportid, roomkey)
	return _in(0x10776AAE, viewportid, _ii(roomkey) --[[ may be optional ]])
end

function Global.GetKeyboardMoveInput()
	return _in(0x4AF73456, _i, _i)
end

function Global.GetLatestConsoleCommand()
	return _in(0x670E3DE3, _ri)
end

function Global.GetLeftPlayerCashToReachLevel(playerRank)
	return _in(0x6DD754DD, playerRank, _ri)
end

function Global.GetLengthOfLiteralString(literalString)
	return _in(0x02BE2D97, _ts(literalString), _ri)
end

function Global.GetLengthOfStringWithThisHashKey(gxtkey)
	return _in(0x6C013A17, gxtkey, _ri)
end

function Global.GetLengthOfStringWithThisTextLabel(gxtName)
	return _in(0x6D795EC0, _ts(gxtName), _ri)
end

function Global.GetLengthOfStringWithThisTextLabelInsNum(Unk608, Unk609, Unk610)
	return _in(0x5F02084D, Unk608, Unk609, Unk610, _ri)
end

function Global.GetLevelDesignCoordsForObject(obj, Unk78)
	return _in(0x3E762D9D, obj, Unk78, _f, _f, _f, _rf)
end

function Global.GetLineHeight()
	return _in(0x150B0C33, _rf)
end

function Global.GetLocalGamerlevelFromProfilesettings()
	return _in(0x7C5F327E, _ri)
end

function Global.GetLocalPlayerMpCash()
	return _in(0x76B068CA, _ri)
end

function Global.GetLocalPlayerWeaponStat(wtype, wid)
	return _in(0x3CCC5AFD, wtype, wid, _rf)
end

function Global.GetMapAreaFromCoords(x, y, z)
	return _in(0x5ED33D46, x, y, z, _ri)
end

function Global.GetMaxAmmo(ped, weapon, pMaxAmmo)
	return _in(0x7C6968F8, ped, weapon, _ii(pMaxAmmo) --[[ may be optional ]], _r)
end

function Global.GetMaxAmmoInClip(ped, weapon, pMaxAmmo)
	return _in(0x01794A3C, ped, weapon, _ii(pMaxAmmo) --[[ may be optional ]])
end

function Global.GetMaxWantedLevel(pMaxWantedLevel)
	return _in(0x71755E9B, _ii(pMaxWantedLevel) --[[ may be optional ]])
end

function Global.GetMaximumNumberOfPassengers(vehicle, pMax)
	return _in(0x554014F1, vehicle, _ii(pMax) --[[ may be optional ]])
end

function Global.GetMenuItemAccepted(menuid)
	return _in(0x0F322A6C, menuid, _ri)
end

function Global.GetMenuItemSelected(menuid)
	return _in(0x22442A7F, menuid, _ri)
end

function Global.GetMenuPosition(menuid)
	return _in(0x5B576767, menuid, _f, _f)
end

function Global.GetMinutesOfDay()
	return _in(0x3DFE691D, _ri)
end

function Global.GetMinutesToTimeOfDay(hour, minute)
	return _in(0x740C4C84, hour, minute, _ri)
end

function Global.GetMissionFlag()
	return _in(0x2BC64736, _r)
end

function Global.GetMobilePhoneRenderId(pRenderId)
	return _in(0x5E7B3816, _ii(pRenderId) --[[ may be optional ]])
end

function Global.GetMobilePhoneScale()
	return _in(0x1E951606, _rf)
end

function Global.GetMobilePhoneTaskSubTask(ped, Unk798)
	return _in(0x517B226E, ped, _ii(Unk798) --[[ may be optional ]], _r)
end

function Global.GetModelDimensions(model)
	return _in(0x191B7021, model, _v, _v)
end

function Global.GetModelNameForDebug(model)
	return _in(0x4342350C, model, _s)
end

function Global.GetModelPedIsHolding(ped)
	return _in(0x0AF378D5, ped, _ri)
end

function Global.GetMouseInput()
	return _in(0x447B154B, _i, _i)
end

function Global.GetMousePosition()
	return _in(0x0ECB2DEE, _i, _i)
end

function Global.GetMouseSensitivity()
	return _in(0x41401D46, _rf)
end

function Global.GetMouseWheel(Unk834)
	return _in(0x51870C68, _ii(Unk834) --[[ may be optional ]])
end

function Global.GetNameOfInfoZone(x, y, z)
	return _in(0x5CAD7949, x, y, z, _s)
end

function Global.GetNameOfZone(x, y, z)
	return _in(0x25442DF7, x, y, z, _s)
end

function Global.GetNavmeshRouteResult(navmesh)
	return _in(0x4EFE6B67, navmesh, _ri)
end

function Global.GetNearestCableCar(x, y, z, radius, pVehicle)
	return _in(0x7F3A0E22, x, y, z, radius, _ii(pVehicle) --[[ may be optional ]])
end

function Global.GetNetworkIdFromObject(obj, netid)
	return _in(0x50424095, obj, _ii(netid) --[[ may be optional ]])
end

function Global.GetNetworkIdFromPed(ped, netid)
	return _in(0x7BEE5003, ped, _ii(netid) --[[ may be optional ]])
end

function Global.GetNetworkIdFromVehicle(vehicle, netid)
	return _in(0x1BC70617, vehicle, _ii(netid) --[[ may be optional ]])
end

function Global.GetNetworkJoinFail()
	return _in(0x4A164056, _r)
end

function Global.GetNetworkTimer(Unk917)
	return _in(0x20FD4F4E, Unk917)
end

--- GET_NETWORK_WALK_MODE
function Global.GetNetworkWalkMode()
	return _in(0x2cafd5e9, _r)
end

function Global.GetNextBlipInfoId(type)
	return _in(0x154932F0, type, _ri)
end

function Global.GetNextClosestCarNode(x, y, z)
	return _in(0x5935382A, x, y, z, _f, _f, _f, _r)
end

function Global.GetNextClosestCarNodeFavourDirection(x, y, z)
	return _in(0x6E3906E4, x, y, z, _f, _f, _f, _f, _r)
end

function Global.GetNextClosestCarNodeWithHeading(x, y, z)
	return _in(0x3D7A673F, x, y, z, _f, _f, _f, _f, _r)
end

function Global.GetNextClosestCarNodeWithHeadingOnIsland(x, y, z)
	return _in(0x320E1E3B, x, y, z, _f, _f, _f, _f, _r)
end

function Global.GetNextStationForTrain(train)
	return _in(0x4835637D, train, _ri)
end

function Global.GetNoLawVehiclesDestroyedByLocalPlayer()
	return _in(0x63C50673, _ri)
end

function Global.GetNoOfPlayersInTeam(team)
	return _in(0x1CFD32E5, team, _ri)
end

function Global.GetNthClosestCarNode(x, y, z, n)
	return _in(0x740912C2, x, y, z, n, _f, _f, _f, _r)
end

function Global.GetNthClosestCarNodeFavourDirection(Unk810, x, y, z, n)
	return _in(0x6F766824, Unk810, x, y, z, n, _f, _f, _f, _f, _r)
end

function Global.GetNthClosestCarNodeWithHeading(x, y, z, nodeNum)
	return _in(0x1F6B3FF0, x, y, z, nodeNum, _f, _f, _f, _f, _r)
end

function Global.GetNthClosestCarNodeWithHeadingOnIsland(x, y, z, nodeNum, areaId)
	return _in(0x59DB1AD1, x, y, z, nodeNum, areaId, _f, _f, _f, _f, _i, _r)
end

function Global.GetNthClosestWaterNodeWithHeading(x, y, z, flag0, flag1)
	return _in(0x36F453FF, x, y, z, flag0, flag1, _v, _f, _r)
end

function Global.GetNthGroupMember(group, n, ped)
	return _in(0x48CE0609, group, n, _ii(ped) --[[ may be optional ]])
end

function Global.GetNthIntegerInString(gxtName, index)
	return _in(0x301545FD, _ts(gxtName), index, _s)
end

--- GET_NUI_CURSOR_POSITION
function Global.GetNuiCursorPosition()
	return _in(0xbdba226f, _i, _i)
end

function Global.GetNumCarColours(vehicle, pNumColours)
	return _in(0x5AA025C2, vehicle, _ii(pNumColours) --[[ may be optional ]])
end

function Global.GetNumCarLiveries(car, num)
	return _in(0x0A632BB4, car, _ii(num) --[[ may be optional ]])
end

function Global.GetNumOfModelsKilledByPlayer(player, model, num)
	return _in(0x75B43A72, player, model, _ii(num) --[[ may be optional ]])
end

--- Gets the amount of metadata values with the specified key existing in the specified resource's manifest.
-- See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
-- @param resourceName The resource name.
-- @param metadataKey The key to look up in the resource manifest.
function Global.GetNumResourceMetadata(resourceName, metadataKey)
	return _in(0x776e864, _ts(resourceName), _ts(metadataKey), _ri)
end

--- GET_NUM_RESOURCES
function Global.GetNumResources()
	return _in(0x863f27b, _ri)
end

function Global.GetNumStreamingRequests()
	return _in(0x53216168, _ri)
end

function Global.GetNumberLines(Unk703, Unk704, str)
	return _in(0x67B725B2, Unk703, Unk704, _ts(str), _ri)
end

function Global.GetNumberLinesWithLiteralStrings(Unk705, Unk706, str1, str2, str3)
	return _in(0x71DE26A3, Unk705, Unk706, _ts(str1), _ts(str2), _ts(str3), _ri)
end

function Global.GetNumberLinesWithSubstrings(Unk707, Unk708, str1, str2, str3)
	return _in(0x00541084, Unk707, Unk708, _ts(str1), _ts(str2), _ts(str3), _ri)
end

function Global.GetNumberOfActiveStickyBombsOwnedByPed(ped)
	return _in(0x21B85DA9, ped, _ri)
end

function Global.GetNumberOfCharDrawableVariations(ped, component)
	return _in(0x3C293296, ped, component, _ri)
end

function Global.GetNumberOfCharTextureVariations(ped, component, unknown1)
	return _in(0x06C4113E, ped, component, unknown1, _ri)
end

function Global.GetNumberOfFiresInArea(x0, y0, z0, x1, y1, z1)
	return _in(0x1E144C8B, x0, y0, z0, x1, y1, z1, _ri)
end

function Global.GetNumberOfFiresInRange(x, y, z, radius)
	return _in(0x283821D2, x, y, z, radius, _ri)
end

function Global.GetNumberOfFollowers(ped, followers)
	return _in(0x303C3059, ped, _ii(followers) --[[ may be optional ]])
end

function Global.GetNumberOfInjuredPedsInRange(x, y, z, radius)
	return _in(0x3BB313CB, x, y, z, radius, _ri)
end

function Global.GetNumberOfInstancesOfStreamedScript(scriptName)
	return _in(0x5A1C52C7, _ts(scriptName), _ri)
end

function Global.GetNumberOfPassengers(vehicle, pNumPassengers)
	return _in(0x5BE30681, vehicle, _ii(pNumPassengers) --[[ may be optional ]])
end

function Global.GetNumberOfPlayers()
	return _in(0x62405882, _ri)
end

function Global.GetNumberOfStickyBombsStuckToObject(obj)
	return _in(0x4AD026EE, obj, _ri)
end

function Global.GetNumberOfStickyBombsStuckToVehicle(veh)
	return _in(0x285D1184, veh, _ri)
end

function Global.GetNumberOfWebPageLinks(htmlviewport)
	return _in(0x18A22AE4, htmlviewport, _ri)
end

function Global.GetObjectAnimCurrentTime(obj, animname0, animname1, time)
	return _in(0x29F02CB1, obj, _ts(animname0), _ts(animname1), _fi(time) --[[ may be optional ]])
end

function Global.GetObjectAnimTotalTime(obj, animname0, animname1, time)
	return _in(0x26E66DF3, obj, _ts(animname0), _ts(animname1), _fi(time) --[[ may be optional ]])
end

function Global.GetObjectCoordinates(obj)
	return _in(0x49DA4F9E, obj, _f, _f, _f)
end

function Global.GetObjectFragmentDamageHealth(obj, unknown)
	return _in(0x79CA30B1, obj, unknown, _rf)
end

function Global.GetObjectFromNetworkId(netid, obj)
	return _in(0x7AA91131, netid, _ii(obj) --[[ may be optional ]])
end

function Global.GetObjectHeading(obj, pHeading)
	return _in(0x791D1778, obj, _fi(pHeading) --[[ may be optional ]])
end

function Global.GetObjectHealth(obj, pHealth)
	return _in(0x4ACB039B, obj, _fi(pHealth) --[[ may be optional ]])
end

function Global.GetObjectMass(obj, mass)
	return _in(0x0B8B3941, obj, _fi(mass) --[[ may be optional ]])
end

function Global.GetObjectModel(obj, pModel)
	return _in(0x5CC55619, obj, _ii(pModel) --[[ may be optional ]])
end

function Global.GetObjectPedIsHolding(ped)
	return _in(0x45345838, ped, _ri)
end

function Global.GetObjectQuaternion(obj)
	return _in(0x0F731898, obj, _f, _f, _f, _f)
end

function Global.GetObjectRotationVelocity(obj)
	return _in(0x492A71E2, obj, _f, _f, _f)
end

function Global.GetObjectSpeed(obj, pSpeed)
	return _in(0x1C2F57FB, obj, _fi(pSpeed) --[[ may be optional ]])
end

function Global.GetObjectTurnMass(obj, turnmass)
	return _in(0x3C85109F, obj, _fi(turnmass) --[[ may be optional ]])
end

function Global.GetObjectVelocity(obj)
	return _in(0x06D651A7, obj, _f, _f, _f)
end

function Global.GetOffsetFromCarGivenWorldCoords(vehicle, x, y, z)
	return _in(0x373B213C, vehicle, x, y, z, _f, _f, _f)
end

function Global.GetOffsetFromCarInWorldCoords(vehicle, x, y, z)
	return _in(0x7F8D3DD9, vehicle, x, y, z, _f, _f, _f)
end

function Global.GetOffsetFromCharInWorldCoords(ped, x, y, z)
	return _in(0x737F24F9, ped, x, y, z, _f, _f, _f)
end

function Global.GetOffsetFromInteriorInWorldCoords(interior, x, y, z, pOffset)
	return _in(0x68966670, interior, x, y, z, _fi(pOffset) --[[ may be optional ]])
end

function Global.GetOffsetFromObjectInWorldCoords(obj, x, y, z)
	return _in(0x449F4165, obj, x, y, z, _f, _f, _f)
end

function Global.GetOffsetsForAttachCarToCar(car0, car1)
	return _in(0x2CAD4E39, car0, car1, _v, _v)
end

function Global.GetOnlineLan()
	return _in(0x6B032A0B, _ri)
end

function Global.GetOnlineScore(Unk887)
	return _in(0x6CFD3E5F, Unk887, _rf)
end

function Global.GetPadPitchRoll(padIndex)
	return _in(0x767B7EC9, padIndex, _f, _f, _r)
end

function Global.GetPadState(Unk835, Unk836, Unk837)
	return _in(0x5D4C1D59, Unk835, Unk836, _ii(Unk837) --[[ may be optional ]])
end

function Global.GetPedBonePosition(ped, bone, x, y, z, pPosition)
	return _in(0x43475BB3, ped, bone, x, y, z, _v)
end

function Global.GetPedClimbState(ped)
	return _in(0x391822A7, ped, _ri)
end

function Global.GetPedFromNetworkId(netid, ped)
	return _in(0x69F11716, netid, _ii(ped) --[[ may be optional ]])
end

function Global.GetPedGroupIndex(ped, pIndex)
	return _in(0x58E53B06, ped, _ii(pIndex) --[[ may be optional ]])
end

function Global.GetPedModelFromIndex(index)
	return _in(0x124D4571, index, _ri)
end

function Global.GetPedObjectIsAttachedTo(obj)
	return _in(0x755D6DF8, obj, _ri)
end

function Global.GetPedPathMayDropFromHeight(ped)
	return _in(0x45AA529D, ped, _r)
end

function Global.GetPedPathMayUseClimbovers(ped)
	return _in(0x714C1031, ped, _r)
end

function Global.GetPedPathMayUseLadders(ped)
	return _in(0x503E2D1E, ped, _r)
end

function Global.GetPedPathWillAvoidDynamicObjects(ped)
	return _in(0x74F97CF8, ped, _r)
end

function Global.GetPedSteersAroundObjects(ped)
	return _in(0x75E32257, ped, _r)
end

function Global.GetPedSteersAroundPeds(ped)
	return _in(0x179848E4, ped, _r)
end

function Global.GetPedType(ped, pType)
	return _in(0x18F477E1, ped, _ii(pType) --[[ may be optional ]])
end

function Global.GetPetrolTankHealth(vehicle)
	return _in(0x2C835642, vehicle, _rf)
end

function Global.GetPhysicalScreenResolution()
	return _in(0x3CD830D0, _f, _f)
end

function Global.GetPickupCoordinates(pickup)
	return _in(0x0F636C38, pickup, _f, _f, _f)
end

function Global.GetPlaneUndercarriagePosition(plane, pos)
	return _in(0x353F0568, plane, _fi(pos) --[[ may be optional ]])
end

function Global.GetPlayerChar(playerIndex, pPed)
	return _in(0x511454A9, playerIndex, _ii(pPed) --[[ may be optional ]])
end

function Global.GetPlayerColour(Player)
	return _in(0x25270A4B, Player, _ri)
end

--- Gets a local client's Player ID from its server ID counterpart, assuming the passed `serverId` exists on the client.
-- If no matching client is found, or an invalid value is passed over as the `serverId` native's parameter, the native result will be `-1`.
-- It's worth noting that this native method can only retrieve information about clients that are culled to the connected client.
-- @param serverId The player's server ID.
-- @return A valid Player ID if one is found, `-1` if not.
function Global.GetPlayerFromServerId(serverId)
	return _in(0x344ea166, serverId, _ri)
end

--- On the server this will return the players source, on the client it will return the player handle.
-- @param bagName An internal state bag ID from the argument to a state bag change handler.
-- @return The player handle or 0 if the state bag name did not refer to a player, or the player does not exist.
function Global.GetPlayerFromStateBagName(bagName)
	return _in(0xa56135e0, _ts(bagName), _ri)
end

function Global.GetPlayerGroup(playerIndex, pGroup)
	return _in(0x41AB3C30, playerIndex, _ii(pGroup) --[[ may be optional ]])
end

function Global.GetPlayerHasTracks()
	return _in(0x396844BE, _r)
end

function Global.GetPlayerId()
	return _in(0x62E319C6, _ri)
end

function Global.GetPlayerIdForThisPed(ped)
	return _in(0x733B61C6, ped, _ri)
end

function Global.GetPlayerMaxArmour(playerIndex, pMaxArmour)
	return _in(0x17265607, playerIndex, _ii(pMaxArmour) --[[ may be optional ]])
end

function Global.GetPlayerMaxHealth(player, maxhealth)
	return _in(0x52F27084, player, _ii(maxhealth) --[[ may be optional ]])
end

function Global.GetPlayerName(playerIndex)
	return _in(0x570F5725, playerIndex, _s)
end

function Global.GetPlayerRadioMode()
	return _in(0x32795678, _ri)
end

function Global.GetPlayerRadioStationIndex()
	return _in(0x4E493AAF, _ri)
end

function Global.GetPlayerRadioStationName()
	return _in(0x25136AC2, _s)
end

function Global.GetPlayerRadioStationName()
	return _in(0x25136AC2, _s)
end

function Global.GetPlayerRadioStationNameRoll()
	return _in(0x1A936344, _s)
end

function Global.GetPlayerRankLevelDuringMp(playerIndex)
	return _in(0x7B31633E, playerIndex, _ri)
end

function Global.GetPlayerRgbColour(Player)
	return _in(0x73BD71A9, Player, _i, _i, _i)
end

--- GET_PLAYER_SERVER_ID
function Global.GetPlayerServerId(player)
	return _in(0x4d97bcc7, player, _ri)
end

function Global.GetPlayerTeam(Player)
	return _in(0x4C2879AD, Player, _ri)
end

function Global.GetPlayerToPlaceBombInCar(vehicle)
	return _in(0x17572318, vehicle, _ri)
end

function Global.GetPlayerWantedLevelIncrement(player, increment)
	return _in(0x44BB2306, player, _ii(increment) --[[ may be optional ]])
end

function Global.GetPlayersLastCarNoSave(pVehicle)
	return _in(0x12067E8D, _ii(pVehicle) --[[ may be optional ]])
end

function Global.GetPlayersettingsModelChoice()
	return _in(0x116E5A1F, _ri)
end

function Global.GetPositionOfAnalogueSticks(padIndex)
	return _in(0x4F7F4FAE, padIndex, _i, _i, _i, _i)
end

function Global.GetPositionOfCarRecordingAtTime(CarRec, time, pos)
	return _in(0x03B37165, CarRec, time, _fi(pos) --[[ may be optional ]])
end

function Global.GetProfileSetting(settingid)
	return _in(0x575A3431, settingid, _ri)
end

function Global.GetProgressPercentage()
	return _in(0x78E9500C, _rf)
end

function Global.GetRadarViewportId(viewport)
	return _in(0x4A7C19FE, _ii(viewport) --[[ may be optional ]])
end

function Global.GetRadioName(id)
	return _in(0x7EC9580E, id, _s)
end

function Global.GetRandomCarBackBumperInSphere(x, y, z, radius, Unk812, Unk813, veh)
	return _in(0x2C37408C, x, y, z, radius, Unk812, Unk813, _ii(veh) --[[ may be optional ]])
end

function Global.GetRandomCarFrontBumperInSphereNoSave(x, y, z, radius, flag0, flag1, flag2)
	return _in(0x13C91ACD, x, y, z, radius, flag0, flag1, _i, flag2)
end

function Global.GetRandomCarInSphere(x, y, z, radius, model, Unk814, car)
	return _in(0x528F5EA7, x, y, z, radius, model, Unk814, _ii(car) --[[ may be optional ]])
end

function Global.GetRandomCarInSphereNoSave(x, y, z, radius, model, flag, car)
	return _in(0x0A7E36E5, x, y, z, radius, model, flag, _ii(car) --[[ may be optional ]])
end

function Global.GetRandomCarModelInMemory(MustIncludeSpecialModels)
	return _in(0x195C13BC, MustIncludeSpecialModels, _i, _i)
end

function Global.GetRandomCarNode(x, y, z, radius, flag0, flag1, flag2)
	return _in(0x588E1506, x, y, z, radius, flag0, flag1, flag2, _f, _f, _f, _f, _r)
end

function Global.GetRandomCarNodeIncludeSwitchedOffNodes(x, y, z, radius, flag0, flag1, flag2)
	return _in(0x2D1A5F8C, x, y, z, radius, flag0, flag1, flag2, _f, _f, _f, _f, _r)
end

function Global.GetRandomCarOfTypeInAngledAreaNoSave(Unk815, Unk816, Unk817, Unk818, Unk819, type, car)
	return _in(0x6D4746D8, Unk815, Unk816, Unk817, Unk818, Unk819, type, _ii(car) --[[ may be optional ]])
end

function Global.GetRandomCarOfTypeInAreaNoSave(x0, y0, x1, y1, model, car)
	return _in(0x74AF54F0, x0, y0, x1, y1, model, _ii(car) --[[ may be optional ]])
end

function Global.GetRandomCharInAreaOffsetNoSave(x, y, z, sx, sy, sz, pPed)
	return _in(0x6ED17CF8, x, y, z, sx, sy, sz, _ii(pPed) --[[ may be optional ]])
end

function Global.GetRandomNetworkRestartNode(Unk1013, Unk1014, Unk1015, Unk1016, Unk1017, Unk1018)
	return _in(0x0A2B76C2, Unk1013, Unk1014, Unk1015, Unk1016, Unk1017, Unk1018, _ri)
end

function Global.GetRandomNetworkRestartNodeUsingGroupList(Unk1019, Unk1020, Unk1021, Unk1022, Unk1023, Unk1024)
	return _in(0x03CA3302, Unk1019, Unk1020, Unk1021, Unk1022, Unk1023, Unk1024, _ri)
end

function Global.GetRandomWaterNode(x, y, z, radius, flag0, flag1, flag2, flag3)
	return _in(0x6FBE6CE6, x, y, z, radius, flag0, flag1, flag2, flag3, _f, _f, _f, _f, _r)
end

--- Returns all commands that are registered in the command system.
-- The data returned adheres to the following layout:
-- ```
-- [
-- {
-- "name": "cmdlist"
-- },
-- {
-- "name": "command1"
-- }
-- ]
-- ```
-- @return An object containing registered commands.
function Global.GetRegisteredCommands()
	return _in(0xd4bef069, _ro)
end

--- GET_RESOURCE_BY_FIND_INDEX
-- @param findIndex The index of the resource (starting at 0)
-- @return The resource name as a `string`
function Global.GetResourceByFindIndex(findIndex)
	return _in(0x387246b7, findIndex, _s)
end

--- A getter for [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938).
-- @param key The key to fetch
-- @return The floating-point value stored under the specified key, or 0.0 if not found.
function Global.GetResourceKvpFloat(key)
	return _in(0x35bdceea, _ts(key), _rf)
end

--- A getter for [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8).
-- @param key The key to fetch
-- @return The integer value stored under the specified key, or 0 if not found.
function Global.GetResourceKvpInt(key)
	return _in(0x557b586a, _ts(key), _ri)
end

--- A getter for [SET_RESOURCE_KVP](#\_0x21C7A35B).
-- @param key The key to fetch
-- @return The string value stored under the specified key, or nil/null if not found.
function Global.GetResourceKvpString(key)
	return _in(0x5240da5a, _ts(key), _s)
end

--- Gets the metadata value at a specified key/index from a resource's manifest.
-- See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
-- @param resourceName The resource name.
-- @param metadataKey The key in the resource manifest.
-- @param index The value index, in a range from \[0..GET_NUM_RESOURCE_METDATA-1].
function Global.GetResourceMetadata(resourceName, metadataKey, index)
	return _in(0x964bab1d, _ts(resourceName), _ts(metadataKey), index, _s)
end

--- Returns the current state of the specified resource.
-- @param resourceName The name of the resource.
-- @return The resource state. One of `"missing", "started", "starting", "stopped", "stopping", "uninitialized" or "unknown"`.
function Global.GetResourceState(resourceName)
	return _in(0x4039b485, _ts(resourceName), _s)
end

function Global.GetReturnToFilterMenu()
	return _in(0x2A055AFA, _r)
end

function Global.GetRoomKeyFromObject(obj, pRoomKey)
	return _in(0x561509AD, obj, _ii(pRoomKey) --[[ may be optional ]])
end

function Global.GetRoomKeyFromPickup(pickup, hash)
	return _in(0x28045C47, pickup, _ii(hash) --[[ may be optional ]])
end

function Global.GetRootCam(rootcam)
	return _in(0x75E005F1, _ii(rootcam) --[[ may be optional ]])
end

function Global.GetRouteSize()
	return _in(0x086138DE, _ri)
end

function Global.GetSafePickupCoords(x, y, z)
	return _in(0x1AE44443, x, y, z, _f, _f, _f)
end

function Global.GetSafePositionForChar(x, y, z, unknownTrue)
	return _in(0x5D877285, x, y, z, unknownTrue, _f, _f, _f, _r)
end

function Global.GetScreenFadeAlpha()
	return _in(0x04161E66, _ri)
end

function Global.GetScreenResolution()
	return _in(0x0D8A1BCF, _f, _f)
end

function Global.GetScreenViewportId(viewportid)
	return _in(0x25271044, _ii(viewportid) --[[ may be optional ]])
end

function Global.GetScriptCam(cam)
	return _in(0x5F00596C, _ii(cam) --[[ may be optional ]])
end

function Global.GetScriptDrawCam(cam)
	return _in(0x30F71BC6, _ii(cam) --[[ may be optional ]])
end

function Global.GetScriptFireCoords(fire)
	return _in(0x4F256F49, fire, _f, _f, _f)
end

function Global.GetScriptRendertargetRenderId(pRenderId)
	return _in(0x58296B19, _ii(pRenderId) --[[ may be optional ]])
end

function Global.GetScriptTaskStatus(ped, task, status)
	return _in(0x74C14D31, ped, task, _ii(status) --[[ may be optional ]])
end

function Global.GetSequenceProgress(seq, progress)
	return _in(0x1FBD3ACA, seq, _ii(progress) --[[ may be optional ]])
end

function Global.GetServerId()
	return _in(0x51983F94, _ri)
end

function Global.GetSimpleBlipId()
	return _in(0x047B0898, _ri)
end

function Global.GetSortedNetworkRestartNode(Unk1025, Unk1026, Unk1027, Unk1028, Unk1029, Unk1030, Unk1031, Unk1032, Unk1033)
	return _in(0x5BF71B87, Unk1025, Unk1026, Unk1027, Unk1028, Unk1029, Unk1030, Unk1031, Unk1032, Unk1033, _ri)
end

function Global.GetSortedNetworkRestartNodeUsingGroupList(Unk1034, Unk1035, Unk1036, Unk1037, Unk1038, Unk1039, Unk1040, Unk1041, Unk1042)
	return _in(0x22463E22, Unk1034, Unk1035, Unk1036, Unk1037, Unk1038, Unk1039, Unk1040, Unk1041, Unk1042, _ri)
end

function Global.GetSoundId()
	return _in(0x6342018A, _ri)
end

function Global.GetSoundLevelAtCoords(ped, x, y, z, level)
	return _in(0x433E74C6, ped, x, y, z, _ii(level) --[[ may be optional ]])
end

function Global.GetSpawnCoordinatesForCarNode(Unk918, Unk919, Unk920, Unk921, Unk922, Unk923)
	return _in(0x5B386B6C, Unk918, Unk919, Unk920, Unk921, Unk922, Unk923)
end

function Global.GetSpeechForEmergencyServiceCall()
	return _in(0x1B915945, _s)
end

function Global.GetStartFromFilterMenu()
	return _in(0x45073C46, _ri)
end

function Global.GetStatFrontendDisplayType(stat)
	return _in(0x347C4300, stat, _ri)
end

function Global.GetStatFrontendVisibility(stat)
	return _in(0x38905687, stat, _r)
end

--- Returns the value of a state bag key.
-- @return Value.
function Global.GetStateBagValue(bagName, key)
	return _in(0x637f4c75, _ts(bagName), _ts(key), _ro)
end

function Global.GetStateOfClosestDoorOfType(model, x, y, z)
	return _in(0x14007AC6, model, x, y, z, _i, _f)
end

function Global.GetStaticEmitterPlaytime(StaticEmitterIndex)
	return _in(0x068774A4, StaticEmitterIndex, _ri)
end

function Global.GetStationName(train, station)
	return _in(0x46F87F55, train, station, _s)
end

function Global.GetStreamBeatInfo()
	return _in(0x6A3A2C88, _i, _i, _i)
end

function Global.GetStreamPlaytime()
	return _in(0x4B6211F2, _ri)
end

function Global.GetStringFromHashKey(hash)
	return _in(0x16E14EA4, hash, _s)
end

function Global.GetStringFromString(str, startsymb, endsymb)
	return _in(0x434534BE, _ts(str), startsymb, endsymb, _s)
end

function Global.GetStringFromTextFile(gxtentry)
	return _in(0x332F0E9A, _ts(gxtentry), _s)
end

function Global.GetStringWidth(gxtName)
	return _in(0x64660709, _ts(gxtName), _ri)
end

function Global.GetStringWidthWithNumber(gxtName, number)
	return _in(0x33E0601D, _ts(gxtName), number, _ri)
end

function Global.GetStringWidthWithString(gxtName, literalString)
	return _in(0x48850E66, _ts(gxtName), _ts(literalString), _rf)
end

function Global.GetStringWidthWithTextAndInt(gxtname, gxtnamenext, val)
	return _in(0x05267B97, _ts(gxtname), _ts(gxtnamenext), val, _ri)
end

function Global.GetTaskPlaceCarBombUnsuccessful()
	return _in(0x0A4608E9, _r)
end

function Global.GetTeamRgbColour(team)
	return _in(0x42F561F2, team, _i, _i, _i)
end

function Global.GetTextInputActive()
	return _in(0x32A3647C, _r)
end

function Global.GetTexture(dictionary, textureName)
	return _in(0x0F5D1937, dictionary, _ts(textureName), _ri)
end

function Global.GetTextureFromStreamedTxd(txdName, textureName)
	return _in(0x32C24491, _ts(txdName), _ts(textureName), _ri)
end

function Global.GetTextureResolution(texture)
	return _in(0x01A75F0C, texture, _f, _f)
end

function Global.GetTimeOfDay()
	return _in(0x384B3876, _i, _i)
end

function Global.GetTimeSinceLastArrest()
	return _in(0x475D2BEA, _ri)
end

function Global.GetTimeSinceLastDeath()
	return _in(0x11162A93, _ri)
end

function Global.GetTimeSincePlayerDroveAgainstTraffic(playerIndex)
	return _in(0x3B007E58, playerIndex, _ri)
end

function Global.GetTimeSincePlayerDroveOnPavement(playerIndex)
	return _in(0x19610E35, playerIndex, _ri)
end

function Global.GetTimeSincePlayerHitBuilding(playerIndex)
	return _in(0x126C0B99, playerIndex, _ri)
end

function Global.GetTimeSincePlayerHitCar(playerIndex)
	return _in(0x58C01823, playerIndex, _ri)
end

function Global.GetTimeSincePlayerHitObject(playerIndex)
	return _in(0x43C2796B, playerIndex, _ri)
end

function Global.GetTimeSincePlayerHitPed(playerIndex)
	return _in(0x40602B66, playerIndex, _ri)
end

function Global.GetTimeSincePlayerRanLight(playerIndex)
	return _in(0x65D95395, playerIndex, _ri)
end

function Global.GetTimeTilNextStation(train)
	return _in(0x142E7C40, train, _rf)
end

--- GET_TIMECYCLE_MODIFIER_COUNT
-- @return Returns the amount of timecycle modifiers loaded.
function Global.GetTimecycleModifierCount()
	return _in(0xfe2a1d4d, _ri)
end

--- GET_TIMECYCLE_MODIFIER_INDEX_BY_NAME
-- @param modifierName The timecycle modifier name.
-- @return The timecycle modifier index.
function Global.GetTimecycleModifierIndexByName(modifierName)
	return _in(0x5f4cd0e2, _ts(modifierName), _ri)
end

--- GET_TIMECYCLE_MODIFIER_NAME_BY_INDEX
-- @param modifierIndex The timecycle modifier index.
-- @return The timecycle modifier name.
function Global.GetTimecycleModifierNameByIndex(modifierIndex)
	return _in(0x28cb8608, modifierIndex, _s)
end

--- A getter for [SET_TIMECYCLE_MODIFIER_STRENGTH](#\_0x82E7FFCD5B2326B3).
-- @return Returns current timecycle modifier strength.
function Global.GetTimecycleModifierStrength()
	return _in(0xbe54124a, _rf)
end

--- GET_TIMECYCLE_MODIFIER_VAR
-- @param modifierName The name of timecycle modifier.
-- @param varName The name of timecycle variable.
-- @return Whether or not variable by name was found on the specified timecycle modifier.
function Global.GetTimecycleModifierVar(modifierName, varName)
	return _in(0xa7109e12, _ts(modifierName), _ts(varName), _f, _f, _r)
end

--- GET_TIMECYCLE_MODIFIER_VAR_COUNT
-- @param modifierName The timecycle modifier name.
-- @return The amount of variables used on a specified timecycle modifier.
function Global.GetTimecycleModifierVarCount(modifierName)
	return _in(0x60fb60fe, _ts(modifierName), _ri)
end

--- GET_TIMECYCLE_MODIFIER_VAR_NAME_BY_INDEX
-- @param modifierName The name of timecycle modifier.
-- @param modifierVarIndex The index of a variable on the specified timecycle modifier.
-- @return The name of a variable by index.
function Global.GetTimecycleModifierVarNameByIndex(modifierName, modifierVarIndex)
	return _in(0xe874ab1d, _ts(modifierName), modifierVarIndex, _s)
end

--- Returns the amount of variables available to be applied on timecycle modifiers.
-- @return The amount of available variables for timecycle modifiers.
function Global.GetTimecycleVarCount()
	return _in(0x838b34d8, _ri)
end

--- See [GET_TIMECYCLE_VAR_COUNT](#\_0x838B34D8).
-- @param varIndex The index of variable.
-- @return The default value of a timecycle variable.
function Global.GetTimecycleVarDefaultValueByIndex(varIndex)
	return _in(0x3b90238, varIndex, _rf)
end

--- See [GET_TIMECYCLE_VAR_COUNT](#\_0x838B34D8).
-- @param varIndex The index of variable.
-- @return The name of a timecycle variable.
function Global.GetTimecycleVarNameByIndex(varIndex)
	return _in(0xc6c55aaf, varIndex, _s)
end

function Global.GetTotalDurationOfCarRecording(CarRec)
	return _in(0x5F8C3937, CarRec, _rf)
end

function Global.GetTotalNumberOfStats()
	return _in(0x6D823703, _ri)
end

function Global.GetTrainCaboose(train, caboose)
	return _in(0x3FB72D27, train, _ii(caboose) --[[ may be optional ]])
end

function Global.GetTrainCarriage(train, num, carriage)
	return _in(0x7F861E46, train, num, _ii(carriage) --[[ may be optional ]])
end

function Global.GetTrainPlayerWouldEnter(player, train)
	return _in(0x30481141, player, _ii(train) --[[ may be optional ]])
end

function Global.GetTxd(txdName)
	return _in(0x15D668D0, _ts(txdName), _ri)
end

function Global.GetVehicleComponentInfo(veh, component_id, flag)
	return _in(0x3B5D0F27, veh, component_id, _v, _v, _i, flag, _r)
end

function Global.GetVehicleDirtLevel(vehicle, pIntensity)
	return _in(0x571152F5, vehicle, _fi(pIntensity) --[[ may be optional ]])
end

function Global.GetVehicleEngineRevs(veh)
	return _in(0x2FFA0249, veh, _rf)
end

function Global.GetVehicleFromNetworkId(netid, vehicle)
	return _in(0x794E4A82, netid, _ii(vehicle) --[[ may be optional ]])
end

function Global.GetVehicleGear(veh)
	return _in(0x2D2F452D, veh, _ri)
end

function Global.GetVehicleModelFromIndex(index)
	return _in(0x7E5C70BF, index, _ri)
end

function Global.GetVehiclePlayerWouldEnter(player, veh)
	return _in(0x20430265, player, _ii(veh) --[[ may be optional ]])
end

function Global.GetVehicleQuaternion(veh)
	return _in(0x6C5871D6, veh, _f, _f, _f, _f)
end

--- Returns the type of the passed vehicle.
-- For client scripts, reference the more detailed [GET_VEHICLE_TYPE_RAW](#\_0xDE73BC10) native.
-- ### Vehicle types
-- *   automobile
-- *   bike
-- *   boat
-- *   heli
-- *   plane
-- *   submarine
-- *   trailer
-- *   train
-- @param vehicle The vehicle's entity handle.
-- @return If the entity is a vehicle, the vehicle type. If it is not a vehicle, the return value will be null.
function Global.GetVehicleType(vehicle)
	return _in(0xa273060e, vehicle, _s)
end

function Global.GetVehicleTypeOfModel(model)
	return _in(0x60F720F6, model, _ri)
end

--- Returns the model type of the vehicle as defined by:
-- ```cpp
-- enum VehicleType
-- {
-- VEHICLE_TYPE_NONE = -1,
-- VEHICLE_TYPE_CAR = 0,
-- VEHICLE_TYPE_PLANE = 1,
-- VEHICLE_TYPE_TRAILER = 2,
-- VEHICLE_TYPE_QUADBIKE = 3,
-- VEHICLE_TYPE_DRAFT = 4,
-- VEHICLE_TYPE_SUBMARINECAR = 5,
-- VEHICLE_TYPE_AMPHIBIOUS_AUTOMOBILE = 6,
-- VEHICLE_TYPE_AMPHIBIOUS_QUADBIKE = 7,
-- VEHICLE_TYPE_HELI = 8,
-- VEHICLE_TYPE_BLIMP = 9,
-- VEHICLE_TYPE_AUTOGYRO = 10,
-- VEHICLE_TYPE_BIKE = 11,
-- VEHICLE_TYPE_BICYCLE = 12,
-- VEHICLE_TYPE_BOAT = 13,
-- VEHICLE_TYPE_TRAIN = 14,
-- VEHICLE_TYPE_SUBMARINE = 15,
-- };
-- ```
-- @param vehicle The vehicle's entity handle.
-- @return Returns the vehicles model type
function Global.GetVehicleTypeRaw(vehicle)
	return _in(0xde73bc10, vehicle, _ri)
end

function Global.GetViewportPosAndSize(viewportid)
	return _in(0x4DDC6FB4, viewportid, _f, _f, _f, _f)
end

function Global.GetViewportPositionOfCoord(x, y, z)
	return _in(0x287A49A5, x, y, z, _f, _f, _f, _r)
end

function Global.GetWaterHeight(x, y, z, pheight)
	return _in(0x2BB9620F, x, y, z, _fi(pheight) --[[ may be optional ]], _r)
end

function Global.GetWaterHeightNoWaves(x, y, z, height)
	return _in(0x67C82864, x, y, z, _fi(height) --[[ may be optional ]], _r)
end

function Global.GetWeapontypeModel(weapontype, model)
	return _in(0x4FE23F25, weapontype, _ii(model) --[[ may be optional ]])
end

function Global.GetWeapontypeSlot(weapon, slot)
	return _in(0x5E4F6DE3, weapon, _ii(slot) --[[ may be optional ]])
end

function Global.GetWebPageHeight(htmlviewport)
	return _in(0x09FD24F3, htmlviewport, _rf)
end

function Global.GetWebPageLinkAtPosn(htmlviewport, x, y)
	return _in(0x0C1C5B1B, htmlviewport, x, y, _ri)
end

function Global.GetWebPageLinkHref(htmlviewport, linkid)
	return _in(0x750C1CD7, htmlviewport, linkid, _s)
end

function Global.GetWebPageLinkPosn(htmlviewport, linkid)
	return _in(0x717B5EFB, htmlviewport, linkid, _f, _f)
end

function Global.GetWidthOfLiteralString(str)
	return _in(0x164B7363, _ts(str), _ri)
end

function Global.GetWidthOfSubstringGivenTextLabel(gxtname, Unk611, Unk612, Unk613, Unk614)
	return _in(0x64E51535, _ts(gxtname), Unk611, Unk612, Unk613, Unk614, _ri)
end

--- Converts a screen coordinate into its relative world coordinate.
-- @param screenX A screen horizontal axis coordinate (0.0 - 1.0).
-- @param screenY A screen vertical axis coordinate (0.0 - 1.0).
-- @param worldVector The world coord vector pointer.
-- @param normalVector The screen normal vector pointer.
-- @return A Vector3 representing the world coordinates relative to the specified screen coordinates and a screen plane normal Vector3 (normalised).
function Global.GetWorldCoordFromScreenCoord(screenX, screenY)
	return _in(0xc81d0659, screenX, screenY, _v, _v)
end

function Global.GiveDelayedWeaponToChar(ped, weapon, delaytime, flag)
	return _in(0x709154FC, ped, weapon, delaytime, flag)
end

function Global.GivePedAmbientObject(ped, model)
	return _in(0x44AA71F9, ped, model)
end

function Global.GivePedFakeNetworkName(ped, name, r, g, b, a)
	return _in(0x55E0158B, ped, _ts(name), r, g, b, a)
end

function Global.GivePedHelmet(ped)
	return _in(0x07A0177D, ped)
end

function Global.GivePedHelmetWithOpts(ped, Unk42)
	return _in(0x3B6E1D1E, ped, Unk42)
end

function Global.GivePedPickupObject(ped, obj, flag)
	return _in(0x684D1517, ped, obj, flag)
end

function Global.GivePlayerRagdollControl(player, give)
	return _in(0x5A1D7A2F, player, give)
end

function Global.GiveWeaponToChar(ped, weapon, ammo, unknown0)
	return _in(0x03E90416, ped, weapon, ammo, unknown0)
end

function Global.GrabNearbyObjectWithSpecialAttribute(attribute, obj)
	return _in(0x256472F1, attribute, _ii(obj) --[[ may be optional ]])
end

function Global.HandVehicleControlBackToPlayer(veh)
	return _in(0x6C654678, veh)
end

function Global.HandleAudioAnimEvent(ped, AudioAnimEventName)
	return _in(0x56C15139, ped, _ts(AudioAnimEventName))
end

function Global.HasAchievementBeenPassed(achievement)
	return _in(0x32765F37, achievement, _r)
end

function Global.HasAdditionalTextLoaded(textIndex)
	return _in(0x4832644E, textIndex, _r)
end

function Global.HasCarBeenDamagedByCar(vehicle, otherCar)
	return _in(0x119A668D, vehicle, otherCar, _r)
end

function Global.HasCarBeenDamagedByChar(vehicle, ped)
	return _in(0x61487DBF, vehicle, ped, _r)
end

function Global.HasCarBeenDamagedByWeapon(vehicle, weapon)
	return _in(0x0EE34390, vehicle, weapon, _r)
end

function Global.HasCarBeenDroppedOff(car)
	return _in(0x024C3A6C, car, _r)
end

function Global.HasCarBeenResprayed(vehicle)
	return _in(0x3D0432F2, vehicle, _r)
end

function Global.HasCarRecordingBeenLoaded(CarRec)
	return _in(0x453F587D, CarRec, _r)
end

function Global.HasCarStoppedBecauseOfLight(car)
	return _in(0x40CD2BD4, car, _r)
end

function Global.HasCharAnimFinished(ped, AnimName0, AnimName1)
	return _in(0x53F34027, ped, _ts(AnimName0), _ts(AnimName1), _r)
end

function Global.HasCharBeenArrested(ped)
	return _in(0x210A0879, ped, _r)
end

function Global.HasCharBeenDamagedByCar(ped, vehicle)
	return _in(0x30A65021, ped, vehicle, _r)
end

function Global.HasCharBeenDamagedByChar(ped, otherChar, unknownFalse)
	return _in(0x1DD624A0, ped, otherChar, unknownFalse, _r)
end

function Global.HasCharBeenDamagedByWeapon(ped, weapon)
	return _in(0x6DB26E07, ped, weapon, _r)
end

function Global.HasCharBeenPhotographed(ped)
	return _in(0x1F2928A6, ped, _r)
end

function Global.HasCharGotWeapon(ped, weapon)
	return _in(0x11F759DE, ped, weapon, _r)
end

function Global.HasCharSpottedChar(ped, otherChar)
	return _in(0x1ADD68E8, ped, otherChar, _r)
end

function Global.HasCharSpottedCharInFront(ped, otherChar)
	return _in(0x156D5236, ped, otherChar, _r)
end

function Global.HasClosestObjectOfTypeBeenDamagedByCar(x, y, z, radius, type_or_model, car)
	return _in(0x4D6B3E20, x, y, z, radius, type_or_model, car, _r)
end

function Global.HasClosestObjectOfTypeBeenDamagedByChar(x, y, z, radius, objectModel, ped)
	return _in(0x1FC90C7C, x, y, z, radius, objectModel, ped, _r)
end

function Global.HasCollisionForModelLoaded(model)
	return _in(0x7C3939E7, model, _r)
end

function Global.HasControlOfNetworkId(netid)
	return _in(0x176C2DB5, netid, _r)
end

function Global.HasCutsceneFinished()
	return _in(0x4ECE1AD2, _r)
end

function Global.HasCutsceneLoaded()
	return _in(0x5DE43980, _r)
end

function Global.HasDeatharrestExecuted()
	return _in(0x3B0C6738, _r)
end

function Global.HasFragmentRootOfClosestObjectOfTypeBeenDamaged(x, y, z, radius, Unk70)
	return _in(0x31B64D2B, x, y, z, radius, Unk70, _r)
end

function Global.HasGamerChangedNetworkModelSettings()
	return _in(0x7EBB00D7, _r)
end

function Global.HasModelLoaded(model)
	return _in(0x4E61480A, model, _r)
end

function Global.HasNetworkPlayerLeftGame(playerIndex)
	return _in(0x135154B0, playerIndex, _r)
end

function Global.HasObjectBeenDamaged(obj)
	return _in(0x7E0D6CB8, obj, _r)
end

function Global.HasObjectBeenDamagedByCar(obj, vehicle)
	return _in(0x50801274, obj, vehicle, _r)
end

function Global.HasObjectBeenDamagedByChar(obj, ped)
	return _in(0x0B464BE8, obj, ped, _r)
end

function Global.HasObjectBeenDamagedByWeapon(obj, Unk71)
	return _in(0x547C42B1, obj, Unk71, _r)
end

function Global.HasObjectBeenPhotographed(obj)
	return _in(0x57895F38, obj, _r)
end

function Global.HasObjectBeenUprooted(obj)
	return _in(0x58737620, obj, _r)
end

function Global.HasObjectCollidedWithAnything(obj)
	return _in(0x106811E4, obj, _r)
end

function Global.HasObjectFragmentRootBeenDamaged(obj)
	return _in(0x3162071D, obj, _r)
end

function Global.HasOverridenSitIdleAnimFinished(ped)
	return _in(0x520A745D, ped, _r)
end

function Global.HasPickupBeenCollected(pickup)
	return _in(0x2F2226E5, pickup, _r)
end

function Global.HasPlayerCollectedPickup(playerIndex, pikcup)
	return _in(0x025D2170, playerIndex, pikcup, _r)
end

function Global.HasPlayerDamagedAtLeastOnePed(playerIndex)
	return _in(0x64E06CBB, playerIndex, _r)
end

function Global.HasPlayerDamagedAtLeastOneVehicle(playerIndex)
	return _in(0x674849B5, playerIndex, _r)
end

function Global.HasPoolObjectCollidedWithCushion(obj)
	return _in(0x3E8D7D3F, obj, _r)
end

function Global.HasPoolObjectCollidedWithObject(obj, otherObj)
	return _in(0x24D70069, obj, otherObj, _r)
end

function Global.HasReloadedWithMotionControl(ukn0, ukn)
	return _in(0x08C6502C, ukn0, _i --[[ actually bool ]], _r)
end

function Global.HasResprayHappened()
	return _in(0x465574B0, _r)
end

function Global.HasScriptLoaded(scriptName)
	return _in(0x2A171915, _ts(scriptName), _r)
end

function Global.HasSoundFinished(sound)
	return _in(0x2CA53AA1, sound, _r)
end

function Global.HasStreamedTxdLoaded(txdName)
	return _in(0x5F9C43D4, _ts(txdName), _r)
end

function Global.HasThisAdditionalTextLoaded(textName, textIndex)
	return _in(0x6CF248FD, _ts(textName), textIndex, _r)
end

function Global.HaveAnimsLoaded(animName)
	return _in(0x1D3F681D, _ts(animName), _r)
end

function Global.HaveRequestedPathNodesBeenLoaded(requestId)
	return _in(0x54DD5868, requestId, _r)
end

function Global.HeliAudioShouldSkipStartup(heli, skip)
	return _in(0x4CC001AC, heli, skip)
end

function Global.HideCharWeaponForScriptedCutscene(ped, hide)
	return _in(0x2B7C5CFB, ped, hide)
end

function Global.HideHelpTextThisFrame()
	return _in(0x16AF6DEB)
end

function Global.HideHudAndRadarThisFrame()
	return _in(0x60320FEB)
end

function Global.HighFallScream(ped)
	return _in(0x478976DB, ped)
end

function Global.HighlightMenuItem(menuid, item, highlight)
	return _in(0x1ABE6A4C, menuid, item, highlight)
end

function Global.HintCam(x, y, z, Unk559, Unk560, Unk561, Unk562)
	return _in(0x1B637A1C, x, y, z, Unk559, Unk560, Unk561, Unk562)
end

function Global.HowLongHasNetworkPlayerBeenDeadFor(playerIndex)
	return _in(0x4E6120A9, playerIndex, _ri)
end

function Global.ImproveLowPerformanceMissionPerFrameFlag()
	return _in(0x2B64229C)
end

function Global.IncreasePlayerMaxArmour(player, armour)
	return _in(0x2232704D, player, armour)
end

function Global.IncreasePlayerMaxHealth(player, maxhealth)
	return _in(0x40A703A6, player, maxhealth)
end

function Global.IncrementFloatStat(stat, val)
	return _in(0x548E3AFC, stat, val)
end

function Global.IncrementFloatStatNoMessage(stat, value)
	return _in(0x2C6564F2, stat, value)
end

function Global.IncrementIntStat(stat, value)
	return _in(0x14D242D9, stat, value)
end

function Global.IncrementIntStatNoMessage(stat, value)
	return _in(0x29827605, stat, value)
end

function Global.InitCutscene(name)
	return _in(0x47E50BD3, _ts(name))
end

function Global.InitDebugWidgets()
	return _in(0x73E911E8)
end

function Global.InitFrontendHelperText()
	return _in(0x617B191D)
end

--- INVOKE_FUNCTION_REFERENCE
function Global.InvokeFunctionReference(referenceIdentity, argsSerialized, argsLength, retvalLength)
	return _in(0xe3551879, _ts(referenceIdentity), _ts(argsSerialized), argsLength, _ii(retvalLength) --[[ may be optional ]], _s)
end

--- IS_ACE_ALLOWED
function Global.IsAceAllowed(object)
	return _in(0x7ebb9929, _ts(object), _r)
end

function Global.IsAmbientSpeechDisabled(ped)
	return _in(0x563F4CC2, ped, _r)
end

function Global.IsAmbientSpeechPlaying(ped)
	return _in(0x032F24CB, ped, _r)
end

function Global.IsAnyCharShootingInArea(x0, y0, z0, x1, y1, z1, flag)
	return _in(0x19D16ACE, x0, y0, z0, x1, y1, z1, flag, _r)
end

function Global.IsAnyPickupAtCoords(x, y, z)
	return _in(0x75DC4737, x, y, z, _r)
end

function Global.IsAnySpeechPlaying(ped)
	return _in(0x170F7E75, ped, _r)
end

function Global.IsAreaOccupied(x1, y1, z1, x2, y2, z2, unknownFalse1, unknownTrue, unknownFalse2, unknownFalse3, unknownFalse4)
	return _in(0x5BE1238D, x1, y1, z1, x2, y2, z2, unknownFalse1, unknownTrue, unknownFalse2, unknownFalse3, unknownFalse4, _r)
end

function Global.IsAutoAimingOn()
	return _in(0x366B0444, _r)
end

function Global.IsAutoSaveInProgress()
	return _in(0x601A5770, _r)
end

function Global.IsBigVehicle(vehicle)
	return _in(0x60305168, vehicle, _r)
end

function Global.IsBitSet(val, bitnum)
	return _in(0x5373544E, val, bitnum, _r)
end

function Global.IsBlipShortRange(blip)
	return _in(0x32E84B6A, blip, _r)
end

function Global.IsBulletInArea(x, y, z, radius, unknownTrue)
	return _in(0x58493B8E, x, y, z, radius, unknownTrue, _r)
end

function Global.IsBulletInBox(x1, y1, z1, x2, y2, z2, unknown)
	return _in(0x60964DB8, x1, y1, z1, x2, y2, z2, unknown, _r)
end

function Global.IsButtonJustPressed(padIndex, button)
	return _in(0x016C37CD, padIndex, button, _r)
end

function Global.IsButtonPressed(padIndex, button)
	return _in(0x7FF21081, padIndex, button, _r)
end

function Global.IsCamActive(camera)
	return _in(0x348D7AF5, camera, _r)
end

function Global.IsCamHappy(cam)
	return _in(0x7D95313B, cam, _r)
end

function Global.IsCamInterpolating()
	return _in(0x1AE118F4, _r)
end

function Global.IsCamPropagating(camera)
	return _in(0x7EAC3387, camera, _r)
end

function Global.IsCamSequenceComplete(Unk535)
	return _in(0x55727056, Unk535, _r)
end

function Global.IsCamShaking()
	return _in(0x089C57D7, _r)
end

function Global.IsCarAMissionCar(vehicle)
	return _in(0x7A422E14, vehicle, _r)
end

function Global.IsCarAttached(vehicle)
	return _in(0x6BDC40EB, vehicle, _r)
end

function Global.IsCarDead(vehicle)
	return _in(0x2AAB340A, vehicle, _r)
end

function Global.IsCarDoorDamaged(vehicle, door)
	return _in(0x5AFE791F, vehicle, door, _r)
end

function Global.IsCarDoorFullyOpen(vehicle, door)
	return _in(0x55444602, vehicle, door, _r)
end

function Global.IsCarHealthGreater(car, health)
	return _in(0x63F07A46, car, health, _r)
end

function Global.IsCarInAirProper(vehicle)
	return _in(0x37BF18AC, vehicle, _r)
end

function Global.IsCarInArea_2d(vehicle, x1, y1, x2, y2, unknownFalse)
	return _in(0x7EA03481, vehicle, x1, y1, x2, y2, unknownFalse, _r)
end

function Global.IsCarInArea_3d(vehicle, x1, y1, z1, x2, y2, z2, unknownFalse)
	return _in(0x289D3888, vehicle, x1, y1, z1, x2, y2, z2, unknownFalse, _r)
end

function Global.IsCarInGarageArea(garageName, vehicle)
	return _in(0x005868E2, _ts(garageName), vehicle, _r)
end

function Global.IsCarInWater(vehicle)
	return _in(0x0FF342B2, vehicle, _r)
end

function Global.IsCarLowRider(car)
	return _in(0x6B3D5D45, car, _r)
end

function Global.IsCarModel(vehicle, model)
	return _in(0x03D16145, vehicle, model, _r)
end

function Global.IsCarOnFire(vehicle)
	return _in(0x189A2BB1, vehicle, _r)
end

function Global.IsCarOnScreen(vehicle)
	return _in(0x59E3553F, vehicle, _r)
end

function Global.IsCarPassengerSeatFree(vehicle, seatIndex)
	return _in(0x1BDA0DA5, vehicle, seatIndex, _r)
end

function Global.IsCarPlayingAnim(car, animname0, animname1)
	return _in(0x49F619F1, car, _ts(animname0), _ts(animname1), _r)
end

function Global.IsCarSirenOn(vehicle)
	return _in(0x129A1569, vehicle, _r)
end

function Global.IsCarStopped(vehicle)
	return _in(0x4A000F52, vehicle, _r)
end

function Global.IsCarStoppedAtTrafficLights(vehicle)
	return _in(0x141B23A9, vehicle, _r)
end

function Global.IsCarStreetRacer(car)
	return _in(0x24DF32CC, car, _r)
end

function Global.IsCarStuck(car)
	return _in(0x0CD276B4, car, _r)
end

function Global.IsCarStuckOnRoof(vehicle)
	return _in(0x46892D07, vehicle, _r)
end

function Global.IsCarTouchingCar(vehicle, otherCar)
	return _in(0x7B014306, vehicle, otherCar, _r)
end

function Global.IsCarTyreBurst(vehicle, tyre)
	return _in(0x1DF623F9, vehicle, tyre, _r)
end

function Global.IsCarUpright(vehicle)
	return _in(0x1A212500, vehicle, _r)
end

function Global.IsCarUpsidedown(vehicle)
	return _in(0x2E291239, vehicle, _r)
end

function Global.IsCarWaitingForWorldCollision(vehicle)
	return _in(0x6EA72622, vehicle, _r)
end

function Global.IsCharArmed(ped, slot)
	return _in(0x046A4720, ped, slot, _r)
end

function Global.IsCharDead(ped)
	return _in(0x6A6B4F18, ped, _r)
end

function Global.IsCharDucking(ped)
	return _in(0x495D6021, ped, _r)
end

function Global.IsCharFacingChar(ped, otherChar, angle)
	return _in(0x05AD758A, ped, otherChar, angle, _r)
end

function Global.IsCharFatallyInjured(ped)
	return _in(0x4A7802CB, ped, _r)
end

function Global.IsCharGesturing(ped)
	return _in(0x07025A4A, ped, _r)
end

function Global.IsCharGettingInToACar(ped)
	return _in(0x5C8C2E39, ped, _r)
end

function Global.IsCharGettingUp(ped)
	return _in(0x4A906237, ped, _r)
end

function Global.IsCharHealthGreater(ped, health)
	return _in(0x7B75036E, ped, health, _r)
end

function Global.IsCharInAir(ped)
	return _in(0x23C15141, ped, _r)
end

function Global.IsCharInAngledArea_2d(ped, x1, y1, x2, y2, unknown, unknownFalse)
	return _in(0x7D591EAD, ped, x1, y1, x2, y2, unknown, unknownFalse, _r)
end

function Global.IsCharInAngledArea_3d(ped, x1, y1, z1, x2, y2, z2, unknown, unknownFalse)
	return _in(0x610157C9, ped, x1, y1, z1, x2, y2, z2, unknown, unknownFalse, _r)
end

function Global.IsCharInAnyBoat(ped)
	return _in(0x210A4F1D, ped, _r)
end

function Global.IsCharInAnyCar(ped)
	return _in(0x71184DA3, ped, _r)
end

function Global.IsCharInAnyHeli(ped)
	return _in(0x0FC40275, ped, _r)
end

function Global.IsCharInAnyPlane(ped)
	return _in(0x4BAC2912, ped, _r)
end

function Global.IsCharInAnyPoliceVehicle(ped)
	return _in(0x4414660B, ped, _r)
end

function Global.IsCharInAnyTrain(ped)
	return _in(0x22434C20, ped, _r)
end

function Global.IsCharInAreaOnFoot_2d(ped, x1, y1, x2, y2, unknownFalse)
	return _in(0x3F2D7D06, ped, x1, y1, x2, y2, unknownFalse, _r)
end

function Global.IsCharInArea_2d(ped, x1, y1, x2, y2, unknownFalse)
	return _in(0x7F371477, ped, x1, y1, x2, y2, unknownFalse, _r)
end

function Global.IsCharInArea_3d(ped, x1, y1, z1, x2, y2, z2, unknownFalse)
	return _in(0x44A30283, ped, x1, y1, z1, x2, y2, z2, unknownFalse, _r)
end

function Global.IsCharInCar(ped, vehicle)
	return _in(0x7D037B40, ped, vehicle, _r)
end

function Global.IsCharInFlyingVehicle(ped)
	return _in(0x7FA763E8, ped, _r)
end

function Global.IsCharInMeleeCombat(ped)
	return _in(0x68855BE7, ped, _r)
end

function Global.IsCharInModel(ped, model)
	return _in(0x45DB5FE9, ped, model, _r)
end

function Global.IsCharInTaxi(ped)
	return _in(0x28A73BCA, ped, _r)
end

function Global.IsCharInWater(ped)
	return _in(0x7B1F0130, ped, _r)
end

function Global.IsCharInZone(ped, zonename)
	return _in(0x435054B3, ped, _ts(zonename), _r)
end

function Global.IsCharInjured(ped)
	return _in(0x4ECB2267, ped, _r)
end

function Global.IsCharMale(ped)
	return _in(0x7D76127F, ped, _r)
end

function Global.IsCharModel(ped, model)
	return _in(0x6C403ACC, ped, model, _r)
end

function Global.IsCharOnAnyBike(ped)
	return _in(0x0FB44F54, ped, _r)
end

function Global.IsCharOnFire(ped)
	return _in(0x358E21C5, ped, _r)
end

function Global.IsCharOnFoot(ped)
	return _in(0x10A86CF4, ped, _r)
end

function Global.IsCharOnScreen(ped)
	return _in(0x59471B11, ped, _r)
end

function Global.IsCharPlayingAnim(ped, animSet, animName)
	return _in(0x673E4CD2, ped, _ts(animSet), _ts(animName), _r)
end

function Global.IsCharRespondingToAnyEvent(ped)
	return _in(0x5DDB09F8, ped, _r)
end

function Global.IsCharRespondingToEvent(ped, eventid)
	return _in(0x32653482, ped, eventid, _r)
end

function Global.IsCharShooting(ped)
	return _in(0x324D1594, ped, _r)
end

function Global.IsCharShootingInArea(ped, x1, y1, x2, y2, unknownFalse)
	return _in(0x42941472, ped, x1, y1, x2, y2, unknownFalse, _r)
end

function Global.IsCharSittingIdle(ped)
	return _in(0x064621F1, ped, _r)
end

function Global.IsCharSittingInAnyCar(ped)
	return _in(0x1DBD7385, ped, _r)
end

function Global.IsCharSittingInCar(ped, vehicle)
	return _in(0x309C265B, ped, vehicle, _r)
end

function Global.IsCharStopped(ped)
	return _in(0x0CA614E6, ped, _r)
end

function Global.IsCharStuckUnderCar(ped)
	return _in(0x70BB021A, ped, _r)
end

function Global.IsCharSwimming(ped)
	return _in(0x75D21B78, ped, _r)
end

function Global.IsCharTouchingChar(ped, otherChar)
	return _in(0x03FB6DED, ped, otherChar, _r)
end

function Global.IsCharTouchingObject(ped, obj)
	return _in(0x3AB06137, ped, obj, _r)
end

function Global.IsCharTouchingObjectOnFoot(ped, obj)
	return _in(0x7C0B46C8, ped, obj, _r)
end

function Global.IsCharTouchingVehicle(ped, vehicle)
	return _in(0x307A4B8E, ped, vehicle, _r)
end

function Global.IsCharTryingToEnterALockedCar(ped)
	return _in(0x1C132038, ped, _r)
end

function Global.IsCharUsingAnyScenario(ped)
	return _in(0x64BD4664, ped, _r)
end

function Global.IsCharUsingMapAttractor(ped)
	return _in(0x60B26D74, ped, _r)
end

function Global.IsCharUsingScenario(ped, scenarioName)
	return _in(0x62842540, ped, _ts(scenarioName), _r)
end

function Global.IsCharVisible(ped)
	return _in(0x0A0F19D1, ped, _r)
end

function Global.IsCharWaitingForWorldCollision(ped)
	return _in(0x51453EA2, ped, _r)
end

function Global.IsClosestObjectOfTypeSmashedOrDamaged(x, y, z, radius, type_or_model, flag0, flag1)
	return _in(0x788026F4, x, y, z, radius, type_or_model, flag0, flag1, _r)
end

function Global.IsControlJustPressed(Unk822, controlid)
	return _in(0x4CB729F1, Unk822, controlid, _r)
end

function Global.IsControlPressed(Unk823, controlid)
	return _in(0x0E635761, Unk823, controlid, _r)
end

function Global.IsCopPedInArea_3dNoSave(x0, y0, z0, x1, y1, z1)
	return _in(0x01866CB5, x0, y0, z0, x1, y1, z1, _r)
end

function Global.IsCopVehicleInArea_3dNoSave(x0, y0, z0, x1, y1, z1)
	return _in(0x72F81072, x0, y0, z0, x1, y1, z1, _r)
end

function Global.IsDamageTrackerActiveOnNetworkId(Unk882)
	return _in(0x5A2F2DD1, Unk882, _r)
end

function Global.IsDebugCameraOn()
	return _in(0x4E26149C, _r)
end

--- Returns whether or not a browser is created for a specified DUI browser object.
-- @param duiObject The DUI browser handle.
-- @return A boolean indicating TRUE if the browser is created.
function Global.IsDuiAvailable(duiObject)
	return _in(0x7aac3b4c, duiObject, _r)
end

--- Gets whether or not this is the CitizenFX server.
-- @return A boolean value.
function Global.IsDuplicityVersion()
	return _in(0xcf24c52e, _r)
end

function Global.IsEmergencyServicesVehicle(veh)
	return _in(0x6AFF0587, veh, _r)
end

function Global.IsEpisodeAvailable(episode)
	return _in(0x232800BD, episode, _r)
end

function Global.IsEpisodicDiscBuild()
	return _in(0x511A2EC9, _r)
end

function Global.IsExplosionInArea(expnum, x0, y0, z0, x1, y1, z1)
	return _in(0x676B6BCA, expnum, x0, y0, z0, x1, y1, z1, _r)
end

function Global.IsExplosionInSphere(expnum, x, y, z, radius)
	return _in(0x47A77D2E, expnum, x, y, z, radius, _r)
end

function Global.IsFollowVehicleCamOffsetActive()
	return _in(0x40072120, _r)
end

function Global.IsFontLoaded(font)
	return _in(0x69B53ADA, font, _r)
end

function Global.IsFrontendFading()
	return _in(0x09FD7668, _r)
end

function Global.IsGameInControlOfMusic()
	return _in(0x4FF71989, _r)
end

function Global.IsGameKeyboardKeyJustPressed(key)
	return _in(0x540D127D, key, _r)
end

function Global.IsGameKeyboardKeyPressed(key)
	return _in(0x5FA96262, key, _r)
end

function Global.IsGameKeyboardNavDownPressed(Unk824)
	return _in(0x45E45B1D, Unk824, _r)
end

function Global.IsGameKeyboardNavLeftPressed(Unk825)
	return _in(0x793F238A, Unk825, _r)
end

function Global.IsGameKeyboardNavRightPressed(Unk826)
	return _in(0x3C156533, Unk826, _r)
end

function Global.IsGameKeyboardNavUpPressed(Unk827)
	return _in(0x14AB75AE, Unk827, _r)
end

function Global.IsGarageClosed(garageName)
	return _in(0x26BC1939, _ts(garageName), _r)
end

function Global.IsGarageOpen(garageName)
	return _in(0x65A80992, _ts(garageName), _r)
end

function Global.IsGroupLeader(ped, group)
	return _in(0x2CEC22DA, ped, group, _r)
end

function Global.IsGroupMember(ped, group)
	return _in(0x674D6F8E, ped, group, _r)
end

function Global.IsHeliPartBroken(heli, flag0, flag1, flag2)
	return _in(0x1E2D5A7B, heli, flag0, flag1, flag2, _r)
end

function Global.IsHelpMessageBeingDisplayed()
	return _in(0x6E4E1BEC, _r)
end

function Global.IsHintRunning()
	return _in(0x323806B1, _r)
end

function Global.IsHudPreferenceSwitchedOn()
	return _in(0x69604AE2, _r)
end

function Global.IsHudReticuleComplex()
	return _in(0x4DDB5D59, _r)
end

function Global.IsInCarFireButtonPressed()
	return _in(0x63B70F7C, _r)
end

function Global.IsInLanMode()
	return _in(0x1B8E7EED, _r)
end

function Global.IsInPlayerSettingsMenu()
	return _in(0x18CA2D3A, _r)
end

function Global.IsInSpectatorMode()
	return _in(0x07CC3F86, _r)
end

function Global.IsInteriorScene()
	return _in(0x61DA102E, _r)
end

function Global.IsJapaneseVersion()
	return _in(0x37D022E0, _r)
end

function Global.IsKeyboardKeyJustPressed(key)
	return _in(0x75C9772B, key, _r)
end

function Global.IsKeyboardKeyPressed(key)
	return _in(0x1D334237, key, _r)
end

function Global.IsLazlowStationLocked()
	return _in(0x1CB80079, _r)
end

function Global.IsLcpdDataValid()
	return _in(0x611D69BC, _r)
end

function Global.IsLookInverted()
	return _in(0x1817000B, _r)
end

function Global.IsMemoryCardInUse()
	return _in(0x38F61531, _r)
end

function Global.IsMessageBeingDisplayed()
	return _in(0x68EA6EBE, _r)
end

function Global.IsMinigameInProgress()
	return _in(0x68F06A02, _r)
end

function Global.IsMissionCompletePlaying()
	return _in(0x6C3B5917, _r)
end

function Global.IsMobilePhoneCallOngoing()
	return _in(0x698F6172, _r)
end

function Global.IsMobilePhoneRadioActive()
	return _in(0x4AF14146, _r)
end

function Global.IsModelInCdimage(model)
	return _in(0x771C2838, model, _r)
end

function Global.IsMoneyPickupAtCoords(x, y, z)
	return _in(0x43167C6E, x, y, z, _r)
end

function Global.IsMouseButtonJustPressed(Unk828)
	return _in(0x27323E51, Unk828, _r)
end

function Global.IsMouseButtonPressed(Unk829)
	return _in(0x39E600D0, Unk829, _r)
end

function Global.IsMouseUsingVerticalInversion()
	return _in(0x64655F10, _r)
end

function Global.IsNetworkGamePending()
	return _in(0x7563071D, _r)
end

function Global.IsNetworkGameRunning()
	return _in(0x1CF773D4, _r)
end

function Global.IsNetworkPlayerActive(playerIndex)
	return _in(0x4E237943, playerIndex, _r)
end

function Global.IsNetworkSession()
	return _in(0x6E2B38F3, _r)
end

function Global.IsNextStationAllowed(veh)
	return _in(0x7B8B1D10, veh, _r)
end

function Global.IsNonFragObjectSmashed(x, y, z, radius, model)
	return _in(0x5C723F31, x, y, z, radius, model, _r)
end

--- Checks if keyboard input is enabled during NUI focus using `SET_NUI_FOCUS_KEEP_INPUT`.
-- @return True or false.
function Global.IsNuiFocusKeepingInput()
	return _in(0x39c9dc92, _r)
end

--- Returns the current NUI focus state previously set with `SET_NUI_FOCUS`.
-- @return True or false.
function Global.IsNuiFocused()
	return _in(0x98545e6d, _r)
end

function Global.IsNumlockEnabled()
	return _in(0x39487FB9, _r)
end

function Global.IsObjectAttached(obj)
	return _in(0x701F4004, obj, _r)
end

function Global.IsObjectInAngledArea_3d(obj, x0, y0, z0, x1, y1, z1, Unk72, flag)
	return _in(0x5D5A06F7, obj, x0, y0, z0, x1, y1, z1, Unk72, flag, _r)
end

function Global.IsObjectInArea_2d(obj, x0, y0, x1, y2, flag)
	return _in(0x2C6D65AD, obj, x0, y0, x1, y2, flag, _r)
end

function Global.IsObjectInArea_3d(obj, x0, y0, z0, x1, y1, z1, flag)
	return _in(0x6D717883, obj, x0, y0, z0, x1, y1, z1, flag, _r)
end

function Global.IsObjectInWater(obj)
	return _in(0x7BF7646F, obj, _r)
end

function Global.IsObjectOnFire(obj)
	return _in(0x7A240412, obj, _r)
end

function Global.IsObjectOnScreen(obj)
	return _in(0x6A9A3B1F, obj, _r)
end

function Global.IsObjectPlayingAnim(obj, animname0, animname1)
	return _in(0x4D2E58D5, obj, _ts(animname0), _ts(animname1), _r)
end

function Global.IsObjectReassignmentInProgress()
	return _in(0x7D0D6779, _r)
end

function Global.IsObjectStatic(obj)
	return _in(0x7B181EB0, obj, _r)
end

function Global.IsObjectTouchingObject(obj0, obj1)
	return _in(0x6A2E514F, obj0, obj1, _r)
end

function Global.IsObjectUpright(obj, angle)
	return _in(0x1EE13E29, obj, angle, _r)
end

function Global.IsObjectWithinBrainActivationRange(obj)
	return _in(0x472C710B, obj, _r)
end

function Global.IsOurPlayerHigherPriorityForCarGeneration(playerIndex)
	return _in(0x504E03FC, playerIndex, _r)
end

function Global.IsPainPlaying(ped)
	return _in(0x32422759, ped, _r)
end

function Global.IsPartyMode()
	return _in(0x2A3A77FD, _r)
end

function Global.IsPauseMenuActive()
	return _in(0x6C4568A7, _r)
end

function Global.IsPayNSprayActive()
	return _in(0x1EE70376, _r)
end

function Global.IsPcUsingJoypad()
	return _in(0x7E8E06F8, _r)
end

function Global.IsPedAMissionPed(ped)
	return _in(0x05801768, ped, _r)
end

function Global.IsPedAttachedToAnyCar(ped)
	return _in(0x78DC034E, ped, _r)
end

function Global.IsPedAttachedToObject(ped, obj)
	return _in(0x0BCE3423, ped, obj, _r)
end

function Global.IsPedBeingJacked(ped)
	return _in(0x68B829C7, ped, _r)
end

function Global.IsPedClimbing(ped)
	return _in(0x66F5118F, ped, _r)
end

function Global.IsPedDoingDriveby(ped)
	return _in(0x080F3B37, ped, _r)
end

function Global.IsPedFleeing(ped)
	return _in(0x5E486AA1, ped, _r)
end

function Global.IsPedHoldingAnObject(ped)
	return _in(0x22811897, ped, _r)
end

function Global.IsPedInCombat(ped)
	return _in(0x020106D6, ped, _r)
end

function Global.IsPedInCover(ped)
	return _in(0x5C825D83, ped, _r)
end

function Global.IsPedInCutsceneBlockingBounds(ped)
	return _in(0x55916D7A, ped, _r)
end

function Global.IsPedInGroup(ped)
	return _in(0x365054A7, ped, _r)
end

function Global.IsPedJacking(ped)
	return _in(0x676F0004, ped, _r)
end

function Global.IsPedLookingAtCar(ped, car)
	return _in(0x4859273F, ped, car, _r)
end

function Global.IsPedLookingAtObject(ped, obj)
	return _in(0x5DD231A2, ped, obj, _r)
end

function Global.IsPedLookingAtPed(ped, otherChar)
	return _in(0x7F206A7F, ped, otherChar, _r)
end

function Global.IsPedPinnedDown(ped)
	return _in(0x03B13377, ped, _r)
end

function Global.IsPedRagdoll(ped)
	return _in(0x3E251ADE, ped, _r)
end

function Global.IsPedRetreating(ped)
	return _in(0x7A0B156B, ped, _r)
end

function Global.IsPedsVehicleHot(ped)
	return _in(0x470A7CBD, ped, _r)
end

function Global.IsPlaceCarBombActive()
	return _in(0x775F6665, _r)
end

function Global.IsPlaybackGoingOnForCar(car)
	return _in(0x375F145D, car, _r)
end

function Global.IsPlayerBeingArrested()
	return _in(0x79A95BF9, _r)
end

function Global.IsPlayerClimbing(playerIndex)
	return _in(0x3BF5404E, playerIndex, _r)
end

function Global.IsPlayerControlOn(playerIndex)
	return _in(0x30CD2F1F, playerIndex, _r)
end

function Global.IsPlayerDead(playerIndex)
	return _in(0x12AE0E27, playerIndex, _r)
end

function Global.IsPlayerFreeAimingAtChar(playerIndex, ped)
	return _in(0x30D427B4, playerIndex, ped, _r)
end

function Global.IsPlayerFreeForAmbientTask(playerIndex)
	return _in(0x63E7509E, playerIndex, _r)
end

function Global.IsPlayerInRemoteMode(player)
	return _in(0x526B7BA9, player, _r)
end

function Global.IsPlayerOnline()
	return _in(0x61C65FDE, _r)
end

function Global.IsPlayerPerformingStoppie(player)
	return _in(0x2E815A94, player, _r)
end

function Global.IsPlayerPerformingWheelie(player)
	return _in(0x613510D0, player, _r)
end

function Global.IsPlayerPlaying(playerIndex)
	return _in(0x08274BA4, playerIndex, _r)
end

function Global.IsPlayerPressingHorn(playerIndex)
	return _in(0x583A7A8B, playerIndex, _r)
end

function Global.IsPlayerReadyForCutscene(player)
	return _in(0x29D46FF4, player, _r)
end

function Global.IsPlayerScriptControlOn(player)
	return _in(0x38861F3A, player, _r)
end

function Global.IsPlayerSignedInLocally()
	return _in(0x547523EE, _r)
end

function Global.IsPlayerTargettingAnything(playerIndex)
	return _in(0x665F6BB7, playerIndex, _r)
end

function Global.IsPlayerTargettingChar(playerIndex, ped)
	return _in(0x58A6457C, playerIndex, ped, _r)
end

function Global.IsPlayerTargettingObject(playerIndex, obj)
	return _in(0x679934F9, playerIndex, obj, _r)
end

function Global.IsPlayerVehicleEntryDisabled(player)
	return _in(0x4908091D, player, _r)
end

function Global.IsPointObscuredByAMissionEntity(pX, pY, pZ, sizeX, sizeY, sizeZ)
	return _in(0x7FBC713E, pX, pY, pZ, sizeX, sizeY, sizeZ, _r)
end

function Global.IsPosInCutsceneBlockingBounds(x, y, z)
	return _in(0x593A553B, x, y, z, _r)
end

--- IS_PRINCIPAL_ACE_ALLOWED
function Global.IsPrincipalAceAllowed(principal, object)
	return _in(0x37cf52ce, _ts(principal), _ts(object), _r)
end

function Global.IsProjectileInArea(x0, y0, z0, x1, y1, z1)
	return _in(0x7BB35FCF, x0, y0, z0, x1, y1, z1, _r)
end

function Global.IsRadioHudOn()
	return _in(0x45F249B7, _r)
end

function Global.IsRadioRetuning()
	return _in(0x45C344AA, _r)
end

function Global.IsRelationshipSet(Unk493, Unk494, Unk495)
	return _in(0x4C076B40, Unk493, Unk494, Unk495, _r)
end

function Global.IsReplaySaving()
	return _in(0x78021D03, _r)
end

function Global.IsReplaySystemSaving()
	return _in(0x318F65E6, _r)
end

function Global.IsScoreGreater(playerIndex, score)
	return _in(0x517B7068, playerIndex, score, _r)
end

function Global.IsScreenFadedIn()
	return _in(0x5E0713B2, _r)
end

function Global.IsScreenFadedOut()
	return _in(0x59EE3A11, _r)
end

function Global.IsScreenFading()
	return _in(0x73700561, _r)
end

function Global.IsScreenFadingIn()
	return _in(0x5D1425DF, _r)
end

function Global.IsScreenFadingOut()
	return _in(0x0A940E03, _r)
end

function Global.IsScriptFireExtinguished(fire)
	return _in(0x394C1E55, fire, _r)
end

function Global.IsScriptedConversationOngoing()
	return _in(0x3CA23254, _r)
end

function Global.IsScriptedSpeechPlaying(ped)
	return _in(0x12D71B44, ped, _r)
end

function Global.IsSittingObjectNear(x, y, z, Unk73)
	return _in(0x120B4F15, x, y, z, Unk73, _r)
end

function Global.IsSniperBulletInArea(x0, y0, z0, x1, y1, z1)
	return _in(0x6E435BDE, x0, y0, z0, x1, y1, z1, _ri)
end

function Global.IsSniperInverted()
	return _in(0x50DC54B3, _r)
end

function Global.IsSpecificCamInterpolating(cam)
	return _in(0x17C37E6D, cam, _r)
end

function Global.IsSphereVisibleToAnotherMachine(Unk1043, Unk1044, Unk1045, Unk1046)
	return _in(0x11EE28D5, Unk1043, Unk1044, Unk1045, Unk1046, _ri)
end

function Global.IsStreamingAdditionalText(textIndex)
	return _in(0x23B00129, textIndex, _r)
end

function Global.IsStreamingPriorityRequests()
	return _in(0x64342B55, _r)
end

function Global.IsStreamingThisAdditionalText(str0, Unk597, Unk598)
	return _in(0x4D077DBA, _ts(str0), Unk597, Unk598, _r)
end

function Global.IsStringNull(str)
	return _in(0x49A75618, _ts(str), _r)
end

function Global.IsSystemUiShowing()
	return _in(0x5F643EE6, _r)
end

function Global.IsThisAMinigameScript()
	return _in(0x219A3AF6, _r)
end

function Global.IsThisHelpMessageBeingDisplayed(gxtentry)
	return _in(0x505D37D8, _ts(gxtentry), _r)
end

function Global.IsThisHelpMessageWithNumberBeingDisplayed(gxtentry, number)
	return _in(0x09E878A4, _ts(gxtentry), number, _r)
end

function Global.IsThisHelpMessageWithStringBeingDisplayed(gxtentry, str)
	return _in(0x4D155EE8, _ts(gxtentry), _ts(str), _r)
end

function Global.IsThisMachineTheServer()
	return _in(0x2E5E1600, _r)
end

function Global.IsThisModelABike(model)
	return _in(0x57F46B33, model, _r)
end

function Global.IsThisModelABoat(model)
	return _in(0x43CC0913, model, _r)
end

function Global.IsThisModelACar(model)
	return _in(0x6EA92FD5, model, _r)
end

function Global.IsThisModelAHeli(model)
	return _in(0x62EA75E0, model, _r)
end

function Global.IsThisModelAPed(model)
	return _in(0x0E2438E5, model, _r)
end

function Global.IsThisModelAPlane(model)
	return _in(0x176F4D4C, model, _r)
end

function Global.IsThisModelATrain(model)
	return _in(0x7B8537F7, model, _r)
end

function Global.IsThisModelAVehicle(model)
	return _in(0x62BC0AEE, model, _r)
end

function Global.IsThisPedAPlayer(ped)
	return _in(0x37C85316, ped, _r)
end

function Global.IsThisPrintBeingDisplayed(gxtentry, Unk615, Unk616, Unk617, Unk618, Unk619, Unk620, Unk621, Unk622, Unk623, Unk624)
	return _in(0x459A7F23, _ts(gxtentry), Unk615, Unk616, Unk617, Unk618, Unk619, Unk620, Unk621, Unk622, Unk623, Unk624, _ri)
end

function Global.IsThreadActive(threadId)
	return _in(0x052A30F7, threadId, _r)
end

function Global.IsUsingController()
	return _in(0x669D053F, _r)
end

function Global.IsVehDriveable(vehicle)
	return _in(0x17BC668D, vehicle, _r)
end

function Global.IsVehStuck(veh, time, flag0, flag1, flag2)
	return _in(0x460D2EBB, veh, time, flag0, flag1, flag2, _r)
end

function Global.IsVehWindowIntact(vehicle, window)
	return _in(0x1D0B131A, vehicle, window, _r)
end

function Global.IsVehicleExtraTurnedOn(vehicle, extra)
	return _in(0x4B920E81, vehicle, extra, _r)
end

function Global.IsVehicleOnAllWheels(vehicle)
	return _in(0x4D460265, vehicle, _r)
end

function Global.IsVehicleTouchingObject(veh, obj)
	return _in(0x06CD4EB4, veh, obj, _r)
end

function Global.IsViewportActive(viewportid)
	return _in(0x5D2B2A9A, viewportid, _r)
end

function Global.IsWantedLevelGreater(playerIndex, level)
	return _in(0x7DA4736D, playerIndex, level, _r)
end

function Global.IsWorldPointWithinBrainActivationRange()
	return _in(0x5E7B0F23, _r)
end

function Global.KnockPedOffBike(vehicle)
	return _in(0x6CA57960, vehicle)
end

function Global.LaunchLocalPlayerInNetworkGame()
	return _in(0x70FE415C)
end

function Global.LimitAngle(angle, anglelimited)
	return _in(0x4CAE3B65, angle, _fi(anglelimited) --[[ may be optional ]])
end

function Global.LimitTwoPlayerDistance(distance)
	return _in(0x50AD1F3E, distance)
end

function Global.Line(x0, y0, z0, x1, y1, z1)
	return _in(0x6C6F6052, x0, y0, z0, x1, y1, z1)
end

function Global.ListenToPlayerGroupCommands(ped, set)
	return _in(0x34AC73D6, ped, set)
end

function Global.LoadAdditionalText(textName, textIndex)
	return _in(0x28897EBD, _ts(textName), textIndex)
end

function Global.LoadAllObjectsNow()
	return _in(0x4BF36A32)
end

function Global.LoadAllPathNodes(value)
	return _in(0x356C2DDB, value, _ri)
end

function Global.LoadCharDecisionMaker(type, pDM)
	return _in(0x7F7B4FC5, type, _ii(pDM) --[[ may be optional ]])
end

function Global.LoadCombatDecisionMaker(type, pDM)
	return _in(0x0C7B14D9, type, _ii(pDM) --[[ may be optional ]])
end

function Global.LoadPathNodesInArea(x, y, z, radius)
	return _in(0x44640C28, x, y, z, radius)
end

--- Reads the contents of a text file in a specified resource.
-- If executed on the client, this file has to be included in `files` in the resource manifest.
-- Example: `local data = LoadResourceFile("devtools", "data.json")`
-- @param resourceName The resource name.
-- @param fileName The file in the resource.
-- @return The file contents
function Global.LoadResourceFile(resourceName, fileName)
	return _in(0x76a9ee1f, _ts(resourceName), _ts(fileName), _s)
end

function Global.LoadScene(x, y, z)
	return _in(0x39F62BFB, x, y, z)
end

function Global.LoadSceneForRoomByKey(interior, roomhash)
	return _in(0x6E904C1A, interior, roomhash)
end

function Global.LoadSettings()
	return _in(0x77745390)
end

function Global.LoadTextFont(font)
	return _in(0x2D371601, font)
end

function Global.LoadTxd(txdName)
	return _in(0x52FC763A, _ts(txdName), _ri)
end

function Global.LoadWebPage(htmlviewport, webaddress)
	return _in(0x78C17971, htmlviewport, _ts(webaddress))
end

function Global.LocalPlayerIsReadyToStartPlaying()
	return _in(0x5C03585C, _r)
end

function Global.LocateCar_2d(car, x0, y0, xUnk48, yUnk49, flag)
	return _in(0x36F70AF6, car, x0, y0, xUnk48, yUnk49, flag, _r)
end

function Global.LocateCar_3d(car, x, y, z, xa, ya, za, flag)
	return _in(0x2A221E97, car, x, y, z, xa, ya, za, flag, _r)
end

function Global.LocateCharAnyMeansCar_2d(ped, car, x, y, flag)
	return _in(0x1A455E51, ped, car, x, y, flag, _r)
end

function Global.LocateCharAnyMeansCar_3d(ped, car, x, y, z, flag)
	return _in(0x58DD4CCC, ped, car, x, y, z, flag, _r)
end

function Global.LocateCharAnyMeansChar_2d(ped, pednext, x, y, flag)
	return _in(0x18EA4926, ped, pednext, x, y, flag, _r)
end

function Global.LocateCharAnyMeansChar_3d(ped, pednext, x, y, z, flag)
	return _in(0x3E441A58, ped, pednext, x, y, z, flag, _r)
end

function Global.LocateCharAnyMeansObject_2d(ped, obj, x, y, flag)
	return _in(0x4FD34079, ped, obj, x, y, flag, _r)
end

function Global.LocateCharAnyMeansObject_3d(ped, obj, x, y, z, flag)
	return _in(0x6D0E1BCE, ped, obj, x, y, z, flag, _r)
end

function Global.LocateCharAnyMeans_2d(ped, x0, y0, x1, y1, flag)
	return _in(0x5BB767AD, ped, x0, y0, x1, y1, flag, _r)
end

function Global.LocateCharAnyMeans_3d(ped, x0, y0, z0, x1, y1, z1, flag)
	return _in(0x0437222B, ped, x0, y0, z0, x1, y1, z1, flag, _r)
end

function Global.LocateCharInCarCar_2d(ped, car, x, y, flag)
	return _in(0x53B429F9, ped, car, x, y, flag, _r)
end

function Global.LocateCharInCarCar_3d(ped, car, x, y, z, flag)
	return _in(0x4D3547D1, ped, car, x, y, z, flag, _r)
end

function Global.LocateCharInCarChar_2d(ped, pednext, x, y, flag)
	return _in(0x17BC4531, ped, pednext, x, y, flag, _r)
end

function Global.LocateCharInCarChar_3d(ped, pednext, x, y, z, flag)
	return _in(0x014F234F, ped, pednext, x, y, z, flag, _r)
end

function Global.LocateCharInCarObject_2d(ped, obj, x, y, flag)
	return _in(0x6CCB719D, ped, obj, x, y, flag, _r)
end

function Global.LocateCharInCarObject_3d(ped, obj, x, y, z, flag)
	return _in(0x0C26452D, ped, obj, x, y, z, flag, _r)
end

function Global.LocateCharInCar_2d(ped, x0, y0, x1, y1, flag)
	return _in(0x1DDA54EF, ped, x0, y0, x1, y1, flag, _r)
end

function Global.LocateCharInCar_3d(ped, x0, y0, z0, x1, y1, z, flag)
	return _in(0x0AC92D36, ped, x0, y0, z0, x1, y1, z, flag, _r)
end

function Global.LocateCharOnFootCar_2d(ped, car, x, y, flag)
	return _in(0x78A75EF4, ped, car, x, y, flag, _r)
end

function Global.LocateCharOnFootCar_3d(ped, car, x, y, z, flag)
	return _in(0x3C3E5FA0, ped, car, x, y, z, flag, _r)
end

function Global.LocateCharOnFootChar_2d(ped, pednext, x, y, flag)
	return _in(0x191E2F12, ped, pednext, x, y, flag, _r)
end

function Global.LocateCharOnFootChar_3d(ped, pednext, x, y, z, flag)
	return _in(0x4DA362B0, ped, pednext, x, y, z, flag, _r)
end

function Global.LocateCharOnFootObject_2d(ped, obj, x, y, flag)
	return _in(0x67F518F0, ped, obj, x, y, flag, _r)
end

function Global.LocateCharOnFootObject_3d(ped, obj, x, y, z, flag)
	return _in(0x4A8E429A, ped, obj, x, y, z, flag, _r)
end

function Global.LocateCharOnFoot_2d(ped, x0, y0, x1, y1, flag)
	return _in(0x50EE161F, ped, x0, y0, x1, y1, flag, _r)
end

function Global.LocateCharOnFoot_3d(ped, x0, y0, z0, x1, y1, z1, flag)
	return _in(0x3D003090, ped, x0, y0, z0, x1, y1, z1, flag, _r)
end

function Global.LocateDeadCar_3d(car, x, y, z, xa, ya, za, flag)
	return _in(0x584D0C79, car, x, y, z, xa, ya, za, flag, _r)
end

function Global.LocateObject_2d(obj, x0, y0, x1, y1, flag)
	return _in(0x59A57BA8, obj, x0, y0, x1, y1, flag, _r)
end

function Global.LocateObject_3d(obj, x, y, z, xr, yr, zr, flag)
	return _in(0x6DB47487, obj, x, y, z, xr, yr, zr, flag, _r)
end

function Global.LockCarDoors(vehicle, value)
	return _in(0x6702757C, vehicle, value)
end

function Global.LockLazlowStation()
	return _in(0x1B215A3B)
end

function Global.LockPlayerSettingsGenreChange(lock_bit_mask)
	return _in(0x33F4498E, lock_bit_mask)
end

function Global.LookAtNearbyEntityWithSpecialAttribute(Unk98)
	return _in(0x6EB639E8, Unk98, _v, _f, _i, _i, _i, _r)
end

function Global.LoopRaceTrack(loop)
	return _in(0x77FD5097, loop)
end

function Global.MaintainFlashingStarAfterOffence(player, maintain)
	return _in(0x68880DCD, player, maintain)
end

function Global.MakeObjectTargettable(obj, targettable)
	return _in(0x228F1801, obj, targettable)
end

function Global.MakePlayerFireProof(player, proof)
	return _in(0x38293796, player, proof)
end

function Global.MakePlayerGangDisappear()
	return _in(0x34211CDA)
end

function Global.MakePlayerGangReappear()
	return _in(0x295A652A)
end

function Global.MakePlayerSafeForCutscene(player)
	return _in(0x45852A03, player)
end

function Global.MarkCarAsConvoyCar(vehicle, convoyCar)
	return _in(0x79274447, vehicle, convoyCar)
end

function Global.MarkCarAsNoLongerNeeded(pVehicle)
	return _in(0x20C76FD1, _ii(pVehicle) --[[ may be optional ]])
end

function Global.MarkCharAsNoLongerNeeded(pPed)
	return _in(0x0B774604, _ii(pPed) --[[ may be optional ]])
end

function Global.MarkMissionTrainAsNoLongerNeeded(train)
	return _in(0x37AC2A95, train)
end

function Global.MarkMissionTrainsAsNoLongerNeeded()
	return _in(0x07E7104E)
end

function Global.MarkModelAsNoLongerNeeded(model)
	return _in(0x00FA0E33, model)
end

function Global.MarkObjectAsNoLongerNeeded(pObj)
	return _in(0x493B655B, _ii(pObj) --[[ may be optional ]])
end

function Global.MarkRoadNodeAsDontWander(x, y, z)
	return _in(0x4C2621B6, x, y, z)
end

function Global.MarkScriptAsNoLongerNeeded(scriptName)
	return _in(0x09E405DB, _ts(scriptName))
end

function Global.MarkStreamedTxdAsNoLongerNeeded(txdName)
	return _in(0x70EA2B89, _ts(txdName))
end

function Global.MissionAudioBankNoLongerNeeded()
	return _in(0x12C42F66)
end

function Global.ModifyCharMoveBlendRatio(ped, Unk6)
	return _in(0x3E657606, ped, Unk6)
end

function Global.ModifyCharMoveState(ped, state)
	return _in(0x5CD32071, ped, state)
end

function Global.MpGetAmountOfAnchorPoints(ped, id)
	return _in(0x6C7566F3, ped, id, _ri)
end

function Global.MpGetAmountOfVariationComponent(ped, componentid)
	return _in(0x54DD6ACF, ped, componentid, _ri)
end

function Global.MpGetPreferenceValue(prefid)
	return _in(0x54F61C99, prefid, _ri)
end

function Global.MpGetPropSetup(ped, ukn0, ukn1, ukn2, ukn3)
	return _in(0x1C00658B, ped, ukn0, ukn1, ukn2, ukn3, _ri)
end

function Global.MpGetVariationSetup(ped, Unk890, Unk891, Unk892, Unk893)
	return _in(0x3775138E, ped, Unk890, Unk891, Unk892, Unk893, _ri)
end

function Global.MpSetPreferenceValue(prefid, value)
	return _in(0x216804D3, prefid, value)
end

--- Starts listening to the specified channel, when available.
-- @param channel A game voice channel ID.
function Global.MumbleAddVoiceChannelListen(channel)
	return _in(0xc79f44bf, channel)
end

--- Adds the specified channel to the target list for the specified Mumble voice target ID.
-- @param targetId A Mumble voice target ID, ranging from 1..30 (inclusive).
-- @param channel A game voice channel ID.
function Global.MumbleAddVoiceTargetChannel(targetId, channel)
	return _in(0x4d386c9e, targetId, channel)
end

--- Adds the specified player to the target list for the specified Mumble voice target ID.
-- @param targetId A Mumble voice target ID, ranging from 1..30 (inclusive).
-- @param player A game player index.
function Global.MumbleAddVoiceTargetPlayer(targetId, player)
	return _in(0x32c5355a, targetId, player)
end

--- Adds the specified player to the target list for the specified Mumble voice target ID.
-- @param targetId A Mumble voice target ID, ranging from 1..30 (inclusive).
-- @param serverId The player's server id.
function Global.MumbleAddVoiceTargetPlayerByServerId(targetId, serverId)
	return _in(0x25f2b65f, targetId, serverId)
end

--- MUMBLE_CLEAR_VOICE_CHANNEL
function Global.MumbleClearVoiceChannel()
	return _in(0xbf847807)
end

--- Clears the target list for the specified Mumble voice target ID.
-- @param targetId A Mumble voice target ID, ranging from 1..30 (inclusive).
function Global.MumbleClearVoiceTarget(targetId)
	return _in(0x8555dcba, targetId)
end

--- Clears channels from the target list for the specified Mumble voice target ID.
-- @param targetId A Mumble voice target ID, ranging from 1..30 (inclusive).
function Global.MumbleClearVoiceTargetChannels(targetId)
	return _in(0x5ea72e76, targetId)
end

--- Clears players from the target list for the specified Mumble voice target ID.
-- @param targetId A Mumble voice target ID, ranging from 1..30 (inclusive).
function Global.MumbleClearVoiceTargetPlayers(targetId)
	return _in(0x912e21da, targetId)
end

--- MUMBLE_GET_TALKER_PROXIMITY
-- @return Talker proximity value.
function Global.MumbleGetTalkerProximity()
	return _in(0x84e02a32, _rf)
end

--- Returns the mumble voice channel from a player's server id.
-- @param serverId The player's server id.
-- @return Int representing the identifier of the voice channel.
function Global.MumbleGetVoiceChannelFromServerId(serverId)
	return _in(0x221c09f1, serverId, _ri)
end

--- MUMBLE_IS_ACTIVE
-- @return True if the player has enabled voice chat.
function Global.MumbleIsActive()
	return _in(0xe820bc10, _r)
end

--- This native will return true if the user succesfully connected to the voice server.
-- If the user disabled the voice-chat setting it will return false.
-- @return True if the player is connected to a mumble server.
function Global.MumbleIsConnected()
	return _in(0xb816370a, _r)
end

--- MUMBLE_IS_PLAYER_TALKING
-- @param player The target player.
-- @return Whether or not the player is talking.
function Global.MumbleIsPlayerTalking(player)
	return _in(0x33eef97f, player, _r)
end

--- Stops listening to the specified channel.
-- @param channel A game voice channel ID.
function Global.MumbleRemoveVoiceChannelListen(channel)
	return _in(0x231523b7, channel)
end

--- Removes the specified voice channel from the user's voice targets.
-- Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_CHANNEL](#\_0x4D386C9E)
-- @param targetId A Mumble voice target ID, ranging from 1..30 (inclusive).
-- @param channel The game voice channel ID to remove from the target.
function Global.MumbleRemoveVoiceTargetChannel(targetId, channel)
	return _in(0x268db867, targetId, channel)
end

--- Removes the specified player from the user's voice targets.
-- Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_PLAYER](#\_0x32C5355A)
-- @param targetId A Mumble voice target ID, ranging from 1..30 (inclusive).
-- @param player The player index to remove from the target.
function Global.MumbleRemoveVoiceTargetPlayer(targetId, player)
	return _in(0x88cd646f, targetId, player)
end

--- Removes the specified player from the user's voice targets.
-- Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_PLAYER_BY_SERVER_ID](#\_0x25F2B65F)
-- @param targetId A Mumble voice target ID, ranging from 1..30 (inclusive).
-- @param serverId The player's server id to remove from the target.
function Global.MumbleRemoveVoiceTargetPlayerByServerId(targetId, serverId)
	return _in(0x930bd34b, targetId, serverId)
end

--- MUMBLE_SET_ACTIVE
-- @param state Voice chat state.
function Global.MumbleSetActive(state)
	return _in(0xd932a3f3, state)
end

--- Sets the current input distance. The player will be able to talk to other players within this distance.
-- @param distance The input distance.
function Global.MumbleSetAudioInputDistance(distance)
	return _in(0x1b1052e2, distance)
end

--- Use this native to disable noise suppression and high pass filters.
-- The possible intents for this are as follows (backticks are used to represent hashes):
-- | Index | Description |
-- |-|-|
-- | \`speech\` | Default intent |
-- | \`music\` | Disable noise suppression and high pass filter |
-- @param intentHash The intent hash.
function Global.MumbleSetAudioInputIntent(intentHash)
	return _in(0x6383526b, _ch(intentHash))
end

--- Sets the current output distance. The player will be able to hear other players talking within this distance.
-- @param distance The output distance.
function Global.MumbleSetAudioOutputDistance(distance)
	return _in(0x74c597d9, distance)
end

--- Changes the Mumble server address to connect to, and reconnects to the new address.
-- @param address The address of the mumble server.
-- @param port The port of the mumble server.
function Global.MumbleSetServerAddress(address, port)
	return _in(0xe6eb2cd8, _ts(address), port)
end

--- Sets the audio submix ID for a specified player using Mumble 'Native Audio' functionality.
-- @param serverId The player's server ID.
-- @param submixId The submix ID.
function Global.MumbleSetSubmixForServerId(serverId, submixId)
	return _in(0xfe3a3054, serverId, submixId)
end

--- MUMBLE_SET_TALKER_PROXIMITY
-- @param value Proximity value.
function Global.MumbleSetTalkerProximity(value)
	return _in(0x74e927b0, value)
end

--- MUMBLE_SET_VOICE_CHANNEL
-- @param channel A game voice channel ID.
function Global.MumbleSetVoiceChannel(channel)
	return _in(0x8737eee8, channel)
end

--- Sets the current Mumble voice target ID to broadcast voice to.
-- @param targetId A Mumble voice target ID, ranging from 1..30 (inclusive). 0 disables voice targets, and 31 is server loopback.
function Global.MumbleSetVoiceTarget(targetId)
	return _in(0x960a4a95, targetId)
end

--- Overrides the output volume for a particular player on Mumble. This will also bypass 3D audio and distance calculations. -1.0 to reset the override.
-- Set to -1.0 to reset the Volume override.
-- @param player A game player index.
-- @param volume The volume, ranging from 0.0 to 1.0 (or above).
function Global.MumbleSetVolumeOverride(player, volume)
	return _in(0x61c309e3, player, volume)
end

--- Overrides the output volume for a particular player with the specified server id and player name on Mumble. This will also bypass 3D audio and distance calculations. -1.0 to reset the override.
-- @param serverId The player's server id.
-- @param volume The volume, ranging from 0.0 to 1.0 (or above).
function Global.MumbleSetVolumeOverrideByServerId(serverId, volume)
	return _in(0xce8e25b4, serverId, volume)
end

function Global.MuteGameworldAndPositionedRadioForTv(mute)
	return _in(0x79974E04, mute)
end

function Global.MuteGameworldAudio(mute)
	return _in(0x446677C6, mute)
end

function Global.MutePositionedRadio(mute)
	return _in(0x32C75195, mute)
end

function Global.MuteStaticEmitter(StaticEmitterIndex, mute)
	return _in(0x0FCC0410, StaticEmitterIndex, mute)
end

function Global.NetworkAcceptInvite(playerIndex)
	return _in(0x4FDD00CE, playerIndex, _ri)
end

function Global.NetworkAdvertiseSession(advertise)
	return _in(0x1B9E5D07, advertise)
end

function Global.NetworkAllPartyMembersPresent()
	return _in(0x59C53FBA, _r)
end

function Global.NetworkAmIBlockedByPlayer(playerIndex)
	return _in(0x4FAF2007, playerIndex, _r)
end

function Global.NetworkAmIMutedByPlayer(playerIndex)
	return _in(0x448F486A, playerIndex, _r)
end

function Global.NetworkChangeExtendedGameConfig(Unk924)
	return _in(0x4CFE3998, Unk924)
end

function Global.NetworkChangeGameMode(Unk1047, Unk1048, Unk1049, Unk1050)
	return _in(0x3F054F44, Unk1047, Unk1048, Unk1049, Unk1050, _ri)
end

function Global.NetworkChangeGameModePending()
	return _in(0x379930F3, _r)
end

function Global.NetworkChangeGameModeSucceeded()
	return _in(0x6D302DA9, _r)
end

function Global.NetworkCheckInviteArrival()
	return _in(0x308E3719, _r)
end

function Global.NetworkClearInviteArrival()
	return _in(0x37282D4F)
end

function Global.NetworkClearSummons()
	return _in(0x6289239F)
end

function Global.NetworkDidInviteFriend(FRIENDNAME)
	return _in(0x3CAA1340, _ts(FRIENDNAME), _r)
end

function Global.NetworkEndSession()
	return _in(0x75291BEC)
end

function Global.NetworkEndSessionPending()
	return _in(0x489B0BB9, _r)
end

function Global.NetworkExpandTo_32Players()
	return _in(0x36511E0A)
end

function Global.NetworkFindGame(GameMode, ukn0, ukn1, ukn2)
	return _in(0x5D4D0C86, GameMode, ukn0, ukn1, ukn2)
end

function Global.NetworkFindGamePending()
	return _in(0x23D60810, _r)
end

function Global.NetworkFinishExtendedSearch()
	return _in(0x1E0A7AD8)
end

--- Returns the owner ID of the specified entity.
-- @param entity The entity to get the owner for.
-- @return On the server, the server ID of the entity owner. On the client, returns the player/slot ID of the entity owner.
function Global.NetworkGetEntityOwner(entity)
	return _in(0x526fee31, entity, _ri)
end

function Global.NetworkGetFindResult(Unk925, Unk926)
	return _in(0x282D2CAA, Unk925, Unk926)
end

function Global.NetworkGetFriendCount()
	return _in(0x5EEA3F25, _ri)
end

function Global.NetworkGetFriendName(id)
	return _in(0x17FD0934, id, _s)
end

function Global.NetworkGetGameMode()
	return _in(0x29A75D1F, _ri)
end

function Global.NetworkGetHostAverageRank(host)
	return _in(0x04261E4C, host, _ri)
end

function Global.NetworkGetHostLatency(host)
	return _in(0x74093768, host, _ri)
end

function Global.NetworkGetHostMatchProgress(host)
	return _in(0x59AA0635, host, _ri)
end

function Global.NetworkGetHostServerName(host)
	return _in(0x031D740F, host, _s)
end

function Global.NetworkGetLanSession()
	return _in(0x48A723C1, _r)
end

function Global.NetworkGetMaxPrivateSlots()
	return _in(0x2EF80425, _ri)
end

function Global.NetworkGetMaxSlots()
	return _in(0x524F7543, _ri)
end

function Global.NetworkGetMetPlayerName(Unk1051)
	return _in(0x01F35F5C, Unk1051, _ri)
end

function Global.NetworkGetNextTextChat()
	return _in(0x314E106A, _s)
end

function Global.NetworkGetNumOpenPublicSlots()
	return _in(0x4E323A0A, _ri)
end

function Global.NetworkGetNumPartyMembers()
	return _in(0x27F65637, _ri)
end

function Global.NetworkGetNumPlayersMet()
	return _in(0x33500089, _ri)
end

function Global.NetworkGetNumUnacceptedInvites()
	return _in(0x13244634, _ri)
end

function Global.NetworkGetNumUnfilledReservations()
	return _in(0x043C3B0B, _ri)
end

function Global.NetworkGetNumberOfGames()
	return _in(0x10DF4CED, _ri)
end

function Global.NetworkGetPlayerIdOfNextTextChat()
	return _in(0x145B50AF, _ri)
end

function Global.NetworkGetRendezvousHostPlayerId()
	return _in(0x282D29FE, _ri)
end

function Global.NetworkGetServerName()
	return _in(0x03665B8D, _ri)
end

function Global.NetworkGetUnacceptedInviteEpisode(Unk894)
	return _in(0x3432536A, Unk894, _ri)
end

function Global.NetworkGetUnacceptedInviteGameMode(Unk1052)
	return _in(0x5E44065D, Unk1052, _ri)
end

function Global.NetworkGetUnacceptedInviterName(Unk886)
	return _in(0x1A7B3125, Unk886, _s)
end

function Global.NetworkHasStrictNat()
	return _in(0x2704460E, _r)
end

function Global.NetworkHaveAcceptedInvite()
	return _in(0x0BC86FA7, _r)
end

function Global.NetworkHaveOnlinePrivileges()
	return _in(0x4B907716, _r)
end

function Global.NetworkHaveSummons()
	return _in(0x48726B45, _r)
end

function Global.NetworkHostGameE1(Gamemode, Ranked, Slots, Private, Episode, MaxTeams)
	return _in(0x5BEA05E2, Gamemode, Ranked, Slots, Private, Episode, MaxTeams, _r)
end

function Global.NetworkHostGamePending()
	return _in(0x391E4575, _r)
end

function Global.NetworkHostGameSucceeded()
	return _in(0x1CA77E94, _r)
end

function Global.NetworkHostRendezvousE1(Gamemode, Slots, Episode)
	return _in(0x48032420, Gamemode, Slots, Episode, _r)
end

function Global.NetworkInviteFriend(friendname, ukn)
	return _in(0x62B15CD7, _ts(friendname), _ts(ukn))
end

function Global.NetworkIsBeingKicked()
	return _in(0x52364369, _r)
end

function Global.NetworkIsCommonEpisode(id)
	return _in(0x26094A53, id, _r)
end

function Global.NetworkIsFindResultUpdated(ukn0)
	return _in(0x7ED34379, ukn0, _r)
end

function Global.NetworkIsFindResultValid(Unk883)
	return _in(0x51DF00D8, Unk883, _r)
end

function Global.NetworkIsFriendInSameTitle(friendid)
	return _in(0x4B5C4957, friendid, _r)
end

function Global.NetworkIsFriendOnline(Unk896)
	return _in(0x04783029, Unk896, _ri)
end

function Global.NetworkIsGameRanked()
	return _in(0x50C72493, _r)
end

function Global.NetworkIsInviteeOnline()
	return _in(0x772B01CC, _r)
end

function Global.NetworkIsNetworkAvailable()
	return _in(0x04E11812, _r)
end

function Global.NetworkIsOperationPending()
	return _in(0x71AE456A, _r)
end

function Global.NetworkIsPlayerBlockedByMe(playerIndex)
	return _in(0x23B76F88, playerIndex, _r)
end

function Global.NetworkIsPlayerMutedByMe(playerIndex)
	return _in(0x120962E7, playerIndex, _r)
end

function Global.NetworkIsPlayerTalking(playerIndex)
	return _in(0x544625D9, playerIndex, _r)
end

function Global.NetworkIsPlayerTyping(playerIndex)
	return _in(0x5AE1245E, playerIndex, _r)
end

function Global.NetworkIsRendezvous()
	return _in(0x60560DAE, _r)
end

function Global.NetworkIsRendezvousHost()
	return _in(0x6EB3047F, _r)
end

function Global.NetworkIsRockstartSessionIdValid()
	return _in(0x6C434E0B, _r)
end

function Global.NetworkIsSessionAdvertise()
	return _in(0x1B6716B8, _r)
end

function Global.NetworkIsSessionInvitable()
	return _in(0x4A8245F1, _r)
end

function Global.NetworkIsSessionStarted()
	return _in(0x65B83AFB, _r)
end

function Global.NetworkIsTvt()
	return _in(0x73D87A5F, _r)
end

function Global.NetworkJoinGame(Unk1053)
	return _in(0x60806A0C, Unk1053, _ri)
end

function Global.NetworkJoinGamePending()
	return _in(0x76C53927, _r)
end

function Global.NetworkJoinGameSucceeded()
	return _in(0x59F24327, _r)
end

function Global.NetworkJoinSummons()
	return _in(0x360751AE, _r)
end

function Global.NetworkKickPlayer(playerIndex, value)
	return _in(0x7E8C1C45, playerIndex, value)
end

function Global.NetworkLeaveGame()
	return _in(0x55D66E24)
end

function Global.NetworkLeaveGamePending()
	return _in(0x497E6745, _r)
end

function Global.NetworkLimitTo_16Players()
	return _in(0x0A1D6E36)
end

function Global.NetworkPlayerHasCommPrivs()
	return _in(0x2854024A, _r)
end

function Global.NetworkPlayerHasDiedRecently(playerIndex)
	return _in(0x75CD1A28, playerIndex, _r)
end

function Global.NetworkPlayerHasHeadset(Unk884)
	return _in(0x408E2F70, Unk884, _r)
end

function Global.NetworkPlayerHasKeyboard(playerIndex)
	return _in(0x04FE5C34, playerIndex, _r)
end

function Global.NetworkRestoreGameConfig(Unk1054)
	return _in(0x1E1B5C26, Unk1054, _ri)
end

function Global.NetworkResultMatchesSearchCriteria(result)
	return _in(0x767F1E44, result, _r)
end

function Global.NetworkReturnToRendezvous()
	return _in(0x00031EC6, _r)
end

function Global.NetworkReturnToRendezvousPending()
	return _in(0x6A66149A, _r)
end

function Global.NetworkReturnToRendezvousSucceeded()
	return _in(0x208F671C, _r)
end

function Global.NetworkSendTextChat(playerIndex, Unk1055)
	return _in(0x18C67E6D, playerIndex, Unk1055, _ri)
end

function Global.NetworkSetFriendlyFireOption(Unk927)
	return _in(0x5AC43965, Unk927)
end

function Global.NetworkSetHealthReticuleOption(Unk928)
	return _in(0x3998154E, Unk928)
end

function Global.NetworkSetLanSession(Unk929)
	return _in(0x6FDA43A3, Unk929)
end

function Global.NetworkSetLocalPlayerIsTyping(playerIndex)
	return _in(0x141D24A6, playerIndex)
end

function Global.NetworkSetMatchProgress(Unk930)
	return _in(0x5C8D66EA, Unk930)
end

function Global.NetworkSetPlayerMuted(playerIndex, value)
	return _in(0x0B1562DF, playerIndex, value, _r)
end

function Global.NetworkSetScriptLobbyState(Unk931)
	return _in(0x17767D95, Unk931)
end

function Global.NetworkSetServerName(name)
	return _in(0x580E1C3D, _ts(name), _ri)
end

function Global.NetworkSetSessionInvitable(invitable)
	return _in(0x5FB15E81, invitable)
end

function Global.NetworkSetTalkerFocus(Unk932)
	return _in(0x753714F8, Unk932)
end

function Global.NetworkSetTalkerProximity(Unk933)
	return _in(0x2F542797, Unk933)
end

function Global.NetworkSetTeamOnlyChat(Unk934)
	return _in(0x31492174, Unk934)
end

function Global.NetworkSetTextChatRecipients(Unk935)
	return _in(0x3A2246BB, Unk935)
end

function Global.NetworkShowFriendProfileUi(Unk936)
	return _in(0x696021E6, Unk936)
end

function Global.NetworkShowMetPlayerFeedbackUi(metPlayerIndex)
	return _in(0x2CD73270, metPlayerIndex)
end

function Global.NetworkShowMetPlayerProfileUi(Unk937)
	return _in(0x1B183AFE, Unk937)
end

function Global.NetworkShowPlayerFeedbackUi(payerIndex)
	return _in(0x6FC54C6B, payerIndex)
end

function Global.NetworkShowPlayerProfileUi(playerIndex)
	return _in(0x6F2A5430, playerIndex)
end

function Global.NetworkStartExtendedSearch(Unk938)
	return _in(0x07FD3C35, Unk938)
end

function Global.NetworkStartSession()
	return _in(0x58802CE5)
end

function Global.NetworkStartSessionPending()
	return _in(0x7F853FF4, _r)
end

function Global.NetworkStartSessionSucceeded()
	return _in(0x5873667B, _r)
end

function Global.NetworkStoreGameConfig(Unk939)
	return _in(0x30D373DF, Unk939)
end

function Global.NetworkStoreSinglePlayerGame()
	return _in(0x08181609, _ri)
end

function Global.NetworkStringVerifyPending()
	return _in(0x44AA32A7, _r)
end

function Global.NetworkStringVerifySucceeded()
	return _in(0x3F1D4677, _r)
end

function Global.NetworkVerifyUserString(Unk940)
	return _in(0x59884407, Unk940)
end

function Global.NewMobilePhoneCall()
	return _in(0x720E7EA6)
end

function Global.NewScriptedConversation()
	return _in(0x6C213305)
end

function Global.ObfuscateInt(Unk941, Unk942)
	return _in(0x31A219FA, Unk941, Unk942)
end

function Global.ObfuscateIntArray(Unk943, Unk944)
	return _in(0x3EF15B6A, Unk943, Unk944)
end

function Global.ObfuscateString(str)
	return _in(0x04F12617, _ts(str), _s)
end

function Global.OnFireScream(ped)
	return _in(0x6BE062DF, ped)
end

function Global.OpenCarDoor(vehicle, door)
	return _in(0x1E352CEF, vehicle, door)
end

function Global.OpenDebugFile()
	return _in(0x7A2B266D)
end

function Global.OpenGarage(name)
	return _in(0x5086785F, _ts(name))
end

function Global.OpenSequenceTask(pTaskSequence)
	return _in(0x14A67125, _ii(pTaskSequence) --[[ may be optional ]])
end

function Global.OverrideFreezeFlags(Unk504)
	return _in(0x710E6D16, Unk504)
end

function Global.OverrideNextRestart(x, y, z, heading)
	return _in(0x27636B69, x, y, z, heading)
end

function Global.OverrideNumberOfParkedCars(num)
	return _in(0x7F483739, num)
end

function Global.PanicScream(ped)
	return _in(0x4F8B4507, ped)
end

function Global.PauseGame()
	return _in(0x7FB41425)
end

function Global.PausePlaybackRecordedCar(car)
	return _in(0x24256EFB, car)
end

function Global.PauseScriptedConversation(pause)
	return _in(0x2A491A70, pause)
end

function Global.PedQueueConsiderPedsWithFlagFalse(flagid)
	return _in(0x555213B4, flagid)
end

function Global.PedQueueConsiderPedsWithFlagTrue(flagid)
	return _in(0x489C3A48, flagid)
end

function Global.PedQueueRejectPedsWithFlagFalse(flagid)
	return _in(0x61A812F5, flagid)
end

function Global.PedQueueRejectPedsWithFlagTrue(flagid)
	return _in(0x79E5237B, flagid)
end

function Global.PickupsPassTime(time)
	return _in(0x59DA4975, time)
end

function Global.PlaceObjectRelativeToCar(obj, car, x, y, z)
	return _in(0x21DE7496, obj, car, x, y, z)
end

function Global.PlaneStartsInAir(plane)
	return _in(0x0E1645CD, plane)
end

function Global.PlayAudioEvent(name)
	return _in(0x486F3D93, _ts(name))
end

function Global.PlayAudioEventFromObject(EventName, obj)
	return _in(0x4BB9178A, _ts(EventName), obj)
end

function Global.PlayAudioEventFromPed(name, ped)
	return _in(0x61064783, _ts(name), ped)
end

function Global.PlayAudioEventFromVehicle(name, veh)
	return _in(0x2F4B2A8B, _ts(name), veh)
end

function Global.PlayCarAnim(car, animname0, animname1, Unk50, flag0, flag1)
	return _in(0x03EE5F1C, car, _ts(animname0), _ts(animname1), Unk50, flag0, flag1, _r)
end

function Global.PlayFireSoundFromPosition(sound_id, x, y, z)
	return _in(0x4B6135E8, sound_id, x, y, z)
end

function Global.PlayMovie()
	return _in(0x3CD60F11)
end

function Global.PlayObjectAnim(obj, animname0, animname1, Unk74, flag0, flag1)
	return _in(0x5D3241E4, obj, _ts(animname0), _ts(animname1), Unk74, flag0, flag1, _r)
end

function Global.PlayScriptedConversationFrontend(play)
	return _in(0x001B1E5A, play)
end

function Global.PlaySound(SoundId, SoundName)
	return _in(0x47CA7C53, SoundId, _ts(SoundName))
end

function Global.PlaySoundFromObject(sound_id, name, obj)
	return _in(0x60AE0867, sound_id, _ts(name), obj)
end

function Global.PlaySoundFromPed(SoundId, SoundName, ped)
	return _in(0x56F37A81, SoundId, _ts(SoundName), ped)
end

function Global.PlaySoundFromPosition(sound_id, name, x, y, z)
	return _in(0x65752C65, sound_id, _ts(name), x, y, z)
end

function Global.PlaySoundFromVehicle(SoundId, SoundName, veh)
	return _in(0x763274B7, SoundId, _ts(SoundName), veh)
end

function Global.PlaySoundFrontend(sound, soundName)
	return _in(0x4DAF2C87, sound, _ts(soundName))
end

function Global.PlayStreamFromObject(obj)
	return _in(0x4AA86394, obj)
end

function Global.PlayStreamFromPed(ped)
	return _in(0x0C47057F, ped)
end

function Global.PlayStreamFrontend()
	return _in(0x133C257F)
end

function Global.PlayerHasChar(playerIndex)
	return _in(0x22545844, playerIndex, _r)
end

function Global.PlayerHasFlashingStarsAboutToDrop(playerIndex)
	return _in(0x69804B35, playerIndex, _r)
end

function Global.PlayerHasGreyedOutStars(playerIndex)
	return _in(0x2B670CD0, playerIndex, _r)
end

function Global.PlayerIsInteractingWithGarage()
	return _in(0x2B446480, _r)
end

function Global.PlayerIsNearFirstPigeon(x, y, z)
	return _in(0x6D631CED, x, y, z, _r)
end

function Global.PlayerIsPissedOff(player)
	return _in(0x7FA21A1E, player, _r)
end

function Global.PlayerWantsToJoinNetworkGame(Unk885)
	return _in(0x7D99343C, Unk885, _r)
end

function Global.PlaystatsCheat(stat)
	return _in(0x0F9B3A1C, stat)
end

function Global.PlaystatsFloat(Unk785, Unk786)
	return _in(0x06B735ED, Unk785, Unk786)
end

function Global.PlaystatsInt(Unk787, Unk788)
	return _in(0x41FA2D0C, Unk787, Unk788)
end

function Global.PlaystatsIntFloat(Unk789, Unk790, Unk791)
	return _in(0x511200C7, Unk789, Unk790, Unk791)
end

function Global.PlaystatsIntInt(Unk792, Unk793, Unk794)
	return _in(0x07F35BFE, Unk792, Unk793, Unk794)
end

function Global.PlaystatsMissionCancelled(Unk795)
	return _in(0x60D94FA7, Unk795)
end

function Global.PlaystatsMissionFailed(Unk796)
	return _in(0x50BB02F7, Unk796)
end

function Global.PlaystatsMissionPassed(str0)
	return _in(0x437D3E19, _ts(str0))
end

function Global.PlaystatsMissionStarted(Unk797)
	return _in(0x26747EBE, Unk797)
end

function Global.PointCamAtCam(cam, camnext)
	return _in(0x44717CF9, cam, camnext)
end

function Global.PointCamAtCoord(cam, x, y, z)
	return _in(0x4496175C, cam, x, y, z)
end

function Global.PointCamAtObject(cam, obj)
	return _in(0x5E627D20, cam, obj)
end

function Global.PointCamAtPed(cam, ped)
	return _in(0x495B0B6F, cam, ped)
end

function Global.PointCamAtVehicle(cam, veh)
	return _in(0x69F02BA0, cam, veh)
end

function Global.PointFixedCam(x, y, z, Unk563)
	return _in(0x04FF3F49, x, y, z, Unk563)
end

function Global.PointFixedCamAtObj(obj, cam)
	return _in(0x02326335, obj, cam)
end

function Global.PointFixedCamAtPed(ped, cam)
	return _in(0x3D3B5D94, ped, cam)
end

function Global.PointFixedCamAtPos(x, y, z, cam)
	return _in(0x6D4E2A4A, x, y, z, cam)
end

function Global.PointFixedCamAtVehicle(veh, cam)
	return _in(0x52FF28DF, veh, cam)
end

function Global.PopCarBoot(vehicle)
	return _in(0x3C78449F, vehicle)
end

function Global.PopulateNow()
	return _in(0x7E3A7E2A)
end

function Global.Pow(base, power)
	return _in(0x5ADD1F46, base, power, _rf)
end

function Global.PreloadStream(name)
	return _in(0x39DE515D, _ts(name), _r)
end

function Global.PreloadStreamWithStartOffset(StreamName, StartOffset)
	return _in(0x2B8836A6, _ts(StreamName), StartOffset, _r)
end

function Global.PreviewRingtone(RingtoneId)
	return _in(0x79660015, RingtoneId)
end

function Global.Print(gxtName, timeMS, enable)
	return _in(0x0A491CFF, _ts(gxtName), timeMS, enable)
end

function Global.PrintBig(gxtName, timeMS, enable)
	return _in(0x2C8A5404, _ts(gxtName), timeMS, enable)
end

function Global.PrintBigQ(gxtentry, time, flag)
	return _in(0x2B2E39BB, _ts(gxtentry), time, flag)
end

function Global.PrintHelp(gxtName)
	return _in(0x71076BBA, _ts(gxtName))
end

function Global.PrintHelpForever(gxtName)
	return _in(0x43F7517D, _ts(gxtName))
end

function Global.PrintHelpForeverWithNumber(gxtName, value)
	return _in(0x19836A5B, _ts(gxtName), value)
end

function Global.PrintHelpForeverWithString(gxtName, gxtText)
	return _in(0x36D60616, _ts(gxtName), _ts(gxtText))
end

function Global.PrintHelpForeverWithStringNoSound(gxtName, gxtText)
	return _in(0x55687797, _ts(gxtName), _ts(gxtText))
end

function Global.PrintHelpForeverWithTwoNumbers(gxtentry, Unk658, Unk659)
	return _in(0x795227EE, _ts(gxtentry), Unk658, Unk659)
end

function Global.PrintHelpOverFrontend(gxtentry)
	return _in(0x1C334022, _ts(gxtentry))
end

function Global.PrintHelpWithNumber(gxtName, value)
	return _in(0x4475789E, _ts(gxtName), value)
end

function Global.PrintHelpWithString(gxtName, gxtText)
	return _in(0x521035AA, _ts(gxtName), _ts(gxtText))
end

function Global.PrintHelpWithStringNoSound(gxtName, gxtText)
	return _in(0x15734852, _ts(gxtName), _ts(gxtText))
end

function Global.PrintHelpWithTwoNumbers(gxtentry, Unk660, Unk661)
	return _in(0x076D157A, _ts(gxtentry), Unk660, Unk661)
end

function Global.PrintNow(gxtName, timeMS, enable)
	return _in(0x73B01573, _ts(gxtName), timeMS, enable)
end

function Global.PrintStringInString(gxtName, gxtText, timeMS, enable)
	return _in(0x4DAA221F, _ts(gxtName), _ts(gxtText), timeMS, enable)
end

function Global.PrintStringInStringNow(gxtName, gxtText, timeMS, enable)
	return _in(0x2BB65467, _ts(gxtName), _ts(gxtText), timeMS, enable)
end

function Global.PrintStringWithLiteralString(gxtentry, string, time, flag)
	return _in(0x3F89280B, _ts(gxtentry), _ts(string), time, flag)
end

function Global.PrintStringWithLiteralStringNow(gxtName, text, timeMS, enable)
	return _in(0x0CA539D6, _ts(gxtName), _ts(text), timeMS, enable)
end

function Global.PrintStringWithSubstringGivenHashKeyNow(gxtkey0, gxtkey1, time, style)
	return _in(0x00FD3647, _ts(gxtkey0), gxtkey1, time, style)
end

function Global.PrintStringWithTwoLiteralStrings(gxtentry, string1, string2, time, flag)
	return _in(0x19486759, _ts(gxtentry), _ts(string1), _ts(string2), time, flag)
end

function Global.PrintStringWithTwoLiteralStringsNow(gxtentry, string1, string2, time, flag)
	return _in(0x7DE7708E, _ts(gxtentry), _ts(string1), _ts(string2), time, flag)
end

function Global.PrintWithNumber(gxtName, value, timeMS, enable)
	return _in(0x76A63B4C, _ts(gxtName), value, timeMS, enable)
end

function Global.PrintWithNumberBig(gxtName, value, timeMS, enable)
	return _in(0x49850843, _ts(gxtName), value, timeMS, enable)
end

function Global.PrintWithNumberNow(gxtName, value, timeMS, enable)
	return _in(0x3BDA562E, _ts(gxtName), value, timeMS, enable)
end

function Global.PrintWith_2Numbers(gxtName, value1, value2, timeMS, enable)
	return _in(0x230A740F, _ts(gxtName), value1, value2, timeMS, enable)
end

function Global.PrintWith_2NumbersBig(gxtentry, Unk662, Unk663, time, flag)
	return _in(0x43197215, _ts(gxtentry), Unk662, Unk663, time, flag)
end

function Global.PrintWith_2NumbersNow(gxtName, value1, value2, timeMS, enable)
	return _in(0x5D251D72, _ts(gxtName), value1, value2, timeMS, enable)
end

function Global.PrintWith_3Numbers(gxtentry, Unk664, Unk665, Unk666, time, flag)
	return _in(0x5FE61572, _ts(gxtentry), Unk664, Unk665, Unk666, time, flag)
end

function Global.PrintWith_3NumbersNow(gxtentry, Unk667, Unk668, Unk669, time, flag)
	return _in(0x1A4D0C60, _ts(gxtentry), Unk667, Unk668, Unk669, time, flag)
end

function Global.PrintWith_4Numbers(gxtentry, Unk670, Unk671, Unk672, Unk673, time, flag)
	return _in(0x4D4F65AE, _ts(gxtentry), Unk670, Unk671, Unk672, Unk673, time, flag)
end

function Global.PrintWith_4NumbersNow(gxtentry, Unk674, Unk675, Unk676, Unk677, time, flag)
	return _in(0x5CCD150B, _ts(gxtentry), Unk674, Unk675, Unk676, Unk677, time, flag)
end

function Global.PrintWith_5Numbers(gxtentry, Unk678, Unk679, Unk680, Unk681, Unk682, time, flag)
	return _in(0x2CC356D0, _ts(gxtentry), Unk678, Unk679, Unk680, Unk681, Unk682, time, flag)
end

function Global.PrintWith_5NumbersNow(gxtentry, Unk683, Unk684, Unk685, Unk686, Unk687, time, flag)
	return _in(0x5EC2479B, _ts(gxtentry), Unk683, Unk684, Unk685, Unk686, Unk687, time, flag)
end

function Global.PrintWith_6Numbers(gxtentry, Unk688, Unk689, Unk690, Unk691, Unk692, Unk693, time, flag)
	return _in(0x03A01F39, _ts(gxtentry), Unk688, Unk689, Unk690, Unk691, Unk692, Unk693, time, flag)
end

function Global.PrintWith_6NumbersNow(gxtentry, Unk694, Unk695, Unk696, Unk697, Unk698, Unk699, time, flag)
	return _in(0x156E12CA, _ts(gxtentry), Unk694, Unk695, Unk696, Unk697, Unk698, Unk699, time, flag)
end

function Global.Printfloat(value)
	return _in(0x2F206763, value)
end

function Global.Printint(value)
	return _in(0x20421014, value)
end

function Global.Printnl()
	return _in(0x4013147B)
end

function Global.Printstring(value)
	return _in(0x616F492C, _ts(value))
end

function Global.Printvector(x, y, z)
	return _in(0x61965EB3, x, y, z)
end

function Global.PrioritizeStreamingRequest()
	return _in(0x1DD926BA)
end

function Global.ProcessMissionDeletionList()
	return _in(0x33565078)
end

--- Scope entry for profiler.
-- @param scopeName Scope name.
function Global.ProfilerEnterScope(scopeName)
	return _in(0xc795a4a9, _ts(scopeName))
end

--- Scope exit for profiler.
function Global.ProfilerExitScope()
	return _in(0xb39ca35c)
end

--- Returns true if the profiler is active.
-- @return True or false.
function Global.ProfilerIsRecording()
	return _in(0xf8b7d7bb, _r)
end

function Global.ProstituteCamActivate(activate)
	return _in(0x346D76E8, activate)
end

function Global.ReadKillFrenzyStatus()
	return _in(0x3F9F0CF5, _ri)
end

function Global.RegisterBestPosition(Unk505, position)
	return _in(0x0C051FE2, Unk505, position)
end

function Global.RegisterClientBroadcastVariables(Unk945, Unk946, Unk947)
	return _in(0x499B6DB6, Unk945, Unk946, Unk947)
end

--- Registered commands can be executed by entering them in the client console (this works for client side and server side registered commands). Or by entering them in the server console/through an RCON client (only works for server side registered commands). Or if you use a supported chat resource, like the default one provided in the cfx-server-data repository, then you can enter the command in chat by prefixing it with a `/`.
-- Commands registered using this function can also be executed by resources, using the [`ExecuteCommand` native](#\_0x561C060B).
-- The restricted bool is not used on the client side. Permissions can only be checked on the server side, so if you want to limit your command with an ace permission automatically, make it a server command (by registering it in a server script).
-- **Example result**:
-- ![](https://i.imgur.com/TaCnG09.png)
-- @param commandName The command you want to register.
-- @param handler A handler function that gets called whenever the command is executed.
-- @param restricted If this is a server command and you set this to true, then players will need the command.yourCommandName ace permission to execute this command.
function Global.RegisterCommand(commandName, handler, restricted)
	return _in(0x5fa79b0f, _ts(commandName), _mfr(handler), restricted)
end

function Global.RegisterFloatStat(stat, val)
	return _in(0x347E05F3, stat, val)
end

function Global.RegisterHatedTargetsAroundPed(ped, radius)
	return _in(0x70A62140, ped, radius)
end

function Global.RegisterHatedTargetsInArea(ped, x, y, z, radius)
	return _in(0x619E7657, ped, x, y, z, radius)
end

function Global.RegisterHostBroadcastVariables(Unk948, ukn0, ukn1)
	return _in(0x18DB4CAF, Unk948, ukn0, ukn1)
end

function Global.RegisterIntStat(stat, val)
	return _in(0x609D07DB, stat, val)
end

function Global.RegisterKillInMultiplayerGame(playerIndex, id, ukn)
	return _in(0x7D6D0A6C, playerIndex, id, ukn)
end

function Global.RegisterMissionPassed(str)
	return _in(0x5FBE5F52, _ts(str))
end

function Global.RegisterMultiplayerGameWin(playerIndex, Unk949)
	return _in(0x43E41D81, playerIndex, Unk949)
end

function Global.RegisterNetworkBestGameScores(playerIndex, Unk950, Unk951)
	return _in(0x4ADB10A4, playerIndex, Unk950, Unk951)
end

--- REGISTER_NUI_CALLBACK
function Global.RegisterNuiCallback(callbackType, callback)
	return _in(0xc59b980c, _ts(callbackType), _mfr(callback))
end

--- REGISTER_NUI_CALLBACK_TYPE
function Global.RegisterNuiCallbackType(callbackType)
	return _in(0xcd03cda9, _ts(callbackType))
end

function Global.RegisterOddjobMissionPassed()
	return _in(0x1B0963AF)
end

function Global.RegisterPlayerRespawnCoords(playerIndex, x, y, z)
	return _in(0x001954A2, playerIndex, x, y, z)
end

--- REGISTER_RAW_NUI_CALLBACK
function Global.RegisterRawNuiCallback(callbackType, callback)
	return _in(0xa8ae9c2f, _ts(callbackType), _mfr(callback))
end

--- An internal function which allows the current resource's HLL script runtimes to receive state for the specified event.
-- @param eventName An event name, or "\*" to disable HLL event filtering for this resource.
function Global.RegisterResourceAsEventHandler(eventName)
	return _in(0xd233a168, _ts(eventName))
end

function Global.RegisterSaveHouse(x, y, z, unkf, name, unk0)
	return _in(0x7DF45001, x, y, z, unkf, _ts(name), unk0, _ri)
end

function Global.RegisterScriptWithAudio(reg)
	return _in(0x5B4452F3, reg)
end

function Global.RegisterStringForFrontendStat(stat, str)
	return _in(0x3C295451, stat, _ts(str))
end

function Global.RegisterTarget(ped, target)
	return _in(0x5F456B53, ped, target)
end

function Global.RegisterTrackNumber(number)
	return _in(0x4D7E12A7, number)
end

function Global.RegisterWorldPointScriptBrain(ScriptName, radius)
	return _in(0x32563E09, _ts(ScriptName), radius)
end

function Global.ReleaseMovie()
	return _in(0x55C84CB7)
end

function Global.ReleasePathNodes()
	return _in(0x2CE231DC)
end

function Global.ReleaseScriptControlledMicrophone()
	return _in(0x2F907FF2)
end

function Global.ReleaseSoundId(sound)
	return _in(0x211D390A, sound)
end

function Global.ReleaseTexture(texture)
	return _in(0x58524B04, texture)
end

function Global.ReleaseTimeOfDay()
	return _in(0x2AD2206E)
end

function Global.ReleaseWeather()
	return _in(0x3A115D9D)
end

function Global.ReloadWebPage(htmlviewport)
	return _in(0x565B0C3E, htmlviewport)
end

function Global.RemoveAdditionalPopulationModel(model)
	return _in(0x602112FC, model)
end

function Global.RemoveAllCharWeapons(ped)
	return _in(0x6BA520F0, ped)
end

function Global.RemoveAllInactiveGroupsFromCleanupList()
	return _in(0x622E3D34)
end

function Global.RemoveAllPickupsOfType(type)
	return _in(0x03622640, type)
end

function Global.RemoveAnims(animName)
	return _in(0x55E00E7E, _ts(animName))
end

function Global.RemoveBlip(blip)
	return _in(0x7BBF3625, blip)
end

function Global.RemoveBlipAndClearIndex(blip)
	return _in(0x66385B6C, blip)
end

function Global.RemoveCarRecording(CarRec)
	return _in(0x484964FE, CarRec)
end

function Global.RemoveCarWindow(car, windnum)
	return _in(0x038A7526, car, windnum)
end

function Global.RemoveCarsFromGeneratorsInArea(x0, y0, z0, x1, y1, z1)
	return _in(0x2BEE5F97, x0, y0, z0, x1, y1, z1)
end

function Global.RemoveCharDefensiveArea(ped)
	return _in(0x2BC44D7D, ped)
end

function Global.RemoveCharElegantly(ped)
	return _in(0x5731084A, ped)
end

function Global.RemoveCharFromCarMaintainPosition(ped, car)
	return _in(0x3DA4533F, ped, car)
end

function Global.RemoveCharFromGroup(ped)
	return _in(0x649316B7, ped)
end

function Global.RemoveCloseMicPed(ped)
	return _in(0x72B73FBA, ped)
end

function Global.RemoveCoverPoint(coverPoint)
	return _in(0x4371502A, coverPoint)
end

function Global.RemoveDecisionMaker(dm)
	return _in(0x47147EC5, dm)
end

function Global.RemoveFakeNetworkNameFromPed(ped)
	return _in(0x37A86FBD, ped)
end

function Global.RemoveGroup(group)
	return _in(0x250C2D39, group)
end

function Global.RemoveIpl(iplName)
	return _in(0x787F38B5, _ts(iplName))
end

function Global.RemoveIplDiscreetly(iplname)
	return _in(0x658F21AF, _ts(iplname))
end

function Global.RemoveNavmeshRequiredRegion(Unk599, Unk600)
	return _in(0x772660D7, Unk599, Unk600, _r)
end

function Global.RemovePedHelmet(ped, removed)
	return _in(0x15F033A6, ped, removed)
end

function Global.RemovePickup(pickup)
	return _in(0x2119007F, pickup)
end

function Global.RemovePlayerHelmet(playerIndex, remove)
	return _in(0x5CF1303D, playerIndex, remove)
end

function Global.RemoveProjtexFromObject(obj)
	return _in(0x7330132C, obj)
end

function Global.RemoveProjtexInRange(x, y, z, radius)
	return _in(0x170F0D58, x, y, z, radius)
end

function Global.RemovePtfx(ptfx)
	return _in(0x4AF643D5, ptfx)
end

function Global.RemovePtfxFromObject(obj)
	return _in(0x4D7775BA, obj)
end

function Global.RemovePtfxFromPed(ped)
	return _in(0x2FC9782A, ped)
end

function Global.RemovePtfxFromVehicle(veh)
	return _in(0x3FB14EC5, veh)
end

function Global.RemoveScriptFire(fire)
	return _in(0x0E633C13, fire)
end

function Global.RemoveScriptMic()
	return _in(0x4307784F)
end

--- **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
-- Removes a handler for changes to a state bag.
-- @param cookie The cookie.
function Global.RemoveStateBagChangeHandler(cookie)
	return _in(0xd36be661, cookie)
end

function Global.RemoveStuckCarCheck(vehicle)
	return _in(0x213308DB, vehicle)
end

function Global.RemoveTemporaryRadarBlipsForPickups()
	return _in(0x6F797AF3)
end

--- REMOVE_TIMECYCLE_MODIFIER
-- @param modifierName The timecycle modifier name.
function Global.RemoveTimecycleModifier(modifierName)
	return _in(0x36df8612, _ts(modifierName))
end

--- REMOVE_TIMECYCLE_MODIFIER_VAR
-- @param modifierName The name of timecycle modifier.
-- @param varName The name of timecycle variable.
function Global.RemoveTimecycleModifierVar(modifierName, varName)
	return _in(0x5a5e0d05, _ts(modifierName), _ts(varName))
end

function Global.RemoveTxd(txd)
	return _in(0x44C27071, txd)
end

function Global.RemoveUpsidedownCarCheck(vehicle)
	return _in(0x6A1244E9, vehicle)
end

function Global.RemoveWeaponFromChar(ped, weapon)
	return _in(0x2485231E, ped, weapon)
end

function Global.RenderRaceTrack(render)
	return _in(0x5062055B, render)
end

function Global.RenderWeaponPickupsBigger(value)
	return _in(0x003B6B13, value)
end

function Global.ReportCrime(x, y, z, name)
	return _in(0x076B4C7C, x, y, z, _ts(name))
end

function Global.ReportDispatch(id, x, y, z)
	return _in(0x388D6B44, id, x, y, z)
end

function Global.ReportPoliceSpottingSuspect(veh)
	return _in(0x07D97F81, veh)
end

function Global.ReportSuspectArrested()
	return _in(0x008932D3)
end

function Global.ReportSuspectDown()
	return _in(0x6A660231)
end

function Global.ReportTaggedRadioTrack(TrackTextId)
	return _in(0x0ED8621F, TrackTextId)
end

function Global.RequestAdditionalText(textName, textIndex)
	return _in(0x6A9F01AF, _ts(textName), textIndex)
end

function Global.RequestAllSlodsInWorld()
	return _in(0x39264921)
end

function Global.RequestAmbientAudioBank(name)
	return _in(0x754E1999, _ts(name), _r)
end

function Global.RequestAnims(animName)
	return _in(0x65F874DE, _ts(animName))
end

function Global.RequestCarRecording(CarRecId)
	return _in(0x041D045B, CarRecId)
end

function Global.RequestCollisionAtPosn(x, y, z)
	return _in(0x12ED0BC9, x, y, z)
end

function Global.RequestCollisionForModel(model)
	return _in(0x66E93537, model)
end

function Global.RequestControlOfNetworkId(netid)
	return _in(0x29926B20, netid, _r)
end

function Global.RequestInteriorModels(model, interiorName)
	return _in(0x302E113D, model, _ts(interiorName))
end

function Global.RequestIpl(iplName)
	return _in(0x59FD4E83, _ts(iplName))
end

function Global.RequestMissionAudioBank(name)
	return _in(0x335E603B, _ts(name), _r)
end

function Global.RequestModel(model)
	return _in(0x502B5185, model)
end

--- Requests a resource file set with the specified name to be downloaded and mounted on top of the current resource.
-- Resource file sets are specified in `fxmanifest.lua` with the following syntax:
-- ```lua
-- file_set 'addon_ui' {
-- 'ui/addon/index.html',
-- 'ui/addon/**.js',
-- }
-- ```
-- This command will trigger a script error if the request failed.
-- @param setName The name of the file set as specified in `fxmanifest.lua`.
-- @return `TRUE` if the set is mounted, `FALSE` if the request is still pending.
function Global.RequestResourceFileSet(setName)
	return _in(0xe7490533, _ts(setName), _r)
end

function Global.RequestScript(scriptName)
	return _in(0x6FFE0DFD, _ts(scriptName))
end

function Global.RequestStreamedTxd(txdName, unknown)
	return _in(0x7C7B1237, _ts(txdName), unknown)
end

function Global.ReserveNetworkMissionObjectsForHost(count)
	return _in(0x2F7508E7, count)
end

function Global.ReserveNetworkMissionPedsForHost(Unk952)
	return _in(0x557C7C4A, Unk952)
end

function Global.ReserveNetworkMissionVehicles(Unk953)
	return _in(0x15652DC1, Unk953)
end

function Global.ReserveNetworkMissionVehiclesForHost(Unk954)
	return _in(0x3E9C7CD3, Unk954)
end

function Global.ResetAchievementsAward()
	return _in(0x11E22D1B)
end

function Global.ResetCamInterpCustomSpeedGraph()
	return _in(0x779F3EC6)
end

function Global.ResetCamSplineCustomSpeedGraph()
	return _in(0x13135C95)
end

function Global.ResetCarWheels(car, reset)
	return _in(0x78CE659D, car, reset)
end

function Global.ResetLocalPlayerWeaponStat(wtype, wid)
	return _in(0x6C1344C6, wtype, wid)
end

function Global.ResetNoLawVehiclesDestroyedByLocalPlayer()
	return _in(0x63615A6D)
end

function Global.ResetNumOfModelsKilledByPlayer(model)
	return _in(0x0FB17679, model)
end

function Global.ResetStuckTimer(car, timer_num)
	return _in(0x73260714, car, timer_num)
end

function Global.ResetVisiblePedDamage(ped)
	return _in(0x2A7247EF, ped)
end

function Global.RestartScriptedConversation()
	return _in(0x43A67F1B)
end

function Global.RestoreScriptArrayFromScratchpad(Unk955, Unk956, Unk957, Unk958)
	return _in(0x522B182B, Unk955, Unk956, Unk957, Unk958)
end

function Global.RestoreScriptValuesForNetworkGame(Unk1056)
	return _in(0x37CD55AA, Unk1056, _ri)
end

function Global.ResurrectNetworkPlayer(playerIndex, x, y, z, ukn0)
	return _in(0x17901684, playerIndex, x, y, z, ukn0)
end

function Global.RetuneRadioDown()
	return _in(0x0E843CEA)
end

function Global.RetuneRadioToStationIndex(radioStation)
	return _in(0x48ED6432, radioStation)
end

function Global.RetuneRadioToStationName(name)
	return _in(0x58BA4401, _ts(name))
end

function Global.RetuneRadioUp()
	return _in(0x6B1C6027)
end

function Global.ReviveInjuredPed(ped)
	return _in(0x54EB576A, ped)
end

function Global.RotateObject(obj, x, y, flag)
	return _in(0x12B524B7, obj, x, y, flag, _r)
end

function Global.Round(Unk1085)
	return _in(0x7CA5476A, Unk1085, _ri)
end

function Global.SaveFloatToDebugFile(Unk1117)
	return _in(0x66317064, Unk1117)
end

function Global.SaveIntToDebugFile(Unk1118)
	return _in(0x65EF0CB8, Unk1118)
end

function Global.SaveNewlineToDebugFile()
	return _in(0x69D90F11)
end

function Global.SaveScriptArrayInScratchpad(Unk959, Unk960, Unk961, Unk962)
	return _in(0x331F7E6F, Unk959, Unk960, Unk961, Unk962)
end

function Global.SaveSettings()
	return _in(0x584C3830)
end

function Global.SaveStringToDebugFile(Unk1119)
	return _in(0x27FA32D4, Unk1119)
end

function Global.SayAmbientSpeech(ped, phraseName, flag0, flag1, style)
	return _in(0x5CF149C8, ped, _ts(phraseName), flag0, flag1, style)
end

function Global.SayAmbientSpeechWithVoice(ped, SpeechName, VoiceName, flag0, flag1, style)
	return _in(0x2FA55669, ped, _ts(SpeechName), _ts(VoiceName), flag0, flag1, style)
end

function Global.ScriptAssert(text)
	return _in(0x10C75BDA, _ts(text))
end

function Global.ScriptIsMovingMobilePhoneOffscreen(set)
	return _in(0x04804149, set)
end

function Global.ScriptIsUsingMobilePhone(set)
	return _in(0x1B0741BA, set)
end

function Global.SearchCriteriaConsiderPedsWithFlagFalse(flagid)
	return _in(0x2A860E89, flagid)
end

function Global.SearchCriteriaConsiderPedsWithFlagTrue(flagId)
	return _in(0x20EC5B84, flagId)
end

function Global.SearchCriteriaRejectPedsWithFlagFalse(flagid)
	return _in(0x0A0444B3, flagid)
end

function Global.SearchCriteriaRejectPedsWithFlagTrue(flagId)
	return _in(0x27211B1A, flagId)
end

function Global.SecuromSpotCheck1()
	return _in(0x63576E53, _r)
end

function Global.SecuromSpotCheck2()
	return _in(0x1F40505C, _r)
end

function Global.SecuromSpotCheck3()
	return _in(0x5D1C0A6A, _r)
end

function Global.SecuromSpotCheck4()
	return _in(0x764236CE, _r)
end

function Global.SelectWeaponsForVehicle(veh, weapon)
	return _in(0x7AD71A55, veh, weapon)
end

function Global.SendClientBroadcastVariablesNow()
	return _in(0x36B40989)
end

--- Sends a message to the specific DUI root page. This is similar to SEND_NUI_MESSAGE.
-- @param duiObject The DUI browser handle.
-- @param jsonString The message, encoded as JSON.
function Global.SendDuiMessage(duiObject, jsonString)
	return _in(0xcd380da9, duiObject, _ts(jsonString))
end

--- Injects a 'mouse down' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
-- @param duiObject The DUI browser handle.
-- @param button Either `'left'`, `'middle'` or `'right'`.
function Global.SendDuiMouseDown(duiObject, button)
	return _in(0x5d01f191, duiObject, _ts(button))
end

--- Injects a 'mouse move' event for a DUI object. Coordinates are in browser space.
-- @param duiObject The DUI browser handle.
-- @param x The mouse X position.
-- @param y The mouse Y position.
function Global.SendDuiMouseMove(duiObject, x, y)
	return _in(0xd9d7a0aa, duiObject, x, y)
end

--- Injects a 'mouse up' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
-- @param duiObject The DUI browser handle.
-- @param button Either `'left'`, `'middle'` or `'right'`.
function Global.SendDuiMouseUp(duiObject, button)
	return _in(0x1d735b93, duiObject, _ts(button))
end

--- Injects a 'mouse wheel' event for a DUI object.
-- @param duiObject The DUI browser handle.
-- @param deltaY The wheel Y delta.
-- @param deltaX The wheel X delta.
function Global.SendDuiMouseWheel(duiObject, deltaY, deltaX)
	return _in(0x2d62133a, duiObject, deltaY, deltaX)
end

--- Sends a message to the `loadingScreen` NUI frame, which contains the HTML page referenced in `loadscreen` resources.
-- @param jsonString The JSON-encoded message.
-- @return A success value.
function Global.SendLoadingScreenMessage(jsonString)
	return _in(0x8bbe6cc0, _ts(jsonString), _r)
end

function Global.SendNmMessage(ped)
	return _in(0x75AC2519, ped)
end

--- SEND_NUI_MESSAGE
function Global.SendNuiMessage(jsonString)
	return _in(0x78608acb, _ts(jsonString), _r)
end

function Global.SetActivateObjectPhysicsAsSoonAsItIsUnfrozen(obj, set)
	return _in(0x378531F8, obj, set)
end

function Global.SetAdvancedBoolInDecisionMaker(dm, Unk844, Unk845, Unk846, Unk847)
	return _in(0x709D2036, dm, Unk844, Unk845, Unk846, Unk847)
end

function Global.SetAllCarGeneratorsBackToActive()
	return _in(0x399E1A43)
end

function Global.SetAllCarsCanBeDamaged(set)
	return _in(0x3EA5269D, set)
end

function Global.SetAllPickupsOfTypeCollectableByCar(pickuptype, set)
	return _in(0x54B054D0, pickuptype, set)
end

function Global.SetAllRandomPedsFlee(player, set)
	return _in(0x110957EF, player, set)
end

function Global.SetAllowDummyConversions(set)
	return _in(0x08AB2787, set)
end

function Global.SetAlwaysDisplayWeaponPickupMessage(set)
	return _in(0x3F0A2A72, set)
end

function Global.SetAmbientPlanesSpeedMultiplier(multiplier)
	return _in(0x4B470947, multiplier)
end

function Global.SetAmbientVoiceName(ped, name)
	return _in(0x426A4ED8, ped, _ts(name))
end

function Global.SetAmmoInClip(ped, weapon, ammo)
	return _in(0x6E1A0A84, ped, weapon, ammo, _ri)
end

function Global.SetAnimGroupForChar(ped, grname)
	return _in(0x4CD43E46, ped, _ts(grname))
end

function Global.SetArmourPickupNetworkRegenTime(timeMS)
	return _in(0x53CC1D3C, timeMS)
end

--- Sets a floating-point parameter for a submix effect.
-- @param submixId The submix.
-- @param effectSlot The effect slot for the submix. It is expected that the effect is set in this slot beforehand.
-- @param paramIndex The parameter index for the effect.
-- @param paramValue The parameter value to set.
function Global.SetAudioSubmixEffectParamFloat(submixId, effectSlot, paramIndex, paramValue)
	return _in(0x9a209b3c, submixId, effectSlot, paramIndex, paramValue)
end

--- Sets an integer parameter for a submix effect.
-- @param submixId The submix.
-- @param effectSlot The effect slot for the submix. It is expected that the effect is set in this slot beforehand.
-- @param paramIndex The parameter index for the effect.
-- @param paramValue The parameter value to set.
function Global.SetAudioSubmixEffectParamInt(submixId, effectSlot, paramIndex, paramValue)
	return _in(0x77fae2b8, submixId, effectSlot, paramIndex, paramValue)
end

--- Assigns a RadioFX effect to a submix effect slot.
-- The parameter values for this effect are as follows (backticks are used to represent hashes):
-- | Index | Type | Description |
-- |-|-|-|
-- | \`enabled\` | int | Enables or disables RadioFX on this DSP. |
-- | \`default\` | int | Sets default parameters for the RadioFX DSP and enables it. |
-- | \`freq_low\` | float |  |
-- | \`freq_hi\` | float |  |
-- | \`fudge\` | float |  |
-- | \`rm_mod_freq\` | float |  |
-- | \`rm_mix\` | float |  |
-- | \`o_freq_lo\` | float |  |
-- | \`o_freq_hi\` | float |  |
-- @param submixId The submix.
-- @param effectSlot The effect slot for the submix.
function Global.SetAudioSubmixEffectRadioFx(submixId, effectSlot)
	return _in(0xaaa94d53, submixId, effectSlot)
end

--- Sets the volumes for the sound channels in a submix effect.
-- Values can be between 0.0 and 1.0.
-- Channel 5 and channel 6 are not used in voice chat but are believed to be center and LFE channels.
-- Output slot starts at 0 for the first ADD_AUDIO_SUBMIX_OUTPUT call then incremented by 1 on each subsequent call.
-- @param submixId The submix.
-- @param outputSlot The output slot index.
-- @param frontLeftVolume The volume for the front left channel.
-- @param frontRightVolume The volume for the front right channel.
-- @param rearLeftVolume The volume for the rear left channel.
-- @param rearRightVolume The volume for the rear right channel.
-- @param channel5Volume The volume for channel 5.
-- @param channel6Volume The volume for channel 6.
function Global.SetAudioSubmixOutputVolumes(submixId, outputSlot, frontLeftVolume, frontRightVolume, rearLeftVolume, rearRightVolume, channel5Volume, channel6Volume)
	return _in(0x825dc0d1, submixId, outputSlot, frontLeftVolume, frontRightVolume, rearLeftVolume, rearRightVolume, channel5Volume, channel6Volume)
end

function Global.SetBikeRiderWillPutFootDownWhenStopped(bike, set)
	return _in(0x6E77153D, bike, set)
end

function Global.SetBit(bit)
	return _in(0x39551B76, _i, bit)
end

function Global.SetBitsInRange(rangebegin, rangeend, val)
	return _in(0x14DD5F87, _i, rangebegin, rangeend, val)
end

function Global.SetBlipAsFriendly(blip, value)
	return _in(0x0580462A, blip, value)
end

function Global.SetBlipAsShortRange(blip, value)
	return _in(0x2ED90276, blip, value)
end

function Global.SetBlipCoordinates(blip, x, y, z)
	return _in(0x3D91564E, blip, x, y, z)
end

function Global.SetBlipMarkerLongDistance(blip, set)
	return _in(0x150A6532, blip, set)
end

function Global.SetBlipThrottleRandomly(veh, set)
	return _in(0x12A619E9, veh, set)
end

function Global.SetBlockCameraToggle(set)
	return _in(0x45C63B22, set)
end

function Global.SetBlockingOfNonTemporaryEvents(ped, value)
	return _in(0x76247429, ped, value)
end

function Global.SetBriansMood(mood)
	return _in(0x34F128F9, mood)
end

function Global.SetCamActive(camera, value)
	return _in(0x43E42686, camera, value)
end

function Global.SetCamAttachOffset(cam, x, y, z)
	return _in(0x72E93E13, cam, x, y, z)
end

function Global.SetCamAttachOffsetIsRelative(cam, set)
	return _in(0x44984033, cam, set)
end

function Global.SetCamBehindPed(ped)
	return _in(0x48740598, ped)
end

function Global.SetCamComponentShake(cam, componentid, Unk564, time, x, y, z)
	return _in(0x52CE5D9F, cam, componentid, Unk564, time, x, y, z)
end

function Global.SetCamDofFocuspoint(cam, x, y, z, Unk565)
	return _in(0x39DC5AEB, cam, x, y, z, Unk565)
end

function Global.SetCamFarClip(cam, clip)
	return _in(0x181F6B00, cam, clip)
end

function Global.SetCamFarDof(cam, fardof)
	return _in(0x52F543A3, cam, fardof)
end

function Global.SetCamFov(camera, fov)
	return _in(0x55D470C2, camera, fov)
end

function Global.SetCamInFrontOfPed(ped)
	return _in(0x423661A7, ped)
end

function Global.SetCamInheritRollObject(cam, obj)
	return _in(0x208B4A6A, cam, obj)
end

function Global.SetCamInheritRollPed(cam, ped)
	return _in(0x09A34209, cam, ped)
end

function Global.SetCamInheritRollVehicle(cam, veh)
	return _in(0x51AD2993, cam, veh)
end

function Global.SetCamInterpCustomSpeedGraph(speed)
	return _in(0x03102FEE, speed)
end

function Global.SetCamInterpDetailRotStyleAngles(Unk566)
	return _in(0x5F7307F4, Unk566)
end

function Global.SetCamInterpDetailRotStyleQuats(Unk567)
	return _in(0x439C47D5, Unk567)
end

function Global.SetCamInterpStyleCore(cam0, cam1, cam2, time, flag)
	return _in(0x72297CDC, cam0, cam1, cam2, time, flag)
end

function Global.SetCamInterpStyleDetailed(cam, Unk568, Unk569, Unk570, Unk571)
	return _in(0x683927F5, cam, Unk568, Unk569, Unk570, Unk571)
end

function Global.SetCamMotionBlur(cam, blur)
	return _in(0x693D7B21, cam, blur)
end

function Global.SetCamName(cam, camname)
	return _in(0x2AE87B02, cam, _ts(camname))
end

function Global.SetCamNearClip(cam, clip)
	return _in(0x298827FC, cam, clip)
end

function Global.SetCamNearDof(cam, dof)
	return _in(0x60AD2FE0, cam, dof)
end

function Global.SetCamPointDampingParams(cam, x, y, z)
	return _in(0x57AC39F5, cam, x, y, z)
end

function Global.SetCamPointOffset(cam, x, y, z)
	return _in(0x1C887939, cam, x, y, z)
end

function Global.SetCamPointOffsetIsRelative(cam, set)
	return _in(0x12F20552, cam, set)
end

function Global.SetCamPos(camera, pX, pY, pZ)
	return _in(0x152F6314, camera, pX, pY, pZ)
end

function Global.SetCamPropagate(camera, value)
	return _in(0x44414E60, camera, value)
end

function Global.SetCamRoll(cam, roll)
	return _in(0x4C5142C0, cam, roll)
end

function Global.SetCamRot(camera, angleX, angleY, angleZ)
	return _in(0x746744D1, camera, angleX, angleY, angleZ)
end

function Global.SetCamShake(cam, Unk572, shakeval)
	return _in(0x686B6395, cam, Unk572, shakeval)
end

function Global.SetCamSplineCustomSpeedGraph(speed)
	return _in(0x391B5A76, speed)
end

function Global.SetCamSplineDuration(cam, duration)
	return _in(0x4ADB6F79, cam, duration)
end

function Global.SetCamSplineProgress(cam, progress)
	return _in(0x5A712F63, cam, progress)
end

function Global.SetCamSplineSpeedConstant(cam, set)
	return _in(0x2CF72EB7, cam, set)
end

function Global.SetCamSplineSpeedGraph(cam, Unk573)
	return _in(0x47AC289C, cam, Unk573)
end

function Global.SetCamTargetPed(camera, ped)
	return _in(0x50E21E4C, camera, ped)
end

function Global.SetCameraAutoScriptActivation(set)
	return _in(0x31D53B3D, set)
end

function Global.SetCameraBeginCamCommandsRequired(set)
	return _in(0x03B12ED0, set)
end

function Global.SetCameraControlsDisabledWithPlayerControls(value)
	return _in(0x3C714F12, value)
end

function Global.SetCameraState(cam, state)
	return _in(0x4ED45146, cam, state)
end

function Global.SetCanBurstCarTyres(car, set)
	return _in(0x24DE2039, car, set)
end

function Global.SetCanResprayCar(car, can)
	return _in(0x76A2739D, car, can)
end

function Global.SetCanTargetCharWithoutLos(ped, set)
	return _in(0x3FA651A7, ped, set)
end

function Global.SetCarAllowedToDrown(car, allowed)
	return _in(0x31026CE0, car, allowed)
end

function Global.SetCarAlwaysCreateSkids(car, set)
	return _in(0x0B9F0356, car, set)
end

function Global.SetCarAnimCurrentTime(car, animname0, animname1, time)
	return _in(0x04485574, car, _ts(animname0), _ts(animname1), time)
end

function Global.SetCarAnimSpeed(car, animname0, animname1, speed)
	return _in(0x74CD7D1F, car, _ts(animname0), _ts(animname1), speed)
end

function Global.SetCarAsMissionCar(car)
	return _in(0x210A33B2, car)
end

function Global.SetCarCanBeDamaged(vehicle, value)
	return _in(0x394E733E, vehicle, value)
end

function Global.SetCarCanBeVisiblyDamaged(vehicle, value)
	return _in(0x4727446B, vehicle, value)
end

function Global.SetCarCollision(car, set)
	return _in(0x6A9033B3, car, set)
end

function Global.SetCarColourCombination(car, combination)
	return _in(0x0B823C8D, car, combination)
end

function Global.SetCarCoordinates(vehicle, pX, pY, pZ)
	return _in(0x567B6C56, vehicle, pX, pY, pZ)
end

function Global.SetCarCoordinatesNoOffset(car, x, y, z)
	return _in(0x12D64378, car, x, y, z)
end

function Global.SetCarDensityMultiplier(density)
	return _in(0x0AA73A12, density)
end

function Global.SetCarDistanceAheadMultiplier(car, multiplier)
	return _in(0x071B6690, car, multiplier)
end

function Global.SetCarDoorLatched(car, door, flag0, flag1)
	return _in(0x0EAD6CFB, car, door, flag0, flag1)
end

function Global.SetCarEngineOn(car, flag0, flag1)
	return _in(0x0CAA42D0, car, flag0, flag1)
end

function Global.SetCarExistsOnAllMachines(vehicle, exists)
	return _in(0x7BAC73DF, vehicle, exists)
end

function Global.SetCarForwardSpeed(vehicle, speed)
	return _in(0x65BB0060, vehicle, speed)
end

function Global.SetCarFovFadeMult(multiplier)
	return _in(0x5EEE6ADB, multiplier)
end

function Global.SetCarFovMax(maxfov)
	return _in(0x3FBF13BD, maxfov)
end

function Global.SetCarFovMin(minfov)
	return _in(0x068F59E3, minfov)
end

function Global.SetCarFovRate(rate)
	return _in(0x536B4F4A, rate)
end

function Global.SetCarFovStartSpeed(speed)
	return _in(0x3CF41D47, speed)
end

function Global.SetCarFovStartSpeedBoat(speed)
	return _in(0x40FC5520, speed)
end

function Global.SetCarGeneratorsActiveInArea(x0, y0, z0, x1, y1, z1, set)
	return _in(0x69CE154F, x0, y0, z0, x1, y1, z1, set)
end

function Global.SetCarHeading(vehicle, dir)
	return _in(0x75E40528, vehicle, dir)
end

function Global.SetCarHealth(vehicle, Value)
	return _in(0x49B6525C, vehicle, Value)
end

function Global.SetCarInCutscene(car, set)
	return _in(0x32593711, car, set)
end

function Global.SetCarLaneShift(car, shift)
	return _in(0x10FD2442, car, shift)
end

function Global.SetCarLightMultiplier(car, multiplier)
	return _in(0x74824ADA, car, multiplier)
end

function Global.SetCarLivery(car, livery)
	return _in(0x2E9E149D, car, livery)
end

function Global.SetCarMotionBlurEffectBoat(blur)
	return _in(0x7D106167, blur)
end

function Global.SetCarNotDamagedByRelationshipGroup(car, set, group)
	return _in(0x3AAD447A, car, set, group)
end

function Global.SetCarOnGroundProperly(vehicle)
	return _in(0x0E717E98, vehicle, _ri)
end

function Global.SetCarOnlyDamagedByPlayer(car, set)
	return _in(0x2880077C, car, set)
end

function Global.SetCarOnlyDamagedByRelationshipGroup(car, set, group)
	return _in(0x783F287A, car, set, group)
end

function Global.SetCarProofs(vehicle, bulletProof, fireProof, explosionProof, collisionProof, meleeProof)
	return _in(0x137C35BA, vehicle, bulletProof, fireProof, explosionProof, collisionProof, meleeProof)
end

function Global.SetCarRandomRouteSeed(car, seed)
	return _in(0x19D302AE, car, seed)
end

function Global.SetCarStayInFastLane(car, set)
	return _in(0x5EAD47E8, car, set)
end

function Global.SetCarStayInSlowLane(car, set)
	return _in(0x1B8B3973, car, set)
end

function Global.SetCarStrong(vehicle, strong)
	return _in(0x61F40670, vehicle, strong)
end

function Global.SetCarTraction(car, traction)
	return _in(0x278F2D0A, car, traction)
end

function Global.SetCarVisible(vehicle, value)
	return _in(0x02D13D06, vehicle, value)
end

function Global.SetCarWatertight(car, set)
	return _in(0x31017E6E, car, set)
end

function Global.SetCellphoneRanked(toggle)
	return _in(0x47E03E87, toggle)
end

function Global.SetCharAccuracy(ped, value)
	return _in(0x1958471A, ped, value)
end

function Global.SetCharAllAnimsSpeed(ped, speed)
	return _in(0x5BDB7E2C, ped, speed)
end

function Global.SetCharAllowedToDuck(ped, set)
	return _in(0x6E2E55B5, ped, set)
end

function Global.SetCharAllowedToRunOnBoats(ped, set)
	return _in(0x662235A5, ped, set)
end

function Global.SetCharAmmo(ped, weapon, ammo)
	return _in(0x437D247E, ped, weapon, ammo)
end

function Global.SetCharAngledDefensiveArea(ped, x0, y0, z0, x1, y1, z1, angle)
	return _in(0x0DBD5654, ped, x0, y0, z0, x1, y1, z1, angle)
end

function Global.SetCharAnimBlendOutDelta(ped, AnimName0, AnimName1, delta)
	return _in(0x000A1FCE, ped, _ts(AnimName0), _ts(AnimName1), delta)
end

function Global.SetCharAnimCurrentTime(ped, AnimName0, AnimName1, time)
	return _in(0x245F424F, ped, _ts(AnimName0), _ts(AnimName1), time)
end

function Global.SetCharAnimPlayingFlag(ped, AnimName0, AnimName1, flag)
	return _in(0x52DA430A, ped, _ts(AnimName0), _ts(AnimName1), flag, _r)
end

function Global.SetCharAnimSpeed(ped, AnimName0, AnimName1, speed)
	return _in(0x3C2A3334, ped, _ts(AnimName0), _ts(AnimName1), speed)
end

function Global.SetCharAsEnemy(ped, value)
	return _in(0x1C35407F, ped, value)
end

function Global.SetCharAsMissionChar(ped)
	return _in(0x60EC0540, ped)
end

function Global.SetCharBleeding(ped, set)
	return _in(0x38330B4A, ped, set)
end

function Global.SetCharBulletproofVest(ped, set)
	return _in(0x076A7E4E, ped, set)
end

function Global.SetCharCanBeKnockedOffBike(ped, value)
	return _in(0x30C54CD2, ped, value)
end

function Global.SetCharCanBeShotInVehicle(ped, enabled)
	return _in(0x79912ADC, ped, enabled)
end

function Global.SetCharCanSmashGlass(ped, set)
	return _in(0x0F634F9D, ped, set)
end

function Global.SetCharCantBeDraggedOut(ped, enabled)
	return _in(0x2E5C36C0, ped, enabled)
end

function Global.SetCharClimbAnimRate(ped, rate)
	return _in(0x68AB2DD9, ped, rate)
end

function Global.SetCharCollision(ped, set)
	return _in(0x2A7413EB, ped, set)
end

function Global.SetCharComponentVariation(ped, component, modelVariation, textureVariation)
	return _in(0x71A52973, ped, component, modelVariation, textureVariation)
end

function Global.SetCharCoordinates(ped, x, y, z)
	return _in(0x689D0F5F, ped, x, y, z)
end

function Global.SetCharCoordinatesDontClearPlayerTasks(ped, x, y, z)
	return _in(0x3458600C, ped, x, y, z)
end

function Global.SetCharCoordinatesDontWarpGang(ped, x, y, z)
	return _in(0x624E5833, ped, x, y, z)
end

function Global.SetCharCoordinatesDontWarpGangNoOffset(ped, x, y, z)
	return _in(0x355F3FEB, ped, x, y, z)
end

function Global.SetCharCoordinatesNoOffset(ped, x, y, z)
	return _in(0x57C758F0, ped, x, y, z)
end

function Global.SetCharCurrentWeaponVisible(ped, visble)
	return _in(0x6DAB7270, ped, visble)
end

function Global.SetCharDecisionMaker(ped, dm)
	return _in(0x01F8116C, ped, dm)
end

function Global.SetCharDecisionMakerToDefault(ped)
	return _in(0x73CB1489, ped)
end

function Global.SetCharDefaultComponentVariation(ped)
	return _in(0x4FB30DB6, ped)
end

function Global.SetCharDefensiveAreaAttachedToPed(ped, pednext, x0, y0, z0, x1, y1, z1, Unk7, Unk8)
	return _in(0x51C00627, ped, pednext, x0, y0, z0, x1, y1, z1, Unk7, Unk8)
end

function Global.SetCharDesiredHeading(ped, heading)
	return _in(0x6EF64079, ped, heading)
end

function Global.SetCharDiesInstantlyInWater(ped, allow)
	return _in(0x0CCA5CFC, ped, allow)
end

function Global.SetCharDropsWeaponsWhenDead(ped, value)
	return _in(0x2D43113A, ped, value)
end

function Global.SetCharDrownsInSinkingVehicle(ped, set)
	return _in(0x1E805412, ped, set)
end

function Global.SetCharDrownsInWater(ped, set)
	return _in(0x0C2A7847, ped, set)
end

function Global.SetCharDruggedUp(ped, drugged)
	return _in(0x458C333D, ped, drugged)
end

function Global.SetCharDucking(ped, set)
	return _in(0x64302F16, ped, set, _ri)
end

function Global.SetCharDuckingTimed(ped, timed)
	return _in(0x003A7647, ped, timed)
end

function Global.SetCharFireDamageMultiplier(ped, multiplier)
	return _in(0x29AE70A8, ped, multiplier)
end

function Global.SetCharForceDieInCar(ped, set)
	return _in(0x54AF2F7A, ped, set)
end

function Global.SetCharGestureGroup(ped, AnimGroup)
	return _in(0x1106579B, ped, _ts(AnimGroup))
end

function Global.SetCharGetOutUpsideDownCar(ped, set)
	return _in(0x1AAF54BE, ped, set)
end

function Global.SetCharGravity(ped, value)
	return _in(0x602C46E7, ped, value)
end

function Global.SetCharHeading(ped, heading)
	return _in(0x46B5523B, ped, heading)
end

function Global.SetCharHealth(ped, health)
	return _in(0x575E2880, ped, health)
end

function Global.SetCharInCutscene(ped, set)
	return _in(0x12850007, ped, set)
end

function Global.SetCharInvincible(ped, enable)
	return _in(0x2A58578B, ped, enable)
end

function Global.SetCharIsTargetPriority(ped, enable)
	return _in(0x163A1D77, ped, enable)
end

function Global.SetCharKeepTask(ped, value)
	return _in(0x264009D3, ped, value)
end

function Global.SetCharMaxHealth(ped, value)
	return _in(0x08A453C9, ped, value)
end

function Global.SetCharMaxMoveBlendRatio(ped, ratio)
	return _in(0x640E7764, ped, ratio)
end

function Global.SetCharMaxTimeInWater(ped, time)
	return _in(0x45F32596, ped, time)
end

function Global.SetCharMaxTimeUnderwater(ped, time)
	return _in(0x7110790B, ped, time)
end

function Global.SetCharMeleeActionFlag0(ped, set)
	return _in(0x771F3D7D, ped, set)
end

function Global.SetCharMeleeActionFlag1(ped, set)
	return _in(0x2EF60AA6, ped, set)
end

function Global.SetCharMeleeActionFlag2(ped, set)
	return _in(0x265E37E1, ped, set)
end

function Global.SetCharMeleeMovementConstaintBox(ped, x0, y0, z0, x1, y1, z1)
	return _in(0x5A7D2C3C, ped, x0, y0, z0, x1, y1, z1)
end

function Global.SetCharMoney(ped, amount)
	return _in(0x7B44224F, ped, amount)
end

function Global.SetCharMoveAnimSpeedMultiplier(ped, multiplier)
	return _in(0x5DC456DE, ped, multiplier)
end

function Global.SetCharMovementAnimsBlocked(ped, set)
	return _in(0x346B4FE7, ped, set)
end

function Global.SetCharNameDebug(ped, debugName)
	return _in(0x751967FD, ped, _ts(debugName))
end

function Global.SetCharNeverLeavesGroup(ped, value)
	return _in(0x0F4C513E, ped, value)
end

function Global.SetCharNeverTargetted(ped, set)
	return _in(0x5EA84115, ped, set)
end

function Global.SetCharNotDamagedByRelationshipGroup(ped, relationshipGroup, enable)
	return _in(0x077A0221, ped, relationshipGroup, enable)
end

function Global.SetCharOnlyDamagedByPlayer(ped, set)
	return _in(0x440D0A91, ped, set)
end

function Global.SetCharOnlyDamagedByRelationshipGroup(ped, set, relgroup)
	return _in(0x506C2898, ped, set, relgroup)
end

function Global.SetCharProofs(ped, unknown0, fallingDamage, unknown1, unknown2, unknown3)
	return _in(0x76F25B4B, ped, unknown0, fallingDamage, unknown1, unknown2, unknown3)
end

function Global.SetCharPropIndex(ped, propType, index)
	return _in(0x5FE95249, ped, propType, index)
end

function Global.SetCharPropIndexTexture(ped, Unk9, Unk10, Unk11)
	return _in(0x57390041, ped, Unk9, Unk10, Unk11)
end

function Global.SetCharProvideCoveringFire(ped, set)
	return _in(0x1A827B2C, ped, set)
end

function Global.SetCharRandomComponentVariation(ped)
	return _in(0x47D9437C, ped)
end

function Global.SetCharReadyToBeExecuted(ped, set)
	return _in(0x5F58606A, ped, set)
end

function Global.SetCharReadyToBeStunned(ped, set)
	return _in(0x2B416A06, ped, set)
end

function Global.SetCharRelationship(ped, relationshipLevel, relationshipGroup)
	return _in(0x6D9538E1, ped, relationshipLevel, relationshipGroup)
end

function Global.SetCharRelationshipGroup(ped, relationshipGroup)
	return _in(0x61822A3C, ped, relationshipGroup)
end

function Global.SetCharRotation(ped, xr, yr, zr)
	return _in(0x70E13826, ped, xr, yr, zr)
end

function Global.SetCharShootRate(ped, rate)
	return _in(0x2AE979DC, ped, rate)
end

function Global.SetCharSignalAfterKill(ped, set)
	return _in(0x6C6C1CF3, ped, set)
end

function Global.SetCharSphereDefensiveArea(ped, x, y, z, radius)
	return _in(0x56AD2409, ped, x, y, z, radius)
end

function Global.SetCharStayInCarWhenJacked(ped, set)
	return _in(0x1A02748F, ped, set)
end

function Global.SetCharSuffersCriticalHits(ped, value)
	return _in(0x154E450E, ped, value)
end

function Global.SetCharUsesDeafultAnimGroupWhenFleeing(ped, set)
	return _in(0x0DD71BA9, ped, set)
end

function Global.SetCharUsesUpperbodyDamageAnimsOnly(ped, set)
	return _in(0x268F1413, ped, set)
end

function Global.SetCharVelocity(ped, x, y, z)
	return _in(0x07C76803, ped, x, y, z)
end

function Global.SetCharVisible(ped, value)
	return _in(0x04CF0105, ped, value)
end

function Global.SetCharWalkAlongsideLeaderWhenAppropriate(ped, set)
	return _in(0x41121D51, ped, set)
end

function Global.SetCharWantedByPolice(ped, wanted)
	return _in(0x05C619D7, ped, wanted)
end

function Global.SetCharWatchMelee(ped, set)
	return _in(0x142A5E83, ped, set)
end

function Global.SetCharWeaponSkill(ped, skill)
	return _in(0x441B1EAF, ped, skill)
end

function Global.SetCharWillCowerInsteadOfFleeing(ped, set)
	return _in(0x58FB0BC1, ped, set)
end

function Global.SetCharWillDoDrivebys(ped, value)
	return _in(0x2C9E0483, ped, value)
end

function Global.SetCharWillFlyThroughWindscreen(ped, value)
	return _in(0x6FC75ABD, ped, value)
end

function Global.SetCharWillLeaveCarInCombat(ped, set)
	return _in(0x7CFC39CB, ped, set)
end

function Global.SetCharWillMoveWhenInjured(ped, value)
	return _in(0x1EF36397, ped, value)
end

function Global.SetCharWillOnlyFireWithClearLos(ped, set)
	return _in(0x4458184A, ped, set)
end

function Global.SetCharWillRemainOnBoatAfterMissionEnds(ped, set)
	return _in(0x5E8D08CE, ped, set)
end

function Global.SetCharWillTryToLeaveBoatAfterLeader(ped, set)
	return _in(0x62AB2AB4, ped, set)
end

function Global.SetCharWillTryToLeaveWater(ped, set)
	return _in(0x1D1B6750, ped, set)
end

function Global.SetCharWillUseCarsInCombat(ped, value)
	return _in(0x2FD83FB5, ped, value)
end

function Global.SetCharWillUseCover(ped, value)
	return _in(0x5F2F1680, ped, value)
end

function Global.SetCinematicButtonEnabled(set)
	return _in(0x0F13355A, set)
end

function Global.SetClearHelpInMissionCleanup(set)
	return _in(0x4371559F, set)
end

function Global.SetClearManifolds(set)
	return _in(0x5B7A738C, set)
end

function Global.SetCollectable1Total(total)
	return _in(0x79574B3B, total)
end

function Global.SetCollideWithPeds(set)
	return _in(0x5FDF1493, set)
end

function Global.SetCombatDecisionMaker(ped, dm)
	return _in(0x526B048C, ped, dm)
end

function Global.SetContentsOfTextWidget(Unk1115, Unk1116)
	return _in(0x6B9C6127, Unk1115, Unk1116)
end

function Global.SetConvertibleRoof(car, set)
	return _in(0x3A9A0869, car, set)
end

function Global.SetCreateRandomCops(set)
	return _in(0x5C832C1F, set)
end

function Global.SetCreditsToRenderBeforeFade(set)
	return _in(0x35FA026D, set)
end

function Global.SetCurrentCharWeapon(ped, w, unknownTrue)
	return _in(0x6CF44DD6, ped, w, unknownTrue)
end

function Global.SetCurrentMovie(filename)
	return _in(0x5AF23F31, _ts(filename))
end

function Global.SetCutsceneExtraRoomPos(x, y, z)
	return _in(0x226A7227, x, y, z)
end

function Global.SetDanceShakeActiveThisUpdate(shake)
	return _in(0x1E880709, shake)
end

function Global.SetDanceShakeInactiveImmediately()
	return _in(0x2DAE50C0)
end

function Global.SetDeadCharCoordinates(ped, x, y, z)
	return _in(0x68C57282, ped, x, y, z)
end

function Global.SetDeadPedsDropWeapons(set)
	return _in(0x2A5262C0, set)
end

function Global.SetDeathWeaponsPersist(ped, set)
	return _in(0x49F86791, ped, set)
end

function Global.SetDebugTextVisible(Unk1120)
	return _in(0x39D87BD6, Unk1120)
end

function Global.SetDecisionMakerAttributeCanChangeTarget(dm, value)
	return _in(0x51F54148, dm, value)
end

function Global.SetDecisionMakerAttributeCaution(dm, value)
	return _in(0x6BAC2781, dm, value)
end

function Global.SetDecisionMakerAttributeFireRate(dm, value)
	return _in(0x31FC3392, dm, value)
end

function Global.SetDecisionMakerAttributeLowHealth(dm, value)
	return _in(0x2FFA6C89, dm, value)
end

function Global.SetDecisionMakerAttributeMovementStyle(dm, value)
	return _in(0x0273134E, dm, value)
end

function Global.SetDecisionMakerAttributeNavigationStyle(dm, value)
	return _in(0x26A1722C, dm, value)
end

function Global.SetDecisionMakerAttributeRetreatingBehaviour(dm, value)
	return _in(0x67890049, dm, value)
end

function Global.SetDecisionMakerAttributeSightRange(dm, value)
	return _in(0x2F444F95, dm, value)
end

function Global.SetDecisionMakerAttributeStandingStyle(dm, value)
	return _in(0x7D767108, dm, value)
end

function Global.SetDecisionMakerAttributeTargetInjuredReaction(dm, value)
	return _in(0x7CAE2557, dm, value)
end

function Global.SetDecisionMakerAttributeTargetLossResponse(dm, value)
	return _in(0x65490A3D, dm, value)
end

function Global.SetDecisionMakerAttributeTeamwork(dm, value)
	return _in(0x7EAE7F2F, dm, value)
end

function Global.SetDecisionMakerAttributeWeaponAccuracy(dm, value)
	return _in(0x21B8337F, dm, value)
end

function Global.SetDefaultGlobalInstancePriority()
	return _in(0x58E835E4)
end

function Global.SetDefaultTargetScoringFunction(ped, Unk132)
	return _in(0x0B164EF2, ped, Unk132)
end

function Global.SetDisablePlayerShoveAnimation(ped, disable)
	return _in(0x73F869CF, ped, disable)
end

--- This native sets the app id for the discord rich presence implementation.
-- @param appId A valid Discord API App Id, can be generated at https://discordapp.com/developers/applications/
function Global.SetDiscordAppId(appId)
	return _in(0x6a02254d, _ts(appId))
end

--- Sets a clickable button to be displayed in a player's Discord rich presence.
-- @param index The button index, either 0 or 1.
-- @param label The text to display on the button.
-- @param url The URL to open when clicking the button. This has to start with `fivem://connect/` or `https://`.
function Global.SetDiscordRichPresenceAction(index, label, url)
	return _in(0xcbbc3fac, index, _ts(label), _ts(url))
end

--- This native sets the image asset for the discord rich presence implementation.
-- @param assetName The name of a valid asset registered on Discordapp's developer dashboard. note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.
function Global.SetDiscordRichPresenceAsset(assetName)
	return _in(0x53dfd530, _ts(assetName))
end

--- This native sets the small image asset for the discord rich presence implementation.
-- @param assetName The name of a valid asset registered on Discordapp's developer dashboard. Note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.
function Global.SetDiscordRichPresenceAssetSmall(assetName)
	return _in(0xf61d04c4, _ts(assetName))
end

--- This native sets the hover text of the small image asset for the discord rich presence implementation.
-- @param text Text to be displayed when hovering over small image asset. Note that you must also set a valid small image asset using the SET_DISCORD_RICH_PRESENCE_ASSET_SMALL native.
function Global.SetDiscordRichPresenceAssetSmallText(text)
	return _in(0x35e62b6a, _ts(text))
end

--- This native sets the hover text of the image asset for the discord rich presence implementation.
-- @param text Text to be displayed when hovering over image asset. Note that you must also set a valid image asset using the SET_DISCORD_RICH_PRESENCE_ASSET native.
function Global.SetDiscordRichPresenceAssetText(text)
	return _in(0xb029d2fa, _ts(text))
end

function Global.SetDisplayPlayerNameAndIcon(playerIndex, set)
	return _in(0x07370330, playerIndex, set)
end

function Global.SetDitchPoliceModels(set)
	return _in(0x25AC586E, set)
end

function Global.SetDoNotSpawnParkedCarsOnTop(pickup, set)
	return _in(0x7A93645C, pickup, set)
end

function Global.SetDontActivateRagdollFromPlayerImpact(ped, set)
	return _in(0x5A676BCD, ped, set)
end

function Global.SetDoorState(door, flag, Unk95)
	return _in(0x7E3D3430, door, flag, Unk95)
end

function Global.SetDrawPlayerComponent(component, set)
	return _in(0x3EFE3DC8, component, set)
end

function Global.SetDriveTaskCruiseSpeed(ped, speed)
	return _in(0x499700EF, ped, speed)
end

function Global.SetDrunkCam(cam, val, time)
	return _in(0x74B90C48, cam, val, time)
end

--- Navigates the specified DUI browser to a different URL.
-- @param duiObject The DUI browser handle.
-- @param url The new URL.
function Global.SetDuiUrl(duiObject, url)
	return _in(0xf761d9f3, duiObject, _ts(url))
end

function Global.SetEnableNearClipScan(set)
	return _in(0x35CC3267, set)
end

function Global.SetEnableRcDetonate(set)
	return _in(0x1FC96A99, set)
end

function Global.SetEnableRcDetonateOnContact(set)
	return _in(0x7BD06E31, set)
end

function Global.SetEngineHealth(vehicle, health)
	return _in(0x3F413561, vehicle, health)
end

function Global.SetEveryoneIgnorePlayer(playerIndex, value)
	return _in(0x059901B9, playerIndex, value)
end

function Global.SetExtraCarColours(vehicle, colour1, colour2)
	return _in(0x6CB14354, vehicle, colour1, colour2)
end

function Global.SetExtraHospitalRestartPoint(x, y, z, Unk489, Unk490)
	return _in(0x4B6E368D, x, y, z, Unk489, Unk490)
end

function Global.SetExtraPoliceStationRestartPoint(x, y, z, Unk491, Unk492)
	return _in(0x1C4E7A79, x, y, z, Unk491, Unk492)
end

function Global.SetFadeInAfterLoad(set)
	return _in(0x5384065B, set)
end

function Global.SetFakeWantedCircle(x, y, radius)
	return _in(0x3CEE0376, x, y, radius)
end

function Global.SetFakeWantedLevel(lvl)
	return _in(0x29D91F3D, lvl)
end

function Global.SetFilterMenuOn(toggle)
	return _in(0x18F43649, toggle)
end

function Global.SetFilterSaveSetting(filterid, setting)
	return _in(0x47F971E8, filterid, setting)
end

function Global.SetFixedCamPos(x, y, z)
	return _in(0x511A3B01, x, y, z)
end

function Global.SetFloatStat(stat, value)
	return _in(0x5213511B, stat, value)
end

function Global.SetFollowPedPitchLimitDown(pitchdownlim)
	return _in(0x31DB4020, pitchdownlim)
end

function Global.SetFollowPedPitchLimitUp(pitchuplim)
	return _in(0x360E2977, pitchuplim)
end

function Global.SetFollowVehicleCamOffset(Unk574, x, y, z)
	return _in(0x56507469, Unk574, x, y, z)
end

function Global.SetFollowVehicleCamSubmode(mode)
	return _in(0x20BC708E, mode)
end

function Global.SetFollowVehiclePitchLimitDown(pitchdownlim)
	return _in(0x02F65CB2, pitchdownlim)
end

function Global.SetFollowVehiclePitchLimitUp(pitchuplim)
	return _in(0x5567728E, pitchuplim)
end

function Global.SetForceLookBehind(set)
	return _in(0x64961488, set)
end

function Global.SetForcePlayerToEnterThroughDirectDoor(ped, set)
	return _in(0x79B73666, ped, set)
end

function Global.SetFovChannelScript(set)
	return _in(0x68AB6E72, set)
end

function Global.SetFreeHealthCare(player, set)
	return _in(0x30BE3463, player, set)
end

function Global.SetFreeResprays(set)
	return _in(0x00710A49, set)
end

function Global.SetFreebiesInVehicle(veh, set)
	return _in(0x25541DBE, veh, set)
end

function Global.SetGameCamHeading(heading)
	return _in(0x45FB5CE1, heading)
end

function Global.SetGameCamPitch(pitch)
	return _in(0x1BC772AC, pitch)
end

function Global.SetGameCameraControlsActive(active)
	return _in(0x57952546, active)
end

function Global.SetGangCar(car, set)
	return _in(0x3A8531E8, car, set)
end

function Global.SetGarageLeaveCameraAlone(garageName, set)
	return _in(0x5BC10979, _ts(garageName), set)
end

function Global.SetGfwlHasSafeHouse(ukn)
	return _in(0x06136B6A, ukn)
end

function Global.SetGfwlIsReturningToSinglePlayer(Unk963)
	return _in(0x755F292D, Unk963)
end

function Global.SetGlobalInstancePriority(priority)
	return _in(0x573F5B48, priority)
end

function Global.SetGlobalRenderFlags(Unk507, Unk508, Unk509, Unk510)
	return _in(0x4FE23851, Unk507, Unk508, Unk509, Unk510)
end

function Global.SetGpsRemainsWhenTargetReachedFlag(set)
	return _in(0x4C9B749F, set)
end

function Global.SetGpsTestIn_3dFlag(set)
	return _in(0x28D17798, set)
end

function Global.SetGpsVoiceForVehicle(veh, VoiceId)
	return _in(0x356876BF, veh, VoiceId)
end

function Global.SetGravityOff(set)
	return _in(0x3CDA1A07, set)
end

function Global.SetGroupCharDecisionMaker(group, dm)
	return _in(0x14166075, group, dm)
end

function Global.SetGroupCharDucksWhenAimedAt(ped, value)
	return _in(0x5C8C7F9E, ped, value)
end

function Global.SetGroupCombatDecisionMaker(group, dm)
	return _in(0x58123F7A, group, dm)
end

function Global.SetGroupFollowStatus(group, status)
	return _in(0x64B9757E, group, status)
end

function Global.SetGroupFormation(group, formation)
	return _in(0x6D05484F, group, formation)
end

function Global.SetGroupFormationSpacing(group, space)
	return _in(0x69315157, group, space)
end

function Global.SetGroupLeader(group, leader)
	return _in(0x04C85E23, group, leader)
end

function Global.SetGroupMember(group, member)
	return _in(0x5E0F611E, group, member)
end

function Global.SetGroupSeparationRange(group, seperation)
	return _in(0x22DD329E, group, seperation)
end

function Global.SetGunshotSenseRangeForRiot2(range)
	return _in(0x1A081F78, range)
end

function Global.SetHasBeenOwnedByPlayer(car, set)
	return _in(0x25750E4F, car, set)
end

function Global.SetHasBeenOwnedForCarGenerator(CarGen, set)
	return _in(0x60E335FA, CarGen, set)
end

function Global.SetHeadingLimitForAttachedPed(ped, heading0, heading1)
	return _in(0x15B07D4D, ped, heading0, heading1)
end

function Global.SetHeadingOfClosestObjectOfType(x, y, z, radius, type_or_model, heading)
	return _in(0x7ABD4D4D, x, y, z, radius, type_or_model, heading)
end

function Global.SetHealthPickupNetworkRegenTime(timeMS)
	return _in(0x072516B4, timeMS)
end

function Global.SetHeliBladesFullSpeed(heli)
	return _in(0x557C3641, heli)
end

function Global.SetHeliForceEngineOn(heli, set)
	return _in(0x3B8F5E20, heli, set, _ri)
end

function Global.SetHeliStabiliser(heli, set)
	return _in(0x4E653BCC, heli, set)
end

function Global.SetHelpMessageBoxSize(Unk773)
	return _in(0x4FB069ED, Unk773)
end

function Global.SetHelpMessageBoxSizeF(size)
	return _in(0x7A521650, size)
end

function Global.SetHideWeaponIcon(set)
	return _in(0x0F1B1AA1, set)
end

function Global.SetHintAdvancedParams(Unk575, Unk576, Unk577, Unk578, Unk579)
	return _in(0x2E096356, Unk575, Unk576, Unk577, Unk578, Unk579)
end

function Global.SetHintFov(fov)
	return _in(0x2F9751E2, fov)
end

function Global.SetHintMoveInDist(dist)
	return _in(0x661A0CCC, dist)
end

function Global.SetHintMoveInDistDefault()
	return _in(0x449264B6)
end

function Global.SetHintTimes(Unk580, Unk581, Unk582)
	return _in(0x4CC81FCB, Unk580, Unk581, Unk582)
end

function Global.SetHintTimesDefault()
	return _in(0x6ADF2929)
end

function Global.SetHostMatchOn(Unk964)
	return _in(0x2C41421A, Unk964)
end

function Global.SetHotWeaponSwap(set)
	return _in(0x7FF260D0, set)
end

function Global.SetIgnoreLowPriorityShockingEvents(ped, value)
	return _in(0x05CC3DA1, ped, value)
end

function Global.SetIgnoreNoGpsFlag(set)
	return _in(0x1FC06A1B, set)
end

function Global.SetIkDisabledForNetworkPlayer(playerIndex, Unk965)
	return _in(0x13B27FFE, playerIndex, Unk965)
end

function Global.SetInMpTutorial(set)
	return _in(0x1AEB793A, set)
end

function Global.SetInSpectatorMode(spectate)
	return _in(0x40035D5D, spectate)
end

function Global.SetInformRespectedFriends(ped, Unk43, Unk44)
	return _in(0x509F236D, ped, Unk43, Unk44)
end

function Global.SetInstantWidescreenBorders(set)
	return _in(0x728C1CC0, set)
end

function Global.SetIntStat(stat, value)
	return _in(0x1B64665B, stat, value)
end

function Global.SetInterpFromGameToScript(Unk604, Unk605)
	return _in(0x45CE21CA, Unk604, Unk605)
end

function Global.SetInterpFromScriptToGame(Unk606, Unk607)
	return _in(0x69B140F6, Unk606, Unk607)
end

function Global.SetInterpInOutVehicleEnabledThisFrame(set)
	return _in(0x120D3155, set)
end

function Global.SetKillstreak()
	return _in(0x7D070604)
end

function Global.SetLoadCollisionForCarFlag(car, set)
	return _in(0x1E5C50B5, car, set)
end

function Global.SetLoadCollisionForCharFlag(ped, set)
	return _in(0x4AA762A4, ped, set)
end

function Global.SetLoadCollisionForObjectFlag(obj, set)
	return _in(0x70D13342, obj, set)
end

function Global.SetLobbyMuteOverride(set)
	return _in(0x10800FD6, set)
end

function Global.SetLocalPlayerPainVoice(name)
	return _in(0x1DDD0073, _ts(name))
end

function Global.SetLocalPlayerVoice(name)
	return _in(0x07092DC4, _ts(name))
end

function Global.SetLoudVehicleRadio(veh, set)
	return _in(0x34686B92, veh, set)
end

--- Sets whether or not `SHUTDOWN_LOADING_SCREEN` automatically shuts down the NUI frame for the loading screen. If this is enabled,
-- you will have to manually invoke `SHUTDOWN_LOADING_SCREEN_NUI` whenever you want to hide the NUI loading screen.
-- @param manualShutdown TRUE to manually shut down the loading screen NUI.
function Global.SetManualShutdownLoadingScreenNui(manualShutdown)
	return _in(0x1722c938, manualShutdown)
end

function Global.SetMask(Unk774, Unk775, Unk776, Unk777)
	return _in(0x0D3A3160, Unk774, Unk775, Unk776, Unk777)
end

function Global.SetMaxFireGenerations(max)
	return _in(0x03BA036B, max)
end

function Global.SetMaxWantedLevel(lvl)
	return _in(0x5D622498, lvl)
end

function Global.SetMenuColumn(menuid, Unk866, Unk867, Unk868, Unk869, Unk870, Unk871, Unk872, Unk873, Unk874, Unk875, Unk876, Unk877, Unk878, Unk879)
	return _in(0x4D317353, menuid, Unk866, Unk867, Unk868, Unk869, Unk870, Unk871, Unk872, Unk873, Unk874, Unk875, Unk876, Unk877, Unk878, Unk879)
end

function Global.SetMenuColumnOrientation(menuid, column, orientation)
	return _in(0x7CC63464, menuid, column, orientation)
end

function Global.SetMenuColumnWidth(menuid, column, width)
	return _in(0x0DBF663C, menuid, column, width)
end

function Global.SetMenuItemWithNumber(menuid, item, Unk881, gxtkey, number)
	return _in(0x32E45138, menuid, item, Unk881, _ts(gxtkey), number)
end

function Global.SetMenuItemWith_2Numbers(menuid, item, Unk880, gxtkey, number0, number1)
	return _in(0x7C4E54ED, menuid, item, Unk880, _ts(gxtkey), number0, number1)
end

function Global.SetMessageFormatting(Unk700, Unk701, Unk702)
	return _in(0x679A474E, Unk700, Unk701, Unk702)
end

function Global.SetMessagesWaiting(set)
	return _in(0x7DC061F5, set)
end

function Global.SetMinMaxPedAccuracy(ped, min, max)
	return _in(0x74627538, ped, min, max)
end

function Global.SetMinigameInProgress(set)
	return _in(0x3ED135AD, set)
end

function Global.SetMissionFlag(isMission)
	return _in(0x4FE923DC, isMission)
end

function Global.SetMissionPassedCash(add, cash, Unk511)
	return _in(0x60DC6E25, add, cash, Unk511)
end

function Global.SetMissionPickupSound(model, SoundName)
	return _in(0x3F0F4E0C, model, _ts(SoundName))
end

function Global.SetMissionRespectTotal(respect)
	return _in(0x3FA46EB8, respect)
end

function Global.SetMissionTrainCoordinates(train, x, y, z)
	return _in(0x2A3F654A, train, x, y, z)
end

function Global.SetMobilePhonePosition(x, y, z)
	return _in(0x463832F7, x, y, z)
end

function Global.SetMobilePhoneRadioState(state)
	return _in(0x52C83902, state)
end

function Global.SetMobilePhoneRotation(x, y, z)
	return _in(0x7E7E4879, x, y, z)
end

function Global.SetMobilePhoneScale(scale)
	return _in(0x61C921EF, scale)
end

function Global.SetMobileRadioEnabledDuringGameplay(set)
	return _in(0x688557E4, set)
end

function Global.SetMobileRingType(type)
	return _in(0x24885050, type)
end

function Global.SetMoneyCarriedByAllNewPeds(money)
	return _in(0x64CA2868, money)
end

function Global.SetMoneyCarriedByPedWithModel(model, m0, m1)
	return _in(0x047D3BD6, model, m0, m1)
end

function Global.SetMovieTime(time)
	return _in(0x37871A37, time)
end

function Global.SetMovieVolume(volume)
	return _in(0x32486214, volume)
end

function Global.SetMsgForLoadingScreen(label)
	return _in(0x4E4C2F92, _ts(label))
end

function Global.SetMultiplayerHudCash(cash)
	return _in(0x051742D5, cash)
end

function Global.SetMultiplayerHudTime(str)
	return _in(0x3A820D46, _ts(str))
end

function Global.SetNeedsToBeHotwired(veh, set)
	return _in(0x40A708A6, veh, set)
end

function Global.SetNetworkIdCanMigrate(netid, value)
	return _in(0x2FA5601D, netid, value)
end

function Global.SetNetworkIdExistsOnAllMachines(netID, set)
	return _in(0x4E2C764D, netID, set)
end

function Global.SetNetworkIdStopCloning(id, Unk966)
	return _in(0x086452E7, id, Unk966)
end

function Global.SetNetworkJoinFail(ukn0)
	return _in(0x5849311B, ukn0)
end

function Global.SetNetworkPedUsingParachute(ped)
	return _in(0x6E8B7611, ped)
end

function Global.SetNetworkPlayerAsVip(playerIndex, Unk967)
	return _in(0x28251E62, playerIndex, Unk967)
end

function Global.SetNetworkVehicleRespotTimer(id, ukn4000)
	return _in(0x266F327C, id, ukn4000)
end

--- SET_NETWORK_WALK_MODE
function Global.SetNetworkWalkMode(enabled)
	return _in(0x55188d2d, enabled)
end

function Global.SetNextDesiredMoveState(state)
	return _in(0x02033258, state)
end

function Global.SetNmAnimPose(ped, AnimName0, AnimName1, pose)
	return _in(0x50311928, ped, _ts(AnimName0), _ts(AnimName1), pose)
end

function Global.SetNmMessageBool(id, value)
	return _in(0x202F384E, id, value)
end

function Global.SetNmMessageFloat(id, value)
	return _in(0x6CE00370, id, value)
end

function Global.SetNmMessageInstanceIndex(id, ped, car, obj)
	return _in(0x48543AED, id, ped, car, obj)
end

function Global.SetNmMessageInt(id, value)
	return _in(0x49105005, id, value)
end

function Global.SetNmMessageString(id, string)
	return _in(0x3F296F78, id, _ts(string))
end

function Global.SetNmMessageVec3(id, x, y, z)
	return _in(0x6E8F7FA4, id, x, y, z)
end

function Global.SetNoResprays(set)
	return _in(0x418D0889, set)
end

--- SET_NUI_FOCUS
function Global.SetNuiFocus(hasFocus, hasCursor)
	return _in(0x5b98ae30, hasFocus, hasCursor)
end

--- SET_NUI_FOCUS_KEEP_INPUT
function Global.SetNuiFocusKeepInput(keepInput)
	return _in(0x3ff5e5f8, keepInput)
end

function Global.SetObjectAlpha(obj, alpha)
	return _in(0x7F0040DE, obj, alpha)
end

function Global.SetObjectAnimCurrentTime(obj, animname0, animname1, time)
	return _in(0x368274DA, obj, _ts(animname0), _ts(animname1), time)
end

function Global.SetObjectAnimPlayingFlag(obj, animname0, animname1, flag)
	return _in(0x6A7236C9, obj, _ts(animname0), _ts(animname1), flag)
end

function Global.SetObjectAnimSpeed(obj, animname0, animname1, speed)
	return _in(0x168B18ED, obj, _ts(animname0), _ts(animname1), speed)
end

function Global.SetObjectAsStealable(obj, set)
	return _in(0x2DDE3785, obj, set)
end

function Global.SetObjectCcd(obj, set)
	return _in(0x677861E1, obj, set)
end

function Global.SetObjectCollision(obj, value)
	return _in(0x24A40229, obj, value)
end

function Global.SetObjectCoordinates(obj, pX, pY, pZ)
	return _in(0x52FD30EB, obj, pX, pY, pZ)
end

function Global.SetObjectDrawLast(obj, set)
	return _in(0x19DD44F2, obj, set)
end

function Global.SetObjectDynamic(obj, set)
	return _in(0x2C591CCD, obj, set)
end

function Global.SetObjectExistsOnAllMachines(obj, exists)
	return _in(0x672139F0, obj, exists)
end

function Global.SetObjectHeading(obj, value)
	return _in(0x4F5D027C, obj, value)
end

function Global.SetObjectHealth(obj, health)
	return _in(0x46C41EA8, obj, health)
end

function Global.SetObjectInitialRotationVelocity(obj, x, y, z)
	return _in(0x1C7C4B89, obj, x, y, z)
end

function Global.SetObjectInitialVelocity(obj, x, y, z)
	return _in(0x41ED206B, obj, x, y, z)
end

function Global.SetObjectInvincible(obj, set)
	return _in(0x1D2F46AE, obj, set)
end

function Global.SetObjectLights(obj, lights)
	return _in(0x45D71590, obj, lights)
end

function Global.SetObjectOnlyDamagedByPlayer(obj, set)
	return _in(0x2E321155, obj, set)
end

function Global.SetObjectPhysicsParams(obj, Unk96, Unk97, v0x, v0y, v0z, v1x, v1y, v1z, flag0, flag1)
	return _in(0x1B9A44D4, obj, Unk96, Unk97, v0x, v0y, v0z, v1x, v1y, v1z, flag0, flag1)
end

function Global.SetObjectProofs(obj, unknown0, fallingDamage, unknown1, unknown2, unknown3)
	return _in(0x352865D2, obj, unknown0, fallingDamage, unknown1, unknown2, unknown3)
end

function Global.SetObjectQuaternion(obj, qx, qy, qz, qw)
	return _in(0x71270D73, obj, qx, qy, qz, qw)
end

function Global.SetObjectRecordsCollisions(obj, set)
	return _in(0x0CA93513, obj, set)
end

function Global.SetObjectRenderScorched(obj, set)
	return _in(0x1AD3394A, obj, set)
end

function Global.SetObjectRotation(obj, Pitch, Roll, Yaw)
	return _in(0x081D549C, obj, Pitch, Roll, Yaw)
end

function Global.SetObjectScale(obj, scale)
	return _in(0x145B13C7, obj, scale)
end

function Global.SetObjectUsedInPoolGame(obj, set)
	return _in(0x07B23203, obj, set)
end

function Global.SetObjectVisible(obj, value)
	return _in(0x372C7B2A, obj, value)
end

function Global.SetOnlineLan(Unk968)
	return _in(0x7E113020, Unk968)
end

function Global.SetOnlineScore(Unk1059, Unk1060)
	return _in(0x6B9C7392, Unk1059, Unk1060)
end

function Global.SetOnscreenCounterFlashWhenFirstDisplayed(counterid, flash)
	return _in(0x06F54963, counterid, flash)
end

function Global.SetOverrideNoSprintingOnPhoneInMultiplayer(Unk969)
	return _in(0x75F85826, Unk969)
end

function Global.SetParkedCarDensityMultiplier(multiplier)
	return _in(0x010C7044, multiplier)
end

function Global.SetPedAllowMissionOnlyDrivebyUse(ped, set)
	return _in(0x6E7C6687, ped, set)
end

function Global.SetPedAlpha(ped, alpha)
	return _in(0x5AA1795C, ped, alpha)
end

function Global.SetPedComponentsToNetworkPlayersettingsModel(ped)
	return _in(0x5C3053C0, ped)
end

function Global.SetPedDensityMultiplier(density)
	return _in(0x540F2DF7, density)
end

function Global.SetPedDiesWhenInjured(ped, value)
	return _in(0x3BF93ED7, ped, value)
end

function Global.SetPedDontDoEvasiveDives(ped, value)
	return _in(0x1EAD1D7D, ped, value)
end

function Global.SetPedDontUseVehicleSpecificAnims(ped, set)
	return _in(0x0B6E6107, ped, set)
end

function Global.SetPedEnableLegIk(ped, set)
	return _in(0x695C429D, ped, set)
end

function Global.SetPedExistsOnAllMachines(ped, exists)
	return _in(0x79700852, ped, exists)
end

function Global.SetPedFallOffBikesWhenShot(ped, set)
	return _in(0x78E00C86, ped, set)
end

function Global.SetPedFireFxLodScaler(scale)
	return _in(0x679C4276, scale)
end

function Global.SetPedForceFlyThroughWindscreen(ped, set)
	return _in(0x6E354B41, ped, set)
end

function Global.SetPedForceVisualiseHeadDamageFromBullets(ped, set)
	return _in(0x2BA92322, ped, set)
end

function Global.SetPedGeneratesDeadBodyEvents(ped, set)
	return _in(0x3DBF53E0, ped, set)
end

function Global.SetPedHeedsTheEveryoneIgnorePlayerFlag(ped, set)
	return _in(0x3BBE6DBE, ped, set)
end

function Global.SetPedHeliPilotRespectsMinimummHeight(ped, set)
	return _in(0x20BB5507, ped, set)
end

function Global.SetPedHelmetTextureIndex(ped, index)
	return _in(0x6AC14091, ped, index)
end

function Global.SetPedInstantBlendsWeaponAnims(ped, set)
	return _in(0x2CB572B5, ped, set)
end

function Global.SetPedIsBlindRaging(ped, value)
	return _in(0x05D800A4, ped, value)
end

function Global.SetPedIsDrunk(ped, value)
	return _in(0x67CC007C, ped, value)
end

function Global.SetPedMobileRingType(ped, RingtoneId)
	return _in(0x7E1C01D7, ped, RingtoneId)
end

function Global.SetPedMotionBlur(ped, set)
	return _in(0x73E6005B, ped, set)
end

function Global.SetPedNonCreationArea(x0, y0, z0, x1, y1, z1)
	return _in(0x3DAB7D72, x0, y0, z0, x1, y1, z1)
end

function Global.SetPedNonRemovalArea(x0, y0, z0, x1, y1, z1)
	return _in(0x52D34ED3, x0, y0, z0, x1, y1, z1)
end

function Global.SetPedPathMayDropFromHeight(ped, value)
	return _in(0x4F37648C, ped, value)
end

function Global.SetPedPathMayUseClimbovers(ped, value)
	return _in(0x34BD72D7, ped, value)
end

function Global.SetPedPathMayUseLadders(ped, value)
	return _in(0x6B2838C7, ped, value)
end

function Global.SetPedPathWillAvoidDynamicObjects(ped, set)
	return _in(0x1E901BB6, ped, set)
end

function Global.SetPedSkipsComplexCoverCollisionChecks(ped, set)
	return _in(0x2CD33526, ped, set)
end

function Global.SetPedSteersAroundObjects(ped, set)
	return _in(0x7D071EE0, ped, set)
end

function Global.SetPedSteersAroundPeds(ped, set)
	return _in(0x57A236F0, ped, set)
end

function Global.SetPedWindyClothingScale(ped, scale)
	return _in(0x12865550, ped, scale)
end

function Global.SetPedWithBrainCanBeConvertedToDummyPed(ped, set)
	return _in(0x1461418C, ped, set)
end

function Global.SetPedWontAttackPlayerWithoutWantedLevel(ped, set)
	return _in(0x3BF06336, ped, set)
end

function Global.SetPetrolTankHealth(vehicle, value)
	return _in(0x17E2319C, vehicle, value)
end

function Global.SetPetrolTankWeakpoint(car, set)
	return _in(0x667517AB, car, set)
end

function Global.SetPhoneHudItem(id, gxttext, Unk800)
	return _in(0x43A13718, id, _ts(gxttext), Unk800)
end

function Global.SetPhysCcdHandlesRotation(set)
	return _in(0x0C7B7CF4, set)
end

function Global.SetPickupCollectableByCar(pickup, set)
	return _in(0x6DA91393, pickup, set)
end

function Global.SetPickupsFixCars(set)
	return _in(0x59DC6B9A, set)
end

function Global.SetPlaneThrottle(plane, throttle)
	return _in(0x05B2442A, plane, throttle)
end

function Global.SetPlaneUndercarriageUp(plain, set)
	return _in(0x7953702C, plain, set)
end

function Global.SetPlaybackSpeed(car, speed)
	return _in(0x0EAF6A68, car, speed)
end

function Global.SetPlayerAsCop(player, set)
	return _in(0x1D161BB8, player, set)
end

function Global.SetPlayerAsDamagedPlayer(playerIndex, Unk1057, Unk1058)
	return _in(0x633A012B, playerIndex, Unk1057, Unk1058)
end

function Global.SetPlayerCanBeHassledByGangs(playerIndex, value)
	return _in(0x09C5648C, playerIndex, value)
end

function Global.SetPlayerCanDoDriveBy(playerIndex, value)
	return _in(0x561471FB, playerIndex, value)
end

function Global.SetPlayerCanDropWeaponsInCar(set)
	return _in(0x4F884E33, set)
end

function Global.SetPlayerCanUseCover(playerIndex, value)
	return _in(0x4AC023C4, playerIndex, value)
end

function Global.SetPlayerControl(playerIndex, value)
	return _in(0x1A6203EA, playerIndex, value)
end

function Global.SetPlayerControlAdvanced(playerIndex, unknown1, unknown2, unknown3)
	return _in(0x31E25160, playerIndex, unknown1, unknown2, unknown3)
end

function Global.SetPlayerControlForAmbientScript(player, flag0, flag1)
	return _in(0x647E2BF7, player, flag0, flag1)
end

function Global.SetPlayerControlForNetwork(playerIndex, unknownTrue, unknownFalse)
	return _in(0x2AF07CC8, playerIndex, unknownTrue, unknownFalse)
end

function Global.SetPlayerControlForTextChat(player, set)
	return _in(0x13267663, player, set)
end

function Global.SetPlayerControlOnInMissionCleanup(set)
	return _in(0x06F271B2, set)
end

function Global.SetPlayerDisableCrouch(player, set)
	return _in(0x3BB57426, player, set)
end

function Global.SetPlayerDisableJump(player, set)
	return _in(0x4B5832BE, player, set)
end

function Global.SetPlayerFastReload(playerIndex, value)
	return _in(0x29B53DFF, playerIndex, value)
end

function Global.SetPlayerForcedAim(player, set)
	return _in(0x7E603872, player, set)
end

function Global.SetPlayerGroupRecruitment(player, set)
	return _in(0x7A9B6E17, player, set)
end

function Global.SetPlayerGroupToFollowAlways(playerIndex, value)
	return _in(0x700165C2, playerIndex, value)
end

function Global.SetPlayerGroupToFollowNever(player, set)
	return _in(0x4F29072E, player, set)
end

function Global.SetPlayerIconColour(colour)
	return _in(0x689D5EEE, colour)
end

function Global.SetPlayerInvincible(playerIndex, value)
	return _in(0x7E9E02E1, playerIndex, value)
end

function Global.SetPlayerInvisibleToAi(set)
	return _in(0x68083431, set)
end

function Global.SetPlayerIsInStadium(set)
	return _in(0x349D5C27, set)
end

function Global.SetPlayerKeepsWeaponsWhenRespawned(set)
	return _in(0x6C321179, set)
end

function Global.SetPlayerMayOnlyEnterThisVehicle(player, veh)
	return _in(0x6BC05942, player, veh)
end

function Global.SetPlayerMoodNormal(playerIndex)
	return _in(0x546F5326, playerIndex)
end

function Global.SetPlayerMoodPissedOff(playerIndex, unknown150)
	return _in(0x5E061170, playerIndex, unknown150)
end

function Global.SetPlayerMpModifier(player, Unk12, modifier)
	return _in(0x2B111E69, player, Unk12, modifier)
end

function Global.SetPlayerNeverGetsTired(playerIndex, value)
	return _in(0x0DDC19F4, playerIndex, value)
end

function Global.SetPlayerPainRootBankName(name)
	return _in(0x70AF1D38, _ts(name))
end

function Global.SetPlayerPlayerTargetting(set)
	return _in(0x46920944, set)
end

function Global.SetPlayerSettingsGenre(ped)
	return _in(0x379B0A8F, ped)
end

--- the status of default voip system. It affects on `NETWORK_IS_PLAYER_TALKING` and `mp_facial` animation.
-- This function doesn't need to be called every frame, it works like a switcher.
-- @param player The target player.
-- @param state Overriding state.
function Global.SetPlayerTalkingOverride(player, state)
	return _in(0xfc02caf6, player, state)
end

function Global.SetPlayerTeam(Player, team)
	return _in(0x3E733990, Player, team)
end

function Global.SetPlayersDropMoneyInNetworkGame(toggle)
	return _in(0x01651FBA, toggle)
end

function Global.SetPlayersettingsModelVariationsChoice(playerIndex)
	return _in(0x27650F37, playerIndex)
end

function Global.SetPoliceFocusWillTrackCar(car, set)
	return _in(0x0D374615, car, set)
end

function Global.SetPoliceIgnorePlayer(playerIndex, value)
	return _in(0x619D51D3, playerIndex, value)
end

function Global.SetPoliceRadarBlips(set)
	return _in(0x14790F9F, set)
end

function Global.SetPtfxCamInsideVehicle(set)
	return _in(0x137E6800, set)
end

function Global.SetRadarAsInteriorThisFrame()
	return _in(0x5C3F7E39)
end

function Global.SetRadarScale(scale)
	return _in(0x75ED39CF, scale)
end

function Global.SetRadarZoom(zoom)
	return _in(0x35E37826, zoom)
end

function Global.SetRailtrackResistanceMult(resistance)
	return _in(0x3D7B10E7, resistance)
end

function Global.SetRandomCarDensityMultiplier(density)
	return _in(0x073505E0, density)
end

function Global.SetRandomSeed(seed)
	return _in(0x1BA8350B, seed)
end

function Global.SetRecordingToPointNearestToCoors(cat, x, y, z)
	return _in(0x7B732460, cat, x, y, z)
end

function Global.SetReducePedModelBudget(set)
	return _in(0x44474526, set)
end

function Global.SetReduceVehicleModelBudget(set)
	return _in(0x71F965B4, set)
end

function Global.SetRelationship(relationshipLevel, relationshipGroup1, relationshipGroup2)
	return _in(0x03D916E4, relationshipLevel, relationshipGroup1, relationshipGroup2)
end

function Global.SetRenderTrainAsDerailed(train, set)
	return _in(0x08240FB7, train, set)
end

--- A setter for [GET_RESOURCE_KVP_STRING](#\_0x5240DA5A).
-- @param key The key to set
-- @param value The value to write
function Global.SetResourceKvp(key, value)
	return _in(0x21c7a35b, _ts(key), _ts(value))
end

--- A setter for [GET_RESOURCE_KVP_FLOAT](#\_0x35BDCEEA).
-- @param key The key to set
-- @param value The value to write
function Global.SetResourceKvpFloat(key, value)
	return _in(0x9add2938, _ts(key), value)
end

--- A setter for [GET_RESOURCE_KVP_INT](#\_0x557B586A).
-- @param key The key to set
-- @param value The value to write
function Global.SetResourceKvpInt(key, value)
	return _in(0x6a2b1e8, _ts(key), value)
end

function Global.SetReturnToFilterMenu(Unk970)
	return _in(0x733846D5, Unk970)
end

--- Sets the player's rich presence detail state for social platform providers to a specified string.
-- @param presenceState The rich presence string to set.
function Global.SetRichPresence(presenceState)
	return _in(0x7bdcbd45, _ts(presenceState))
end

function Global.SetRichPresence(Unk971, Unk972, Unk973, Unk974, Unk975)
	return _in(0x73AB2028, Unk971, Unk972, Unk973, Unk974, Unk975)
end

function Global.SetRichPresenceTemplatefilter()
	return _in(0x6B434D0D)
end

function Global.SetRichPresenceTemplatelobby(Unk976)
	return _in(0x77D72045, Unk976)
end

function Global.SetRichPresenceTemplatemp1(Unk977, Unk978, Unk979, Unk980)
	return _in(0x6C236A54, Unk977, Unk978, Unk979, Unk980)
end

function Global.SetRichPresenceTemplatemp2(Unk981)
	return _in(0x5AFA67D7, Unk981)
end

function Global.SetRichPresenceTemplatemp3(Unk982, Unk983)
	return _in(0x612062DB, Unk982, Unk983)
end

function Global.SetRichPresenceTemplatemp4(Unk984, Unk985)
	return _in(0x2BF8368E, Unk984, Unk985)
end

function Global.SetRichPresenceTemplatemp5(Unk986, Unk987, Unk988)
	return _in(0x314F6DD3, Unk986, Unk987, Unk988)
end

function Global.SetRichPresenceTemplatemp6(Unk989, Unk990, Unk991)
	return _in(0x05D70FE8, Unk989, Unk990, Unk991)
end

function Global.SetRichPresenceTemplateparty()
	return _in(0x422055C7)
end

function Global.SetRichPresenceTemplatesp1(Unk992, Unk993, Unk994)
	return _in(0x00132487, Unk992, Unk993, Unk994)
end

function Global.SetRichPresenceTemplatesp2(Unk995)
	return _in(0x09766174, Unk995)
end

function Global.SetRocketLauncherFreebieInHeli(set)
	return _in(0x77A97169, set)
end

function Global.SetRomansMood(moood)
	return _in(0x126F1175, moood)
end

function Global.SetRoomForCarByKey(car, roomkey)
	return _in(0x1E106A88, car, roomkey)
end

function Global.SetRoomForCarByName(car, roomname)
	return _in(0x2667609A, car, _ts(roomname))
end

function Global.SetRoomForCharByKey(ped, key)
	return _in(0x620C26D8, ped, key)
end

function Global.SetRoomForCharByName(ped, roomname)
	return _in(0x2E9B1F77, ped, _ts(roomname))
end

function Global.SetRoomForViewportByKey(viewportid, roomkey)
	return _in(0x07EE2A45, viewportid, roomkey)
end

function Global.SetRoomForViewportByName(viewportid, roomname)
	return _in(0x3DAF3F94, viewportid, _ts(roomname))
end

function Global.SetRotOrder(order)
	return _in(0x662E4376, order)
end

function Global.SetRotationForAttachedPed(ped, xr, yr, zr)
	return _in(0x1FE21CF0, ped, xr, yr, zr)
end

function Global.SetRoute(blip, value)
	return _in(0x7B8D68E7, blip, value)
end

function Global.SetScenarioPedDensityMultiplier(density, densitynext)
	return _in(0x3F0022F7, density, densitynext)
end

function Global.SetScreenFade(viewportid, Unk778, Unk779, Unk780, r, g, b, a, Unk781, Unk782, Unk783)
	return _in(0x188E0FAC, viewportid, Unk778, Unk779, Unk780, r, g, b, a, Unk781, Unk782, Unk783)
end

function Global.SetScriptLimitToGangSize(size)
	return _in(0x352921C4, size)
end

function Global.SetScriptMicLookAt(x, y, z)
	return _in(0x4DD43FFD, x, y, z)
end

function Global.SetScriptMicPosition(x, y, z)
	return _in(0x295D3A87, x, y, z)
end

function Global.SetScriptedAnimSeatOffset(ped, offset)
	return _in(0x718939EF, ped, offset)
end

function Global.SetScriptedConversionCentre(x, y, z)
	return _in(0x40F61D4A, x, y, z)
end

function Global.SetSelectedMenuItem(menuid, item)
	return _in(0x70291096, menuid, item)
end

function Global.SetSenseRange(ped, value)
	return _in(0x44D56F66, ped, value)
end

function Global.SetSequenceToRepeat(seq, repeat_)
	return _in(0x22E91F1F, seq, repeat_)
end

function Global.SetServerId(id)
	return _in(0x575136AC, id)
end

function Global.SetSirenWithNoDriver(car, set)
	return _in(0x47FD2517, car, set)
end

function Global.SetSleepModeActive(set)
	return _in(0x1C5552E9, set)
end

--- SET_SNAKEOIL_FOR_ENTRY
function Global.SetSnakeoilForEntry(name, path, data)
	return _in(0xa7dd3209, _ts(name), _ts(path), _ts(data))
end

function Global.SetSniperZoomFactor(factor)
	return _in(0x42690F6B, factor)
end

function Global.SetSpecificPassengerIndexToUseInGroups(ped, index)
	return _in(0x0EA118D0, ped, index)
end

function Global.SetSpritesDrawBeforeFade(set)
	return _in(0x615959BA, set)
end

function Global.SetStartFromFilterMenu(Unk996)
	return _in(0x3F6B5975, Unk996)
end

function Global.SetStatFrontendAlwaysVisible(set)
	return _in(0x656F1A7A, set)
end

function Global.SetStatFrontendDisplayType(stat, type)
	return _in(0x10436A86, stat, type)
end

function Global.SetStatFrontendNeverVisible(stat)
	return _in(0x3A6B0308, stat)
end

function Global.SetStatFrontendVisibility(stat, set)
	return _in(0x45D23711, stat, set)
end

function Global.SetStatFrontendVisibleAfterIncremented(stat)
	return _in(0x12D67ADA, stat)
end

--- Internal function for setting a state bag value.
function Global.SetStateBagValue(bagName, keyName, valueData, valueLength, replicated)
	return _in(0x8d50e33a, _ts(bagName), _ts(keyName), _ts(valueData), valueLength, replicated)
end

function Global.SetStateOfClosestDoorOfType(model, x, y, z, state, Unk601)
	return _in(0x10974B70, model, x, y, z, state, Unk601)
end

function Global.SetStreamParams(rolloff, UnkTime)
	return _in(0x16CB4F86, rolloff, UnkTime)
end

function Global.SetStreamingRequestListTime(time)
	return _in(0x01FF6618, time)
end

function Global.SetSuppressHeadlightSwitch(set)
	return _in(0x43EF56EE, set)
end

function Global.SetSwimSpeed(ped, speed)
	return _in(0x32B4293B, ped, speed)
end

function Global.SetSyncWeatherAndGameTime(Unk997)
	return _in(0x51112E95, Unk997)
end

function Global.SetTargetCarForMissionGarage(garage, car)
	return _in(0x6EF667A4, garage, car)
end

function Global.SetTaxiGarageRadioState(radiostate)
	return _in(0x299C5EBC, radiostate)
end

function Global.SetTaxiLights(car, set)
	return _in(0x460837F9, car, set)
end

function Global.SetTelescopeCamAngleLimits(Unk583, Unk584, Unk585, Unk586, Unk587, Unk588)
	return _in(0x6680196B, Unk583, Unk584, Unk585, Unk586, Unk587, Unk588)
end

function Global.SetTextBackground(value)
	return _in(0x768F5140, value)
end

function Global.SetTextCentre(value)
	return _in(0x204A6AA4, value)
end

function Global.SetTextCentreWrapx(wrapx)
	return _in(0x716308C6, wrapx)
end

--- SET_TEXT_CHAT_ENABLED
function Global.SetTextChatEnabled(enabled)
	return _in(0x97b2f9f8, enabled, _r)
end

function Global.SetTextColour(r, g, b, a)
	return _in(0x19C967B5, r, g, b, a)
end

function Global.SetTextDrawBeforeFade(value)
	return _in(0x6CFD0610, value)
end

function Global.SetTextDropshadow(displayShadow, r, g, b, a)
	return _in(0x58F5023F, displayShadow, r, g, b, a)
end

function Global.SetTextEdge(displayEdge, r, g, b, a)
	return _in(0x2D7A725D, displayEdge, r, g, b, a)
end

function Global.SetTextFont(font)
	return _in(0x75363BB5, font)
end

function Global.SetTextInputActive(set)
	return _in(0x2A28684C, set)
end

function Global.SetTextJustify(value)
	return _in(0x049D23F9, value)
end

function Global.SetTextLineDisplay(unk1, unk2)
	return _in(0x1F6A54B6, unk1, unk2)
end

function Global.SetTextLineHeightMult(lineHeight)
	return _in(0x5BF53817, lineHeight)
end

function Global.SetTextProportional(value)
	return _in(0x15585A65, value)
end

function Global.SetTextRenderId(renderId)
	return _in(0x2B1B0290, renderId)
end

function Global.SetTextRightJustify(value)
	return _in(0x748B78B6, value)
end

function Global.SetTextScale(w, h)
	return _in(0x02C069E5, w, h)
end

function Global.SetTextToUseTextFileColours(value)
	return _in(0x52CE650B, value)
end

function Global.SetTextUseUnderscore(value)
	return _in(0x0AD54D75, value)
end

function Global.SetTextViewportId(id)
	return _in(0x3F9B2DD6, id)
end

function Global.SetTextWrap(unk1, unk2)
	return _in(0x19D006EB, unk1, unk2)
end

function Global.SetThisMachineRunningServerScript(host)
	return _in(0x382A19BE, host)
end

function Global.SetThisScriptCanRemoveBlipsCreatedByAnyScript(allow)
	return _in(0x29D64E72, allow)
end

function Global.SetTimeCycleFarClipDisabled(set)
	return _in(0x13C75E16, set)
end

function Global.SetTimeOfDay(hour, minute)
	return _in(0x52100540, hour, minute)
end

function Global.SetTimeOfNextAppointment(time)
	return _in(0x0A7D3AF9, time)
end

function Global.SetTimeOneDayBack()
	return _in(0x18136217)
end

function Global.SetTimeOneDayForward()
	return _in(0x79CF27AC)
end

function Global.SetTimeScale(scale)
	return _in(0x24D467CC, scale)
end

function Global.SetTimecycleModifier(name)
	return _in(0x3C997E4C, _ts(name))
end

--- SET_TIMECYCLE_MODIFIER_VAR
-- @param modifierName The name of timecycle modifier.
-- @param varName The name of timecycle variable.
-- @param value1 The first value of variable.
-- @param value2 The second value of variable.
function Global.SetTimecycleModifierVar(modifierName, varName, value1, value2)
	return _in(0x6e0a422b, _ts(modifierName), _ts(varName), value1, value2)
end

function Global.SetTimerBeepCountdownTime(timerid, beeptime)
	return _in(0x66B93E8C, timerid, beeptime)
end

function Global.SetTotalNumberOfMissions(floatstatval)
	return _in(0x09DE74E5, floatstatval)
end

function Global.SetTrainAudioRolloff(train, rolloff)
	return _in(0x01C21158, train, rolloff)
end

function Global.SetTrainCruiseSpeed(train, speed)
	return _in(0x02E93A3E, train, speed)
end

function Global.SetTrainForcedToSlowDown(train, set)
	return _in(0x475267B0, train, set)
end

function Global.SetTrainIsStoppedAtStation(train)
	return _in(0x270C7AB3, train)
end

function Global.SetTrainSpeed(train, speed)
	return _in(0x3F4950AC, train, speed)
end

function Global.SetTrainStopsForStations(train, set)
	return _in(0x5D154995, train, set)
end

function Global.SetUpsidedownCarNotDamaged(car, set)
	return _in(0x353317C7, car, set)
end

function Global.SetUseHighdof(set)
	return _in(0x4A1D15D5, set)
end

function Global.SetUseLegIk(player, set)
	return _in(0x4F705478, player, set)
end

function Global.SetUsePoolGamePhysicsSettings(set)
	return _in(0x5C162D0D, set)
end

function Global.SetUsesCollisionOfClosestObjectOfType(x, y, z, radius, type_or_model, flag)
	return _in(0x07BC4223, x, y, z, radius, type_or_model, flag)
end

function Global.SetVariableOnSound(sound, varname, value)
	return _in(0x39200B83, sound, _ts(varname), value)
end

function Global.SetVehAlarm(veh, set)
	return _in(0x0CF76EE0, veh, set)
end

function Global.SetVehAlarmDuration(veh, duration)
	return _in(0x5FFE33EC, veh, duration)
end

function Global.SetVehHasStrongAxles(veh, set)
	return _in(0x63DE7A05, veh, set)
end

function Global.SetVehHazardlights(vehicle, on)
	return _in(0x24B42ED2, vehicle, on)
end

function Global.SetVehIndicatorlights(veh, set)
	return _in(0x71D72486, veh, set)
end

function Global.SetVehInteriorlight(veh, set)
	return _in(0x49EA22C8, veh, set)
end

function Global.SetVehicleAlpha(veh, alpha)
	return _in(0x0C4B7DD3, veh, alpha)
end

function Global.SetVehicleAlwaysRender(veh)
	return _in(0x4A4B0F18, veh)
end

function Global.SetVehicleCanBeTargetted(veh, set)
	return _in(0x2B9B35C3, veh, set)
end

function Global.SetVehicleDeformationMult(veh, multiplier)
	return _in(0x7B65266B, veh, multiplier)
end

function Global.SetVehicleDirtLevel(vehicle, intensity)
	return _in(0x02A57428, vehicle, intensity)
end

function Global.SetVehicleExplodesOnHighExplosionDamage(veh, set)
	return _in(0x7B4A7CD6, veh, set)
end

function Global.SetVehicleIsConsideredByPlayer(veh, set)
	return _in(0x720673D9, veh, set)
end

function Global.SetVehicleQuaternion(veh, qx, qy, qz, qw)
	return _in(0x43573596, veh, qx, qy, qz, qw)
end

function Global.SetVehicleRenderScorched(veh, set)
	return _in(0x07205796, veh, set)
end

function Global.SetVehicleSteerBias(veh, val)
	return _in(0x091D1480, veh, val)
end

function Global.SetViewport(viewportid, Unk589, Unk590, Unk591, Unk592)
	return _in(0x0EE87310, viewportid, Unk589, Unk590, Unk591, Unk592)
end

function Global.SetViewportDestination(viewportid, x, y, z, Unk593, Unk594, Unk595)
	return _in(0x1C810358, viewportid, x, y, z, Unk593, Unk594, Unk595)
end

function Global.SetViewportMirrored(viewportid, set)
	return _in(0x61784349, viewportid, set)
end

function Global.SetViewportPriority(viewportid, priority)
	return _in(0x5DA1752F, viewportid, priority)
end

function Global.SetViewportShape(cam, shape)
	return _in(0x43ED66E3, cam, shape)
end

function Global.SetVisibilityOfClosestObjectOfType(x, y, z, radius, type_or_model, set)
	return _in(0x20A04BEE, x, y, z, radius, type_or_model, set)
end

function Global.SetVisibilityOfNearbyEntityWithSpecialAttribute(attribute, set)
	return _in(0x6DDD201D, attribute, set)
end

--- Overrides a floating point value from `visualsettings.dat` temporarily.
-- @param name The name of the value to set, such as `pedLight.color.red`.
-- @param value The value to write.
function Global.SetVisualSettingFloat(name, value)
	return _in(0xd1d31681, _ts(name), value)
end

function Global.SetVoiceIdFromHeadComponent(ped, VoiceId, IsMale)
	return _in(0x02794E6B, ped, VoiceId, IsMale)
end

function Global.SetWantedMultiplier(multiplier)
	return _in(0x51E14C1B, multiplier)
end

function Global.SetWeaponPickupNetworkRegenTime(weaponType, timeMS)
	return _in(0x40D01439, weaponType, timeMS)
end

--- Sets whether or not the weather should be owned by the network subsystem.
-- To be able to use [\_SET_WEATHER_TYPE_TRANSITION](#\_0x578C752848ECFA0C), this has to be set to false.
-- @param network true to let the network control weather, false to not use network weather behavior.
function Global.SetWeatherOwnedByNetwork(network)
	return _in(0x2703d582, network)
end

function Global.SetWebPageLinkActive(htmlviewport, linkid, active)
	return _in(0x5F5E7F39, htmlviewport, linkid, active)
end

function Global.SetWebPageScroll(htmlviewport, scroll)
	return _in(0x55DE40EE, htmlviewport, scroll)
end

function Global.SetWidescreenBorders(set)
	return _in(0x06C71148, set)
end

function Global.SetWidescreenFormat(wideformatid)
	return _in(0x7BDE2CAF, wideformatid)
end

function Global.SetZoneNoCops(name, set)
	return _in(0x64F37F05, _ts(name), set)
end

function Global.SetZonePopulationType(zone, poptype)
	return _in(0x70582D53, _ts(zone), poptype)
end

function Global.SetZoneScumminess(zone, scumminess)
	return _in(0x5E5E4252, _ts(zone), scumminess)
end

function Global.Settimera(value)
	return _in(0x32501B1E, value)
end

function Global.Settimerb(value)
	return _in(0x3B4C2E2E, value)
end

function Global.Settimerc(Unk1088)
	return _in(0x499852DB, Unk1088)
end

function Global.ShakePad(Unk838, Unk839, Unk840)
	return _in(0x66CC16BD, Unk838, Unk839, Unk840)
end

function Global.ShakePadInCutscene(Unk841, Unk842, Unk843)
	return _in(0x2D040DA9, Unk841, Unk842, Unk843)
end

function Global.ShakePlayerpadWhenControllerDisabled()
	return _in(0x691970FD)
end

function Global.ShiftLeft(val, shifts)
	return _in(0x102A0A6C, val, shifts, _ri)
end

function Global.ShiftRight(val, shifts)
	return _in(0x64DD173C, val, shifts, _ri)
end

function Global.ShowBlipOnAltimeter(blip, show)
	return _in(0x1DD86C2A, blip, show)
end

function Global.ShowSigninUi()
	return _in(0x72397ECD)
end

function Global.ShowUpdateStats(show)
	return _in(0x59486829, show)
end

function Global.ShutCarDoor(vehicle, door)
	return _in(0x5E7A620E, vehicle, door)
end

function Global.ShutdownAndLaunchNetworkGame(episode)
	return _in(0x1BC5050E, episode)
end

function Global.ShutdownAndLaunchSinglePlayerGame()
	return _in(0x49FD2621)
end

--- Shuts down the `loadingScreen` NUI frame, similarly to `SHUTDOWN_LOADING_SCREEN`.
function Global.ShutdownLoadingScreenNui()
	return _in(0xb9234afb)
end

function Global.SimulateUpdateLoadScene()
	return _in(0x246D47CE)
end

function Global.Sin(value)
	return _in(0x1EC10CE1, value, _rf)
end

function Global.SkipInPlaybackRecordedCar(car, time)
	return _in(0x2C8C61BA, car, time)
end

function Global.SkipRadioForward()
	return _in(0x12A86E89)
end

function Global.SkipTimeInPlaybackRecordedCar(CarRec, time)
	return _in(0x255059BB, CarRec, time)
end

function Global.SkipToEndAndStopPlaybackRecordedCar(car)
	return _in(0x0D192F80, car)
end

function Global.SkipToNextAllowedStation(train)
	return _in(0x653B5374, train)
end

function Global.SkipToNextScriptedConversationLine()
	return _in(0x294C35B0)
end

function Global.SlideObject(obj, x, y, z, xs, ys, zs, flag)
	return _in(0x11B76EDF, obj, x, y, z, xs, ys, zs, flag, _r)
end

function Global.SmashCarWindow(car, windownum)
	return _in(0x2CDF628C, car, windownum)
end

function Global.SmashGlassOnObject(x, y, z, Unk75, model, Unk76)
	return _in(0x2F877E8A, x, y, z, Unk75, model, Unk76, _r)
end

function Global.SnapshotCam(cam, Unk596)
	return _in(0x34BF456A, cam, Unk596)
end

function Global.SoundCarHorn(vehicle, duration)
	return _in(0x024859B5, vehicle, duration)
end

function Global.SpecifyScriptPopulationZoneArea(Unk848, Unk849, Unk850, Unk851, Unk852, Unk853)
	return _in(0x5A07394A, Unk848, Unk849, Unk850, Unk851, Unk852, Unk853)
end

function Global.SpecifyScriptPopulationZoneGroups(Unk854, Unk855, Unk856, Unk857, Unk858)
	return _in(0x70F0538F, Unk854, Unk855, Unk856, Unk857, Unk858)
end

function Global.SpecifyScriptPopulationZoneNumCars(num)
	return _in(0x1B886584, num)
end

function Global.SpecifyScriptPopulationZoneNumParkedCars(num)
	return _in(0x2EB751CC, num)
end

function Global.SpecifyScriptPopulationZoneNumPeds(num)
	return _in(0x159A4ED4, num)
end

function Global.SpecifyScriptPopulationZoneNumScenarioPeds(num)
	return _in(0x6A733E6C, num)
end

function Global.SpecifyScriptPopulationZonePercentageCops(percentage)
	return _in(0x49FF799A, percentage)
end

function Global.SpotCheck5()
	return _in(0x6B4D6FC6, _r)
end

function Global.SpotCheck6()
	return _in(0x52277FB2, _r)
end

function Global.SpotCheck7()
	return _in(0x46CC31B4, _r)
end

function Global.SpotCheck8()
	return _in(0x7B1B14BD, _r)
end

function Global.Sqrt(value)
	return _in(0x2C297C5D, value, _rf)
end

function Global.StartCarFire(vehicle)
	return _in(0x3D703ED7, vehicle, _ri)
end

function Global.StartCharFire(ped)
	return _in(0x5FB31295, ped, _ri)
end

function Global.StartCredits()
	return _in(0x7F3222FD)
end

function Global.StartCustomMobilePhoneRinging(RingtoneId)
	return _in(0x59406EB1, RingtoneId)
end

function Global.StartCutscene()
	return _in(0x5F752F19)
end

function Global.StartCutsceneNow(name)
	return _in(0x53591DD7, _ts(name))
end

function Global.StartEndCreditsMusic()
	return _in(0x587E55D3)
end

--- Equivalent of [START_FIND_KVP](#\_0xDD379006), but for another resource than the current one.
-- @param resourceName The resource to try finding the key/values for
-- @param prefix A prefix match
-- @return A KVP find handle to use with [FIND_KVP](#\_0xBD7BEBC5) and close with [END_FIND_KVP](#\_0xB3210203)
function Global.StartFindExternalKvp(resourceName, prefix)
	return _in(0x8f2eecc3, _ts(resourceName), _ts(prefix), _ri)
end

--- START_FIND_KVP
-- @param prefix A prefix match
-- @return A KVP find handle to use with [FIND_KVP](#\_0xBD7BEBC5) and close with [END_FIND_KVP](#\_0xB3210203)
function Global.StartFindKvp(prefix)
	return _in(0xdd379006, _ts(prefix), _ri)
end

function Global.StartFiringAmnesty()
	return _in(0x5DB83661)
end

function Global.StartGpsRaceTrack(trackid)
	return _in(0x422C1818, trackid)
end

function Global.StartKillFrenzy(gxtname, Unk512, Unk513, Unk514, Unk515, Unk516, Unk517, Unk518, Unk519)
	return _in(0x077B17B5, _ts(gxtname), Unk512, Unk513, Unk514, Unk515, Unk516, Unk517, Unk518, Unk519)
end

function Global.StartLoadScene(x, y, z)
	return _in(0x54320B58, x, y, z)
end

function Global.StartMobilePhoneCall(callfrom, callfromvoice, callto, calltovoice, flag0, flag1)
	return _in(0x7939764F, callfrom, _ts(callfromvoice), callto, _ts(calltovoice), flag0, flag1)
end

function Global.StartMobilePhoneCalling()
	return _in(0x67114B98)
end

function Global.StartMobilePhoneRinging()
	return _in(0x372C0DF1)
end

function Global.StartNewScript(scriptName, stacksize)
	return _in(0x4E2260B9, _ts(scriptName), stacksize, _ri)
end

function Global.StartNewScriptWithArgs(scriptname, paramcount, stacksize)
	return _in(0x706707E6, _ts(scriptname), _i, paramcount, stacksize, _ri)
end

function Global.StartNewWidgetCombo()
	return _in(0x03893A3A)
end

function Global.StartObjectFire(obj)
	return _in(0x2D7D5DD2, obj, _ri)
end

function Global.StartPedMobileRinging(ped, Unk801)
	return _in(0x79A12A52, ped, Unk801)
end

function Global.StartPlaybackRecordedCar(car, CarRec)
	return _in(0x53335A45, car, CarRec)
end

function Global.StartPlaybackRecordedCarLooped(car, Unk69)
	return _in(0x01E33E33, car, Unk69)
end

function Global.StartPlaybackRecordedCarUsingAi(car, CarRec)
	return _in(0x5D900560, car, CarRec)
end

function Global.StartPlaybackRecordedCarWithOffset(car, CarRec, x, y, z)
	return _in(0x02491769, car, CarRec, x, y, z)
end

function Global.StartPtfx(name, x, y, z, yaw, pitch, roll, scale)
	return _in(0x3A774777, _ts(name), x, y, z, yaw, pitch, roll, scale, _ri)
end

function Global.StartPtfxOnObj(name, obj, x, y, z, yaw, pitch, roll, scale)
	return _in(0x0D8407E9, _ts(name), obj, x, y, z, yaw, pitch, roll, scale, _ri)
end

function Global.StartPtfxOnObjBone(name, obj, x, y, z, yaw, pitch, roll, objbone, scale)
	return _in(0x60980323, _ts(name), obj, x, y, z, yaw, pitch, roll, objbone, scale, _ri)
end

function Global.StartPtfxOnPed(name, ped, x, y, z, yaw, pitch, roll, scale)
	return _in(0x381C1F1C, _ts(name), ped, x, y, z, yaw, pitch, roll, scale, _ri)
end

function Global.StartPtfxOnPedBone(name, ped, x, y, z, yaw, pitch, roll, pedbone, scale)
	return _in(0x2209116C, _ts(name), ped, x, y, z, yaw, pitch, roll, pedbone, scale, _ri)
end

function Global.StartPtfxOnVeh(name, veh, x, y, z, yaw, pitch, roll, scale)
	return _in(0x5C4B1A8A, _ts(name), veh, x, y, z, yaw, pitch, roll, scale, _ri)
end

function Global.StartScriptConversation(flag0, flag1)
	return _in(0x288E50A3, flag0, flag1)
end

function Global.StartScriptFire(x, y, z, numGenerationsAllowed, strength)
	return _in(0x24742BB9, x, y, z, numGenerationsAllowed, strength, _ri)
end

function Global.StartStreamingRequestList(name)
	return _in(0x7858750E, _ts(name))
end

function Global.StopCarBreaking(car, stop)
	return _in(0x29305D67, car, stop)
end

function Global.StopCredits()
	return _in(0x4F0F2AA8)
end

function Global.StopCutscene()
	return _in(0x50FF1428)
end

function Global.StopEndCreditsMusic()
	return _in(0x47E93CB8)
end

function Global.StopMobilePhoneRinging()
	return _in(0x27356F3A)
end

function Global.StopMovie()
	return _in(0x2E6F4C82)
end

function Global.StopPedDoingFallOffTestsWhenShot(ped)
	return _in(0x4E386C7B, ped)
end

function Global.StopPedMobileRinging(ped)
	return _in(0x07827AE1, ped)
end

function Global.StopPedSpeaking(ped, stopspeaking)
	return _in(0x710B2BD3, ped, stopspeaking)
end

function Global.StopPedWeaponFiringWhenDropped(ped)
	return _in(0x6E0026EF, ped)
end

function Global.StopPlaybackRecordedCar(car)
	return _in(0x71C91921, car)
end

function Global.StopPreviewRingtone()
	return _in(0x5B1D57EF)
end

function Global.StopPtfx(ptfx)
	return _in(0x0EAA4429, ptfx)
end

function Global.StopSound(sound)
	return _in(0x09DB00B9, sound)
end

function Global.StopStream()
	return _in(0x66915CE9)
end

function Global.StopSyncingScriptAnimations(Unk1061)
	return _in(0x47F430BE, Unk1061)
end

function Global.StopVehicleAlwaysRender(veh)
	return _in(0x7CDD7B0E, veh)
end

function Global.StoreCarCharIsInNoSave(ped, car)
	return _in(0x21CC647F, ped, _ii(car) --[[ may be optional ]])
end

function Global.StoreDamageTrackerForNetworkPlayer(playerIndex, ukn57, Unk895)
	return _in(0x68373878, playerIndex, ukn57, Unk895, _ri)
end

function Global.StoreScore(playerIndex, value)
	return _in(0x1E203014, playerIndex, _ii(value) --[[ may be optional ]])
end

function Global.StoreScriptValuesForNetworkGame(Unk998)
	return _in(0x1DFF5B06, Unk998)
end

function Global.StoreWantedLevel(playerIndex, value)
	return _in(0x12AA6D71, playerIndex, _ii(value) --[[ may be optional ]])
end

function Global.StreamCutscene()
	return _in(0x0F0D2025)
end

function Global.StringDifference(str0, str1)
	return _in(0x25204F8B, _ts(str0), _ts(str1), _ri)
end

function Global.StringString(str0, str1)
	return _in(0x6C0E191F, _ts(str0), _ts(str1), _ri)
end

function Global.StringToInt(str, intval)
	return _in(0x5C3248B5, _ts(str), _ii(intval) --[[ may be optional ]], _r)
end

function Global.SuppressCarModel(model)
	return _in(0x768F640F, model)
end

function Global.SuppressFadeInAfterDeathArrest(set)
	return _in(0x3FB83379, set)
end

function Global.SuppressPedModel(model)
	return _in(0x4C5475E3, model)
end

function Global.SwapNearestBuildingModel(x, y, z, radius, modelfrom, modelto)
	return _in(0x5E077484, x, y, z, radius, modelfrom, modelto)
end

function Global.SwitchAmbientPlanes(on)
	return _in(0x4E637988, on)
end

function Global.SwitchArrowAboveBlippedPickups(on)
	return _in(0x3A323C67, on)
end

function Global.SwitchCarGenerator(handle, type)
	return _in(0x7CE83A30, handle, type)
end

function Global.SwitchCarSiren(car, siren)
	return _in(0x7781290F, car, siren)
end

function Global.SwitchGarbageTrucks(on)
	return _in(0x060669FE, on)
end

function Global.SwitchMadDrivers(on)
	return _in(0x34CB6291, on)
end

function Global.SwitchObjectBrains(brain, switchstate)
	return _in(0x35213375, brain, switchstate)
end

function Global.SwitchOffWaypoint()
	return _in(0x1B5B4ED9)
end

function Global.SwitchPedPathsOff(x0, y0, z0, x1, y1, z1)
	return _in(0x008A2256, x0, y0, z0, x1, y1, z1)
end

function Global.SwitchPedPathsOn(x0, y0, z0, x1, y1, z1)
	return _in(0x67D908DF, x0, y0, z0, x1, y1, z1)
end

function Global.SwitchPedRoadsBackToOriginal(x0, y0, z0, x1, y1, z1)
	return _in(0x6AA20B7E, x0, y0, z0, x1, y1, z1)
end

function Global.SwitchPedToAnimated(ped, unknownTrue)
	return _in(0x762301C8, ped, unknownTrue)
end

function Global.SwitchPedToRagdoll(ped, Unk14, time, flag0, flag1, flag2, flag3)
	return _in(0x1A0F56C5, ped, Unk14, time, flag0, flag1, flag2, flag3, _r)
end

function Global.SwitchPedToRagdollWithFall(ped, Unk15, Unk16, Unk17, Unk18, Unk19, Unk20, Unk21, Unk22, Unk23, Unk24, Unk25, Unk26, Unk27)
	return _in(0x13E4042D, ped, Unk15, Unk16, Unk17, Unk18, Unk19, Unk20, Unk21, Unk22, Unk23, Unk24, Unk25, Unk26, Unk27, _r)
end

function Global.SwitchPoliceHelis(set)
	return _in(0x0CA46B08, set)
end

function Global.SwitchRandomBoats(on)
	return _in(0x7FC65855, on)
end

function Global.SwitchRandomTrains(on)
	return _in(0x0FFD1A92, on)
end

function Global.SwitchRoadsBackToOriginal(x0, y0, z0, x1, y1, z1)
	return _in(0x6251618F, x0, y0, z0, x1, y1, z1)
end

function Global.SwitchRoadsOff(x0, y0, z0, x1, y1, z1)
	return _in(0x4C3C1F3C, x0, y0, z0, x1, y1, z1)
end

function Global.SwitchRoadsOn(x0, y0, z0, x1, y1, z1)
	return _in(0x56553F38, x0, y0, z0, x1, y1, z1)
end

function Global.SwitchStreaming(on)
	return _in(0x6E397D96, on)
end

function Global.SynchAmbientPlanes(Unk520, Unk521)
	return _in(0x5AFD2049, Unk520, Unk521)
end

function Global.SynchRecordingWithWater()
	return _in(0x018A0EE0, _r)
end

function Global.TakeCarOutOfParkedCarsBudget(car, out)
	return _in(0x60EF0519, car, out)
end

function Global.Tan(value)
	return _in(0x24CC682B, value, _rf)
end

function Global.TaskAchieveHeading(ped, heading)
	return _in(0x6D6A1261, ped, heading)
end

function Global.TaskAimGunAtChar(ped, targetPed, duration)
	return _in(0x4437501B, ped, targetPed, duration)
end

function Global.TaskAimGunAtCoord(ped, tX, tY, tZ, duration)
	return _in(0x0AA202B0, ped, tX, tY, tZ, duration)
end

function Global.TaskCarDriveToCoord(ped, veh, Unk133, Unk134, Unk135, Unk136, Unk137, Unk138, Unk139, Unk140, Unk141)
	return _in(0x69715285, ped, veh, Unk133, Unk134, Unk135, Unk136, Unk137, Unk138, Unk139, Unk140, Unk141)
end

function Global.TaskCarDriveToCoordNotAgainstTraffic(ped, Unk142, Unk143, Unk144, Unk145, Unk146, Unk147, Unk148, Unk149, Unk150, Unk151)
	return _in(0x483A62AB, ped, Unk142, Unk143, Unk144, Unk145, Unk146, Unk147, Unk148, Unk149, Unk150, Unk151)
end

function Global.TaskCarDriveWander(ped, vehicle, speed, drivingStyle)
	return _in(0x1E9635A9, ped, vehicle, speed, drivingStyle)
end

function Global.TaskCarMission(ped, vehicle, targetEntity, missionType, speed, drivingStyle, unknown6_10, unknown7_5)
	return _in(0x36273536, ped, vehicle, targetEntity, missionType, speed, drivingStyle, unknown6_10, unknown7_5)
end

function Global.TaskCarMissionCoorsTarget(ped, vehicle, x, y, z, unknown0_4, speed, unknown2_1, unknown3_5, unknown4_10)
	return _in(0x36D51DDF, ped, vehicle, x, y, z, unknown0_4, speed, unknown2_1, unknown3_5, unknown4_10)
end

function Global.TaskCarMissionCoorsTargetNotAgainstTraffic(ped, vehicle, x, y, z, unknown0_4, speed, unknown2_1, unknown3_5, unknown4_10)
	return _in(0x3CB4693B, ped, vehicle, x, y, z, unknown0_4, speed, unknown2_1, unknown3_5, unknown4_10)
end

function Global.TaskCarMissionNotAgainstTraffic(ped, vehicle, targetEntity, missionType, speed, drivingStyle, unknown6_10, unknown7_5)
	return _in(0x3BE7444A, ped, vehicle, targetEntity, missionType, speed, drivingStyle, unknown6_10, unknown7_5)
end

function Global.TaskCarMissionPedTarget(ped, vehicle, target, unknown0_4, speed, unknown2_1, unknown3_5, unknown4_10)
	return _in(0x39C2663E, ped, vehicle, target, unknown0_4, speed, unknown2_1, unknown3_5, unknown4_10)
end

function Global.TaskCarMissionPedTargetNotAgainstTraffic(ped, Unk152, Unk153, Unk154, Unk155, Unk156, Unk157, Unk158)
	return _in(0x178332FF, ped, Unk152, Unk153, Unk154, Unk155, Unk156, Unk157, Unk158)
end

function Global.TaskCarTempAction(ped, vehicle, action, duration)
	return _in(0x11612815, ped, vehicle, action, duration)
end

function Global.TaskCharArrestChar(ped0, ped1)
	return _in(0x71A05FF1, ped0, ped1)
end

function Global.TaskCharSlideToCoord(ped, Unk159, Unk160, Unk161, Unk162, Unk163)
	return _in(0x04962F82, ped, Unk159, Unk160, Unk161, Unk162, Unk163)
end

function Global.TaskCharSlideToCoordAndPlayAnim(ped, Unk164, Unk165, Unk166, Unk167, Unk168, Unk169, Unk170, Unk171, Unk172, Unk173, Unk174, Unk175, Unk176)
	return _in(0x79BB1D64, ped, Unk164, Unk165, Unk166, Unk167, Unk168, Unk169, Unk170, Unk171, Unk172, Unk173, Unk174, Unk175, Unk176)
end

function Global.TaskCharSlideToCoordHdgRate(ped, Unk177, Unk178, Unk179, Unk180, Unk181, Unk182)
	return _in(0x33D756A0, ped, Unk177, Unk178, Unk179, Unk180, Unk181, Unk182)
end

function Global.TaskChatWithChar(ped, pednext, Unk183, Unk184)
	return _in(0x5C9807CA, ped, pednext, Unk183, Unk184)
end

function Global.TaskClearLookAt(ped)
	return _in(0x05745ACA, ped)
end

function Global.TaskClimb(ped, Unk185)
	return _in(0x4678769C, ped, Unk185)
end

function Global.TaskClimbLadder(ped, Unk186)
	return _in(0x0ABE3FA8, ped, Unk186)
end

function Global.TaskCombat(ped, target)
	return _in(0x1F157FD3, ped, target)
end

function Global.TaskCombatHatedTargetsAroundChar(ped, radius)
	return _in(0x127669D3, ped, radius)
end

function Global.TaskCombatHatedTargetsAroundCharTimed(ped, radius, duration)
	return _in(0x15012850, ped, radius, duration)
end

function Global.TaskCombatHatedTargetsInArea(ped, Unk187, Unk188, Unk189, Unk190)
	return _in(0x06B840F1, ped, Unk187, Unk188, Unk189, Unk190)
end

function Global.TaskCombatRoll(ped, Unk191)
	return _in(0x131A0C84, ped, Unk191)
end

function Global.TaskCombatTimed(ped, target, duration)
	return _in(0x56F04A05, ped, target, duration)
end

function Global.TaskCower(ped)
	return _in(0x29103E08, ped)
end

function Global.TaskDead(ped)
	return _in(0x3E1051E0, ped)
end

function Global.TaskDestroyCar(ped, car)
	return _in(0x787A3D4C, ped, car)
end

function Global.TaskDie(ped)
	return _in(0x7EED364B, ped)
end

function Global.TaskDriveBy(ped, pednext, Unk192, x, y, z, angle, Unk193, Unk194, Unk195)
	return _in(0x3FB22EE2, ped, pednext, Unk192, x, y, z, angle, Unk193, Unk194, Unk195)
end

function Global.TaskDrivePointRoute(ped, point, radius)
	return _in(0x2C18736E, ped, point, radius)
end

function Global.TaskDrivePointRouteAdvanced(ped, Unk197, Unk198, Unk199, Unk200, Unk201)
	return _in(0x7A0A1063, ped, Unk197, Unk198, Unk199, Unk200, Unk201)
end

function Global.TaskDuck(ped, Unk202)
	return _in(0x72BF79F1, ped, Unk202)
end

function Global.TaskEnterCarAsDriver(ped, vehicle, duration)
	return _in(0x5BF03315, ped, vehicle, duration)
end

function Global.TaskEnterCarAsPassenger(ped, vehicle, duration, seatIndex)
	return _in(0x0A2C70AF, ped, vehicle, duration, seatIndex)
end

function Global.TaskEveryoneLeaveCar(vehicle)
	return _in(0x41E45BE5, vehicle)
end

function Global.TaskExtendRoute(ped, Unk203, Unk204)
	return _in(0x75353EA4, ped, Unk203, Unk204)
end

function Global.TaskFallAndGetUp(ped, Unk205, Unk206)
	return _in(0x069433A8, ped, Unk205, Unk206)
end

function Global.TaskFleeCharAnyMeans(ped, Unk207, Unk208, Unk209, Unk210, Unk211, Unk212, Unk213)
	return _in(0x32517AE2, ped, Unk207, Unk208, Unk209, Unk210, Unk211, Unk212, Unk213)
end

function Global.TaskFlushRoute()
	return _in(0x760E0A0F)
end

function Global.TaskFollowFootsteps(ped, Unk214)
	return _in(0x45DF7CCA, ped, Unk214)
end

function Global.TaskFollowNavMeshAndSlideToCoord(ped, x, y, z, Unk215, Unk216, Unk217, angle)
	return _in(0x36537CE1, ped, x, y, z, Unk215, Unk216, Unk217, angle)
end

function Global.TaskFollowNavMeshAndSlideToCoordHdgRate(ped, x, y, z, Unk218, Unk219, Unk220, angle, rate)
	return _in(0x38824BFE, ped, x, y, z, Unk218, Unk219, Unk220, angle, rate)
end

function Global.TaskFollowNavMeshToCoord(ped, x, y, z, unknown0_2, unknown1_minus1, unknown2_1)
	return _in(0x1B31390E, ped, x, y, z, unknown0_2, unknown1_minus1, unknown2_1)
end

function Global.TaskFollowNavMeshToCoordNoStop(ped, x, y, z, unknown0_2, unknown1_minus1, unknown2_1)
	return _in(0x1BF67441, ped, x, y, z, unknown0_2, unknown1_minus1, unknown2_1)
end

function Global.TaskGetOffBoat(ped, timeout)
	return _in(0x6C63251D, ped, timeout)
end

function Global.TaskGoStraightToCoord(ped, x, y, z, unknown2, unknown45000)
	return _in(0x19591255, ped, x, y, z, unknown2, unknown45000)
end

function Global.TaskGoStraightToCoordRelativeToCar(ped, Unk227, Unk228, Unk229, Unk230, Unk231, Unk232)
	return _in(0x498B3BE4, ped, Unk227, Unk228, Unk229, Unk230, Unk231, Unk232)
end

function Global.TaskGoToChar(ped, Unk233, Unk234, Unk235)
	return _in(0x664D06FF, ped, Unk233, Unk234, Unk235)
end

function Global.TaskGoToCoordAnyMeans(ped, Unk236, Unk237, Unk238, Unk239, Unk240)
	return _in(0x04F72E4C, ped, Unk236, Unk237, Unk238, Unk239, Unk240)
end

function Global.TaskGoToCoordWhileAiming(ped, Unk241, Unk242, Unk243, Unk244, Unk245, Unk246, Unk247, Unk248, Unk249, Unk250, Unk251)
	return _in(0x2A2959DA, ped, Unk241, Unk242, Unk243, Unk244, Unk245, Unk246, Unk247, Unk248, Unk249, Unk250, Unk251)
end

function Global.TaskGoToCoordWhileShooting(ped, Unk252, Unk253, Unk254, Unk255, Unk256, Unk257, Unk258, Unk259)
	return _in(0x10CB1413, ped, Unk252, Unk253, Unk254, Unk255, Unk256, Unk257, Unk258, Unk259)
end

function Global.TaskGoToObject(ped, Unk260, Unk261, Unk262)
	return _in(0x5B1B2699, ped, Unk260, Unk261, Unk262)
end

function Global.TaskGotoCar(ped, Unk221, Unk222, Unk223)
	return _in(0x3EA116F7, ped, Unk221, Unk222, Unk223)
end

function Global.TaskGotoCharAiming(ped, Unk224, Unk225, Unk226)
	return _in(0x65EB71CC, ped, Unk224, Unk225, Unk226)
end

function Global.TaskGotoCharOffset(ped, target, duration, offsetRight, offsetFront)
	return _in(0x658028BA, ped, target, duration, offsetRight, offsetFront)
end

function Global.TaskGuardAngledDefensiveArea(ped, Unk263, Unk264, Unk265, Unk266, Unk267, Unk268, Unk269, Unk270, Unk271, Unk272, Unk273, Unk274, Unk275)
	return _in(0x030E0224, ped, Unk263, Unk264, Unk265, Unk266, Unk267, Unk268, Unk269, Unk270, Unk271, Unk272, Unk273, Unk274, Unk275)
end

function Global.TaskGuardAssignedDefensiveArea(ped, Unk276, Unk277, Unk278, Unk279, Unk280, Unk281)
	return _in(0x07E21C28, ped, Unk276, Unk277, Unk278, Unk279, Unk280, Unk281)
end

function Global.TaskGuardCurrentPosition(ped, unknown0_15, unknown1_10, unknown2_1)
	return _in(0x3E6137CB, ped, unknown0_15, unknown1_10, unknown2_1)
end

function Global.TaskGuardSphereDefensiveArea(ped, Unk282, Unk283, Unk284, Unk285, Unk286, Unk287, Unk288, Unk289, Unk290, Unk291)
	return _in(0x01795753, ped, Unk282, Unk283, Unk284, Unk285, Unk286, Unk287, Unk288, Unk289, Unk290, Unk291)
end

function Global.TaskHandsUp(ped, duration)
	return _in(0x68232D31, ped, duration)
end

function Global.TaskHeliMission(ped, heli, uk0_0, uk1_0, pX, pY, pZ, uk2_4, speed, uk3_5, uk4_minus1, uk5_round_z_plus_1, uk6_40)
	return _in(0x0F227D5A, ped, heli, uk0_0, uk1_0, pX, pY, pZ, uk2_4, speed, uk3_5, uk4_minus1, uk5_round_z_plus_1, uk6_40)
end

function Global.TaskJump(ped, flag)
	return _in(0x5E97106E, ped, flag)
end

function Global.TaskLeaveAnyCar(ped)
	return _in(0x1114089D, ped)
end

function Global.TaskLeaveCar(ped, vehicle)
	return _in(0x6B85214E, ped, vehicle)
end

function Global.TaskLeaveCarAndFlee(ped, Unk292, Unk293, Unk294, Unk295)
	return _in(0x6CEA50D8, ped, Unk292, Unk293, Unk294, Unk295)
end

function Global.TaskLeaveCarDontCloseDoor(ped, vehicle)
	return _in(0x1C9A376D, ped, vehicle)
end

function Global.TaskLeaveCarImmediately(ped, vehicle)
	return _in(0x7BFB484F, ped, vehicle)
end

function Global.TaskLeaveCarInDirection(ped, car, direction)
	return _in(0x18740B3D, ped, car, direction)
end

function Global.TaskLeaveGroup(ped)
	return _in(0x1905109F, ped)
end

function Global.TaskLookAtChar(ped, targetPed, duration, unknown_0)
	return _in(0x2DD35B3F, ped, targetPed, duration, unknown_0)
end

function Global.TaskLookAtCoord(ped, x, y, z, duration, unknown_0)
	return _in(0x26E27605, ped, x, y, z, duration, unknown_0)
end

function Global.TaskLookAtObject(ped, targetObject, duration, unknown_0)
	return _in(0x27C740D0, ped, targetObject, duration, unknown_0)
end

function Global.TaskLookAtVehicle(ped, targetVehicle, duration, unknown_0)
	return _in(0x4A2C5544, ped, targetVehicle, duration, unknown_0)
end

function Global.TaskMobileConversation(ped, Unk296)
	return _in(0x64903364, ped, Unk296)
end

function Global.TaskOpenDriverDoor(ped, vehicle, unknown0)
	return _in(0x1FA41244, ped, vehicle, unknown0)
end

function Global.TaskOpenPassengerDoor(ped, vehicle, seatIndex, unknown0)
	return _in(0x58F814C4, ped, vehicle, seatIndex, unknown0)
end

function Global.TaskPause(ped, duration)
	return _in(0x5E702E2C, ped, duration)
end

function Global.TaskPerformSequence(ped, taskSequence)
	return _in(0x36A33C21, ped, taskSequence)
end

function Global.TaskPerformSequenceFromProgress(ped, Unk297, Unk298, Unk299)
	return _in(0x62701AF8, ped, Unk297, Unk298, Unk299)
end

function Global.TaskPerformSequenceLocally(ped, Unk300)
	return _in(0x326B576F, ped, Unk300)
end

function Global.TaskPickupAndCarryObject(ped, Unk301, Unk302, Unk303, Unk304, Unk305)
	return _in(0x76D72D89, ped, Unk301, Unk302, Unk303, Unk304, Unk305)
end

function Global.TaskPlayAnim(ped, Unk306, Unk307, Unk308, Unk309, Unk310, Unk311, Unk312, Unk313)
	return _in(0x28EE78D8, ped, Unk306, Unk307, Unk308, Unk309, Unk310, Unk311, Unk312, Unk313)
end

function Global.TaskPlayAnimFacial(ped, Unk314, Unk315, Unk316, Unk317, Unk318, Unk319)
	return _in(0x71F001D2, ped, Unk314, Unk315, Unk316, Unk317, Unk318, Unk319)
end

function Global.TaskPlayAnimNonInterruptable(ped, animname0, animname1, Unk320, Unk321, Unk322, Unk323, Unk324, Unk325)
	return _in(0x52202E76, ped, _ts(animname0), _ts(animname1), Unk320, Unk321, Unk322, Unk323, Unk324, Unk325)
end

function Global.TaskPlayAnimOnClone(ped, Unk326, Unk327, Unk328, Unk329, Unk330, Unk331, Unk332, Unk333)
	return _in(0x10FB7B5F, ped, Unk326, Unk327, Unk328, Unk329, Unk330, Unk331, Unk332, Unk333)
end

function Global.TaskPlayAnimReadyToBeExecuted(ped, Unk334, Unk335, Unk336)
	return _in(0x040A0537, ped, Unk334, Unk335, Unk336)
end

function Global.TaskPlayAnimSecondary(ped, Unk337, Unk338, Unk339, Unk340, Unk341, Unk342, Unk343, Unk344)
	return _in(0x273C2D35, ped, Unk337, Unk338, Unk339, Unk340, Unk341, Unk342, Unk343, Unk344)
end

function Global.TaskPlayAnimSecondaryInCar(ped, Unk345, Unk346, Unk347, Unk348, Unk349, Unk350, Unk351, Unk352)
	return _in(0x482B2B74, ped, Unk345, Unk346, Unk347, Unk348, Unk349, Unk350, Unk351, Unk352)
end

function Global.TaskPlayAnimSecondaryNoInterrupt(ped, Unk353, Unk354, Unk355, Unk356, Unk357, Unk358, Unk359, Unk360)
	return _in(0x56524B94, ped, Unk353, Unk354, Unk355, Unk356, Unk357, Unk358, Unk359, Unk360)
end

function Global.TaskPlayAnimSecondaryUpperBody(ped, Unk361, Unk362, Unk363, Unk364, Unk365, Unk366, Unk367, Unk368)
	return _in(0x34574B2A, ped, Unk361, Unk362, Unk363, Unk364, Unk365, Unk366, Unk367, Unk368)
end

function Global.TaskPlayAnimUpperBody(ped, Unk369, Unk370, Unk371, Unk372, Unk373, Unk374, Unk375, Unk376)
	return _in(0x02534709, ped, Unk369, Unk370, Unk371, Unk372, Unk373, Unk374, Unk375, Unk376)
end

function Global.TaskPlayAnimWithAdvancedFlags(ped, Unk377, Unk378, Unk379, Unk380, Unk381, Unk382, Unk383, Unk384, Unk385, Unk386, Unk387)
	return _in(0x30BA2716, ped, Unk377, Unk378, Unk379, Unk380, Unk381, Unk382, Unk383, Unk384, Unk385, Unk386, Unk387)
end

function Global.TaskPlayAnimWithFlags(ped, animName, animSet, unknown0_8, unknown1_0, flags)
	return _in(0x75533E74, ped, _ts(animName), _ts(animSet), unknown0_8, unknown1_0, flags)
end

function Global.TaskPlayAnimWithFlagsAndStartPhase(ped, Unk388, Unk389, Unk390, Unk391, Unk392, Unk393)
	return _in(0x1A122D03, ped, Unk388, Unk389, Unk390, Unk391, Unk392, Unk393)
end

function Global.TaskPutCharDirectlyIntoCover(Unk394, Unk395, Unk396, Unk397, Unk398)
	return _in(0x1FDD4860, Unk394, Unk395, Unk396, Unk397, Unk398)
end

function Global.TaskSeekCoverFromPed(ped, Unk399, Unk400)
	return _in(0x2D9C3D5E, ped, Unk399, Unk400)
end

function Global.TaskSeekCoverFromPos(ped, Unk401, Unk402, Unk403, Unk404)
	return _in(0x2BDF7B7E, ped, Unk401, Unk402, Unk403, Unk404)
end

function Global.TaskSeekCoverToCoords(ped, Unk405, Unk406, Unk407, Unk408, Unk409, Unk410, Unk411)
	return _in(0x142F31EF, ped, Unk405, Unk406, Unk407, Unk408, Unk409, Unk410, Unk411)
end

function Global.TaskSeekCoverToCoverPoint(ped, Unk412, Unk413, Unk414, Unk415, Unk416)
	return _in(0x143358D3, ped, Unk412, Unk413, Unk414, Unk415, Unk416)
end

function Global.TaskSeekCoverToObject(ped, Unk417, Unk418, Unk419, Unk420, Unk421)
	return _in(0x4DB55DF5, ped, Unk417, Unk418, Unk419, Unk420, Unk421)
end

function Global.TaskSetCharDecisionMaker(ped, dm)
	return _in(0x1CB2670D, ped, dm)
end

function Global.TaskSetCombatDecisionMaker(ped, dm)
	return _in(0x499C0C01, ped, dm)
end

function Global.TaskSetIgnoreWeaponRangeFlag(ped, ignore)
	return _in(0x6CE277E7, ped, ignore)
end

function Global.TaskShakeFist(ped)
	return _in(0x0F7F3837, ped)
end

function Global.TaskShimmy(ped, Unk422)
	return _in(0x53230256, ped, Unk422)
end

function Global.TaskShimmyClimbUp(ped)
	return _in(0x36AD6480, ped, _r)
end

function Global.TaskShimmyInDirection(ped, Unk109)
	return _in(0x7B1A5333, ped, Unk109, _r)
end

function Global.TaskShimmyLetGo(ped)
	return _in(0x1AA32729, ped, _r)
end

function Global.TaskShootAtChar(shooter, victim, time, shootmode)
	return _in(0x08022967, shooter, victim, time, shootmode)
end

function Global.TaskShootAtCoord(ped, Unk423, Unk424, Unk425, Unk426, Unk427)
	return _in(0x705231A9, ped, Unk423, Unk424, Unk425, Unk426, Unk427)
end

function Global.TaskShuffleToNextCarSeat(ped, Unk428)
	return _in(0x011D360D, ped, Unk428)
end

function Global.TaskSitDown(ped, Unk429, Unk430, Unk431)
	return _in(0x264C5448, ped, Unk429, Unk430, Unk431)
end

function Global.TaskSitDownInstantly(ped, Unk432, Unk433, Unk434)
	return _in(0x6CC1560F, ped, Unk432, Unk433, Unk434)
end

function Global.TaskSitDownOnNearestObject(ped, Unk435, Unk436, Unk437, Unk438, Unk439, Unk440, Unk441, Unk442, Unk443)
	return _in(0x725654F4, ped, Unk435, Unk436, Unk437, Unk438, Unk439, Unk440, Unk441, Unk442, Unk443)
end

function Global.TaskSitDownOnObject(ped, Unk444, Unk445, Unk446, Unk447, Unk448, Unk449, Unk450, Unk451, Unk452)
	return _in(0x515C3218, ped, Unk444, Unk445, Unk446, Unk447, Unk448, Unk449, Unk450, Unk451, Unk452)
end

function Global.TaskSitDownOnSeat(ped, Unk453, Unk454, Unk455, Unk456, Unk457, Unk458, Unk459)
	return _in(0x2CBE4DAF, ped, Unk453, Unk454, Unk455, Unk456, Unk457, Unk458, Unk459)
end

function Global.TaskSmartFleeChar(ped, fleeFromPed, unknown0_100, duration)
	return _in(0x1880639C, ped, fleeFromPed, unknown0_100, duration)
end

function Global.TaskSmartFleeCharPreferringPavements(ped, fleeFromPed, unknown0_100, duration)
	return _in(0x57AC66E9, ped, fleeFromPed, unknown0_100, duration)
end

function Global.TaskSmartFleePoint(ped, x, y, z, unknown0_100, duration)
	return _in(0x7381337A, ped, x, y, z, unknown0_100, duration)
end

function Global.TaskSmartFleePointPreferringPavements(ped, x, y, z, radius, time_prob)
	return _in(0x3CEB6C7B, ped, x, y, z, radius, time_prob)
end

function Global.TaskStandGuard(ped, x, y, z, Unk460, Unk461, Unk462, Unk463)
	return _in(0x59523479, ped, x, y, z, Unk460, Unk461, Unk462, Unk463)
end

function Global.TaskStandStill(ped, duration)
	return _in(0x524C4CB5, ped, duration)
end

function Global.TaskStartScenarioAtPosition(ped, Unk464, Unk465, Unk466, Unk467, Unk468)
	return _in(0x0F296C2E, ped, Unk464, Unk465, Unk466, Unk467, Unk468)
end

function Global.TaskStartScenarioInPlace(ped, Unk469, Unk470)
	return _in(0x261F18A3, ped, Unk469, Unk470)
end

function Global.TaskSwapWeapon(ped, weapon)
	return _in(0x72AE63C8, ped, weapon)
end

function Global.TaskSwimToCoord(ped, x, y, z)
	return _in(0x098D5DA6, ped, x, y, z)
end

function Global.TaskTired(ped, Unk471)
	return _in(0x702041F2, ped, Unk471)
end

function Global.TaskToggleDuck(ped, Unk472)
	return _in(0x319E3A87, ped, Unk472)
end

function Global.TaskTogglePedThreatScanner(ped, Unk473, Unk474, Unk475)
	return _in(0x5D515C4D, ped, Unk473, Unk474, Unk475)
end

function Global.TaskTurnCharToFaceChar(ped, targetPed)
	return _in(0x0A462B7A, ped, targetPed)
end

function Global.TaskTurnCharToFaceCoord(ped, x, y, z)
	return _in(0x51517B11, ped, x, y, z)
end

function Global.TaskUseMobilePhone(ped, use)
	return _in(0x417F6EBD, ped, use)
end

function Global.TaskUseMobilePhoneTimed(ped, duration)
	return _in(0x0BAD1A62, ped, duration)
end

function Global.TaskUseNearestScenarioToPos(ped, Unk476, Unk477, Unk478, Unk479)
	return _in(0x743F30B3, ped, Unk476, Unk477, Unk478, Unk479)
end

function Global.TaskUseNearestScenarioToPosWarp(ped, Unk480, Unk481, Unk482, Unk483)
	return _in(0x47787A40, ped, Unk480, Unk481, Unk482, Unk483)
end

function Global.TaskWanderStandard(ped)
	return _in(0x43F5151F, ped)
end

function Global.TaskWarpCharIntoCarAsDriver(ped, vehicle)
	return _in(0x6F363A21, ped, vehicle)
end

function Global.TaskWarpCharIntoCarAsPassenger(ped, vehicle, seatIndex)
	return _in(0x06B30CBF, ped, vehicle, seatIndex)
end

function Global.TellNetPlayerToStartPlaying(playerIndex, Unk999)
	return _in(0x465D424D, playerIndex, Unk999)
end

function Global.TerminateAllScriptsForNetworkGame()
	return _in(0x2CEA47E9)
end

function Global.TerminateAllScriptsWithThisName(name)
	return _in(0x72452672, _ts(name))
end

function Global.TerminateThisScript()
	return _in(0x2BCD1ECA)
end

function Global.ThisScriptIsSafeForNetworkGame()
	return _in(0x63AB65DC)
end

function Global.ThisScriptShouldBeSaved()
	return _in(0x48573CF7)
end

function Global.Timera()
	return _in(0x75706300, _ri)
end

function Global.Timerb()
	return _in(0x62984AB7, _ri)
end

function Global.Timerc()
	return _in(0x1BF55D6F, _ri)
end

function Global.Timestep()
	return _in(0x35694DDC, _ri)
end

function Global.Timestepunwarped()
	return _in(0x49283645, _rf)
end

function Global.ToFloat(value)
	return _in(0x259E305F, value, _rf)
end

function Global.ToggleCharDucking(ped)
	return _in(0x265544F9, ped, _ri)
end

function Global.ToggleToplevelSprite(toggle)
	return _in(0x51643697, toggle)
end

function Global.TrainLeaveStation(train)
	return _in(0x37890B14, train)
end

--- The backing function for TriggerEvent.
function Global.TriggerEventInternal(eventName, eventPayload, payloadLength)
	return _in(0x91310870, _ts(eventName), _ts(eventPayload), payloadLength)
end

--- The backing function for TriggerLatentServerEvent.
function Global.TriggerLatentServerEventInternal(eventName, eventPayload, payloadLength, bps)
	return _in(0x128737ea, _ts(eventName), _ts(eventPayload), payloadLength, bps)
end

function Global.TriggerLoadingMusicOnNextFade()
	return _in(0x1C4B1189)
end

function Global.TriggerMissionCompleteAudio(id)
	return _in(0x4BAF0213, id)
end

function Global.TriggerPoliceReport(name)
	return _in(0x78D01893, _ts(name))
end

function Global.TriggerPtfx(name, x, y, z, Unk1062, Unk1063, Unk1064, flags)
	return _in(0x21C44026, _ts(name), x, y, z, Unk1062, Unk1063, Unk1064, flags, _r)
end

function Global.TriggerPtfxOnObj(name, obj, x, y, z, Unk1065, Unk1066, Unk1067, flags)
	return _in(0x50307F63, _ts(name), obj, x, y, z, Unk1065, Unk1066, Unk1067, flags, _r)
end

function Global.TriggerPtfxOnObjBone(name, obj, x, y, z, Unk1068, Unk1069, Unk1070, objbone, flags)
	return _in(0x3A2A77F9, _ts(name), obj, x, y, z, Unk1068, Unk1069, Unk1070, objbone, flags, _r)
end

function Global.TriggerPtfxOnPed(name, ped, x, y, z, Unk1071, Unk1072, Unk1073, flags)
	return _in(0x0A76502F, _ts(name), ped, x, y, z, Unk1071, Unk1072, Unk1073, flags, _r)
end

function Global.TriggerPtfxOnPedBone(name, ped, x, y, z, Unk1074, Unk1075, Unk1076, pedbone, flags)
	return _in(0x7D3C3C9D, _ts(name), ped, x, y, z, Unk1074, Unk1075, Unk1076, pedbone, flags, _r)
end

function Global.TriggerPtfxOnVeh(name, veh, x, y, z, Unk1077, Unk1078, Unk1079, Unk1080)
	return _in(0x3C7B6092, _ts(name), veh, x, y, z, Unk1077, Unk1078, Unk1079, Unk1080, _r)
end

--- The backing function for TriggerServerEvent.
function Global.TriggerServerEventInternal(eventName, eventPayload, payloadLength)
	return _in(0x7fdd1128, _ts(eventName), _ts(eventPayload), payloadLength)
end

function Global.TriggerVehAlarm(car)
	return _in(0x5E5047AC, car)
end

function Global.TriggerVigilanteCrime(id, x, y, z)
	return _in(0x195D582E, id, x, y, z)
end

function Global.TurnCarToFaceCoord(car, x, y)
	return _in(0x16184716, car, x, y)
end

function Global.TurnOffRadiohudInLobby()
	return _in(0x4ED6764C)
end

function Global.TurnOffVehicleExtra(veh, extra, turnoff)
	return _in(0x05966824, veh, extra, turnoff)
end

function Global.UnattachCam(cam)
	return _in(0x278305AE, cam)
end

function Global.UnfreezeRadioStation(radiostation)
	return _in(0x3E5B7E59, _ts(radiostation))
end

function Global.UninheritCamRoll(cam)
	return _in(0x38AD2830, cam)
end

function Global.UnloadTextFont()
	return _in(0x3E0229EB)
end

function Global.UnlockGenericNewsStory(StoryId)
	return _in(0x06BE0DD3, StoryId)
end

function Global.UnlockLazlowStation()
	return _in(0x7B6F4B91)
end

function Global.UnlockMissionNewsStory(id)
	return _in(0x2F0718CA, id)
end

function Global.UnlockRagdoll(ped, value)
	return _in(0x2F2F51E9, ped, value)
end

function Global.UnmarkAllRoadNodesAsDontWander()
	return _in(0x2BBA7BF0)
end

function Global.UnobfuscateInt(count, val)
	return _in(0x118D1AA3, count, _ii(val) --[[ may be optional ]])
end

function Global.UnobfuscateIntArray(Unk1000, Unk1001)
	return _in(0x6314421A, Unk1000, Unk1001)
end

function Global.UnobfuscateString(str)
	return _in(0x2186777E, _ts(str), _s)
end

function Global.UnpauseGame()
	return _in(0x2A783A43)
end

function Global.UnpausePlaybackRecordedCar(car)
	return _in(0x361A01AD, car)
end

function Global.UnpauseRadio()
	return _in(0x78F7286F)
end

function Global.UnpointCam(cam)
	return _in(0x212B4014, cam)
end

--- Will unregister and cleanup a registered NUI callback handler.
-- Use along side the REGISTER_RAW_NUI_CALLBACK native.
-- @param callbackType The callback type to target
function Global.UnregisterRawNuiCallback(callbackType)
	return _in(0x7fb46432, _ts(callbackType))
end

function Global.UnregisterScriptWithAudio()
	return _in(0x698F762E)
end

function Global.UnsetCharMeleeMovementConstaintBox(ped)
	return _in(0x3AC90796, ped)
end

function Global.UpdateLoadScene()
	return _in(0x513D68DB, _r)
end

function Global.UpdateNetworkRelativeScore(Unk1002, Unk1003, Unk1004)
	return _in(0x384E3F3A, Unk1002, Unk1003, Unk1004)
end

function Global.UpdateNetworkStatistics(playerIndex, ukn0, ukn1, ukn2)
	return _in(0x70B45E01, playerIndex, ukn0, ukn1, ukn2)
end

function Global.UpdatePedPhysicalAttachmentPosition(ped, x0, y0, z0, x1, y1)
	return _in(0x10A62603, ped, x0, y0, z0, x1, y1)
end

function Global.UpdatePtfxOffsets(ptfx, x, y, z, Unk1081, Unk1082, Unk1083)
	return _in(0x45472E9D, ptfx, x, y, z, Unk1081, Unk1082, Unk1083)
end

function Global.UpdatePtfxTint(ptfx, r, g, b, a)
	return _in(0x42FC2C31, ptfx, r, g, b, a)
end

function Global.UseMask(use)
	return _in(0x6A9B79D8, use)
end

function Global.UsePlayerColourInsteadOfTeamColour(Unk1005)
	return _in(0x759B6BBE, Unk1005)
end

function Global.UsePreviousFontSettings()
	return _in(0x36FC5CFB)
end

function Global.UsingStandardControls()
	return _in(0x5F4571E5, _r)
end

function Global.Vdist(x0, y0, z0, x1, y1, z1)
	return _in(0x4674049B, x0, y0, z0, x1, y1, z1, _rf)
end

function Global.Vdist2(x0, y0, z0, x1, y1, z1)
	return _in(0x69AE0805, x0, y0, z0, x1, y1, z1, _rf)
end

function Global.VehicleCanBeTargettedByHsMissile(car, set)
	return _in(0x27607F64, car, set)
end

function Global.VehicleDoesProvideCover(veh, cover)
	return _in(0x0C4F5021, veh, cover)
end

function Global.Vmag(x, y, z)
	return _in(0x405B02B7, x, y, z, _rf)
end

function Global.Vmag2(x, y, z)
	return _in(0x787206F8, x, y, z, _rf)
end

function Global.Wait(timeMS)
	return _in(0x266716AC, timeMS)
end

function Global.WantedStarsAreFlashing()
	return _in(0x00746EDF, _r)
end

function Global.WarpCharFromCarToCar(ped, vehicle, seatIndex)
	return _in(0x3AE77439, ped, vehicle, seatIndex)
end

function Global.WarpCharFromCarToCoord(ped, x, y, z)
	return _in(0x6A77506A, ped, x, y, z)
end

function Global.WarpCharIntoCar(ped, vehicle)
	return _in(0x73D3504A, ped, vehicle)
end

function Global.WarpCharIntoCarAsPassenger(ped, vehicle, seatIndex)
	return _in(0x172376FE, ped, vehicle, seatIndex)
end

function Global.WasCutsceneSkipped()
	return _in(0x18F01E80, _r)
end

--- Returns whether or not the currently executing event was canceled.
-- @return A boolean.
function Global.WasEventCanceled()
	return _in(0x58382a19, _r)
end

function Global.WasPedKilledByHeadshot(ped)
	return _in(0x084F7B9F, ped, _r)
end

function Global.WasPedSkeletonUpdated(ped)
	return _in(0x3E8443E0, ped, _r)
end

function Global.WashVehicleTextures(vehicle, intensity)
	return _in(0x69491CFA, vehicle, intensity)
end

function Global.WhatWillPlayerPickup(player)
	return _in(0x2F9B0583, player, _ri)
end

function Global.WinchCanPickObjectUp(obj, can)
	return _in(0x73246FC0, obj, can)
end

function Global.m(cam, heading)
	return _in(0x3970702E, cam, heading)
end

