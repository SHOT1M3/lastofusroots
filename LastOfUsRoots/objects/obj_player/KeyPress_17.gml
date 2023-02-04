/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 64EC8D95
/// @DnDComment : This checks if the player is currently in knockback,$(13_10)after being hit by an enemy.
/// @DnDArgument : "expr" "in_knockback"
if(in_knockback)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 3E31E712
	/// @DnDComment : In that case we exit/stop the event here, so$(13_10)the player can't move.
	/// @DnDParent : 64EC8D95
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 63C100D9
/// @DnDArgument : "var" "vel_x"
if(vel_x == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7A4365AE
	/// @DnDComment : Change the sprite to spr_player_jump$(13_10)as the player is now jumping (and$(13_10)not falling anymore).
	/// @DnDDisabled : 1
	/// @DnDParent : 63C100D9
	/// @DnDArgument : "spriteind" "spr_player_idle_pickaxe"
	/// @DnDSaveInfo : "spriteind" "spr_player_idle_pickaxe"


	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 6E1069E2
	/// @DnDParent : 63C100D9
	/// @DnDArgument : "value" "spr_player_idle_pickaxe"
	/// @DnDArgument : "instvar" "10"
	sprite_index = spr_player_idle_pickaxe;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 262EFCA0
/// @DnDArgument : "var" "vel_x"
/// @DnDArgument : "not" "1"
if(!(vel_x == 0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 0F7E50C6
	/// @DnDParent : 262EFCA0
	/// @DnDArgument : "value" "spr_player_walk_pickaxe"
	/// @DnDArgument : "instvar" "10"
	sprite_index = spr_player_walk_pickaxe;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 40CF33F3
	/// @DnDComment : Change the sprite to spr_player_jump$(13_10)as the player is now jumping (and$(13_10)not falling anymore).
	/// @DnDDisabled : 1
	/// @DnDParent : 262EFCA0
	/// @DnDArgument : "spriteind" "spr_player_walk_pickaxe"
	/// @DnDSaveInfo : "spriteind" "spr_player_walk_pickaxe"
}