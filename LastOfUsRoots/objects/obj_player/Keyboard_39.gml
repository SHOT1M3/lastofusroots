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

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0C36A1F7
/// @DnDComment : Set the X velocity to move_speed.$(13_10)This makes the character move right.
/// @DnDArgument : "expr" "move_speed"
/// @DnDArgument : "var" "vel_x"
vel_x = move_speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 05380A2F
/// @DnDComment : This checks if the current sprite is the fall sprite,$(13_10)meaning the player hasn't landed yet.
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_player_fall"
if(sprite_index == spr_player_fall)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 07852F12
	/// @DnDComment : In that case we exit/stop the event here, so$(13_10)the sprite doesn't change.
	/// @DnDParent : 05380A2F
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0C6F60F2
/// @DnDComment : This checks if the player is on the ground, before$(13_10)changing the sprite to the walking sprite. This is$(13_10)done to ensure that the walking sprite does not$(13_10)active while the player is in mid-air.
/// @DnDArgument : "expr" "grounded"
if(grounded)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 6E424CB2
	/// @DnDParent : 0C6F60F2
	/// @DnDArgument : "key" "vk_control"
	var l6E424CB2_0;
	l6E424CB2_0 = keyboard_check(vk_control);
	if (l6E424CB2_0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 414A01D5
		/// @DnDComment : Change the sprite to spr_player_jump$(13_10)as the player is now jumping (and$(13_10)not falling anymore).
		/// @DnDParent : 6E424CB2
		/// @DnDArgument : "spriteind" "spr_player_walk_pickaxe"
		/// @DnDSaveInfo : "spriteind" "spr_player_walk_pickaxe"
		sprite_index = spr_player_walk_pickaxe;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 49E90C54
	/// @DnDParent : 0C6F60F2
	/// @DnDArgument : "key" "vk_control"
	/// @DnDArgument : "not" "1"
	var l49E90C54_0;
	l49E90C54_0 = keyboard_check(vk_control);
	if (!l49E90C54_0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6D4C4FFF
		/// @DnDComment : Change the sprite to spr_player_jump$(13_10)as the player is now jumping (and$(13_10)not falling anymore).
		/// @DnDParent : 49E90C54
		/// @DnDArgument : "spriteind" "spr_player_walk"
		/// @DnDSaveInfo : "spriteind" "spr_player_walk"
		sprite_index = spr_player_walk;
		image_index = 0;
	}
}