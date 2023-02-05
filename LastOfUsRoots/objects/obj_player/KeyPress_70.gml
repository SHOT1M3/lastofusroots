/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 447D70AA
/// @DnDComment : This checks if the 'grounded' variable is true,$(13_10)meaning the player is standing on the ground, and$(13_10)can jump.$(13_10)
/// @DnDArgument : "expr" "grounded"
if(grounded)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15F32CE2
	/// @DnDComment : This sets the Y velocity to negative jump_speed,$(13_10)making the player immediately jump upwards. It$(13_10)will automatically be brought down by the gravity$(13_10)code in the parent's Begin Step event.
	/// @DnDDisabled : 1
	/// @DnDParent : 447D70AA
	/// @DnDArgument : "expr" "-jump_speed"
	/// @DnDArgument : "var" "vel_y"


	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 244723E3
	/// @DnDComment : This changes the player's sprite to the jump sprite,$(13_10)and resets the frame to 0.
	/// @DnDDisabled : 1
	/// @DnDParent : 447D70AA
	/// @DnDArgument : "spriteind" "spr_player_jump"
	/// @DnDSaveInfo : "spriteind" "spr_player_jump"


	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0954DF1D
	/// @DnDComment : This sets 'grounded' to false, so that any events$(13_10)after this know that the player is not supposed$(13_10)to be on the ground anymore.
	/// @DnDDisabled : 1
	/// @DnDParent : 447D70AA
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "grounded"


	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 416F0BB5
	/// @DnDComment : Play the jump sound, and store the played sound's ID$(13_10)in a temporary variable
	/// @DnDDisabled : 1
	/// @DnDParent : 447D70AA
	/// @DnDArgument : "target" "sound"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "soundid" "snd_jump"
	/// @DnDSaveInfo : "soundid" "snd_jump"


	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 41DE929D
	/// @DnDComment : Get a random value to use for the jump sound's pitch
	/// @DnDDisabled : 1
	/// @DnDParent : 447D70AA
	/// @DnDArgument : "var" "pitch"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "min" "0.8"


	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 539F27C7
	/// @DnDComment : Change the jump sound's pitch through its ID variable
	/// @DnDDisabled : 1
	/// @DnDParent : 447D70AA
	/// @DnDArgument : "sound" "sound"
	/// @DnDArgument : "pitch" "pitch"


	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6540CD19
	/// @DnDComment : This creates an instance of obj_effect_jump $(13_10)at the bottom of the player's mask. This is the$(13_10)jump VFX animation.$(13_10)
	/// @DnDDisabled : 1
	/// @DnDParent : 447D70AA
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "bbox_bottom"
	/// @DnDArgument : "objectid" "obj_effect_jump"
	/// @DnDSaveInfo : "objectid" "obj_effect_jump"


	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 74C0348D
	/// @DnDParent : 447D70AA
	/// @DnDArgument : "xpos" "70"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-15"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_block_mushroom"
	/// @DnDArgument : "layer" "layer"
	/// @DnDSaveInfo : "objectid" "obj_block_mushroom"
	instance_create_layer(x + 70, y + -15, layer, obj_block_mushroom);

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 0E909D7E
	/// @DnDParent : 447D70AA
	/// @DnDArgument : "xscale" "2"
	/// @DnDArgument : "yscale" "2"
	image_xscale = 2;
	image_yscale = 2;
}