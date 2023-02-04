/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 63C100D9
/// @DnDArgument : "var" "vel_x"
if(vel_x == 0)
{
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
}