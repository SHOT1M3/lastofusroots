/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7B5FB7C9
/// @DnDComment : This checks if the player is currently in knockback,$(13_10)after being hit by an enemy.
/// @DnDArgument : "expr" "in_knockback"
if(in_knockback)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 66D79C8C
	/// @DnDComment : In that case we exit/stop the event here, so$(13_10)the player can't move.
	/// @DnDParent : 7B5FB7C9
	exit;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 124B3F31
/// @DnDComment : Set the X velocity to negative move_speed.$(13_10)This makes the character move left.
/// @DnDArgument : "expr" "-move_speed"
/// @DnDArgument : "var" "vel_x"
vel_x = -move_speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7EB18935
/// @DnDComment : This checks if the current sprite is the fall sprite,$(13_10)meaning the player hasn't landed yet.
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_player_fall"
if(sprite_index == spr_player_fall)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 463B6F01
	/// @DnDComment : In that case we exit/stop the event here, so$(13_10)the sprite doesn't change.
	/// @DnDParent : 7EB18935
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 044D0444
/// @DnDComment : This checks if the player is on the ground, before$(13_10)changing the sprite to the walking sprite. This is$(13_10)done to ensure that the walking sprite does not$(13_10)active while the player is in mid-air.
/// @DnDArgument : "expr" "grounded"
if(grounded)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 0C180CC8
	/// @DnDParent : 044D0444
	/// @DnDArgument : "key" "vk_control"
	var l0C180CC8_0;
	l0C180CC8_0 = keyboard_check(vk_control);
	if (l0C180CC8_0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6921AAFB
		/// @DnDComment : Change the sprite to spr_player_jump$(13_10)as the player is now jumping (and$(13_10)not falling anymore).
		/// @DnDParent : 0C180CC8
		/// @DnDArgument : "spriteind" "spr_player_walk_pickaxe"
		/// @DnDSaveInfo : "spriteind" "spr_player_walk_pickaxe"
		sprite_index = spr_player_walk_pickaxe;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 3DBC488E
	/// @DnDParent : 044D0444
	/// @DnDArgument : "key" "vk_control"
	/// @DnDArgument : "not" "1"
	var l3DBC488E_0;
	l3DBC488E_0 = keyboard_check(vk_control);
	if (!l3DBC488E_0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 62C6DBDC
		/// @DnDComment : Change the sprite to spr_player_jump$(13_10)as the player is now jumping (and$(13_10)not falling anymore).
		/// @DnDParent : 3DBC488E
		/// @DnDArgument : "spriteind" "spr_player_walk"
		/// @DnDSaveInfo : "spriteind" "spr_player_walk"
		sprite_index = spr_player_walk;
		image_index = 0;
	}
}