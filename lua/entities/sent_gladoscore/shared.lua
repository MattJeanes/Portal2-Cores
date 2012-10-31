-- Made with Dr. Matt's Base Core v3
ENT.Base			= "base_core3"
ENT.PrintName		= "GLaDOS Core" -- The name the Core will come up as in the Spawnmenu
ENT.Spawnable		= true -- If true, Anyone can spawn the entity
ENT.AdminSpawnable	= true -- If true, Admins can spawn the entity, Set ENT.Spawnable to false to make the Core Admin only.
ENT.Author			= "Dr. Matt" -- Self Explanatory, The author of the addon, AKA Your name.
ENT.Contact			= "Facepunch (MattJeanes)" -- Your contact, Perhaps an email address or a Steam username
ENT.Purpose			= "Oh.. It's you." -- The purpose of the entity
ENT.Instructions	= "" -- The instructions of the entity, Perhaps "Insert 1 chocolate cookie to activate."
ENT.AutomaticFrameAdvance = true
ENT.Category		= "Portal 2 Cores"
ENT.Animation		= "sphere_idle_happy" -- Set's the animation of the core, Look in Portal 2 Authoring Tools for more info.
ENT.Delay			= 5
ENT.Dir				= "glad" -- The name of your sub-folder, must be 4 characters.
/*---------------------------------------------------------
	ENT.Dir: Put your stuff in the following folders:
	
	sound/cores/(ENT.Dir)/
	sound/cores/(ENT.Dir)/special/ -- For use.wav, undo.wav and dmg.wav
	models/cores/(ENT.Dir)/
	materials/models/cores/(ENT.Dir)/
---------------------------------------------------------*/

if SERVER then AddCSLuaFile() end

function ENT:SpawnFunction( ply, tr )

	if ( !tr.Hit ) then return end
	
	local SpawnPos = tr.HitPos + tr.HitNormal * 16
	
	local ent = ents.Create( ClassName )
	ent:SetPos( SpawnPos )
	ent:Spawn()
	ent:Activate()
	
	return ent
	
end