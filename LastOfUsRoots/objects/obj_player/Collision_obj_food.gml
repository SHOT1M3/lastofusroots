/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 020B06E0
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "3"
if(hp < 3)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2CFD088B
	/// @DnDParent : 020B06E0
	/// @DnDArgument : "expr" "+1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hp"
	hp += +1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4D8569B1
	/// @DnDComment : Destroy the 'other' instance, which is$(13_10)the coin. Click on the down arrow next$(13_10)to the X to see that the action is applied$(13_10)to the 'other' instance.
	/// @DnDApplyTo : other
	/// @DnDParent : 020B06E0
	with(other) instance_destroy();
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4FA4297B
/// @DnDComment : Create an instance of$(13_10)obj_coin_collect_effect at the position$(13_10)of the 'other' instance, which is the$(13_10)coin that the player touched.
/// @DnDDisabled : 1
/// @DnDArgument : "xpos" "other.x"
/// @DnDArgument : "ypos" "other.y"
/// @DnDArgument : "objectid" "obj_coin_collect_effect"
/// @DnDSaveInfo : "objectid" "obj_coin_collect_effect"


/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 6CC76BFD
/// @DnDComment : Play the coin collect sound
/// @DnDDisabled : 1
/// @DnDArgument : "soundid" "snd_coin_collect_01"
/// @DnDSaveInfo : "soundid" "snd_coin_collect_01"