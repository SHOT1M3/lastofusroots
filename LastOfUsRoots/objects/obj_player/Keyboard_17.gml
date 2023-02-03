/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 15F1E8DE
/// @DnDComment : This checks if the player is currently in knockback,$(13_10)after being hit by an enemy.
/// @DnDArgument : "expr" "in_knockback"
if(in_knockback)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 6B016845
	/// @DnDComment : In that case we exit/stop the event here, so$(13_10)the player can't move.
	/// @DnDParent : 15F1E8DE
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 633677CE
/// @DnDArgument : "var" "vel_x"
if(vel_x == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1B05113C
	/// @DnDComment : Change the sprite to spr_player_jump$(13_10)as the player is now jumping (and$(13_10)not falling anymore).
	/// @DnDParent : 633677CE
	/// @DnDArgument : "spriteind" "spr_player_idle_pickaxe"
	/// @DnDSaveInfo : "spriteind" "spr_player_idle_pickaxe"
	sprite_index = spr_player_idle_pickaxe;
	image_index = 0;
}