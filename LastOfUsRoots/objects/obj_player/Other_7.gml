/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 61CEFEB2
/// @DnDComment : This event runs when the current animation ends.$(13_10)$(13_10)This is a Switch statement that runs on the$(13_10)'sprite_index' variable, which stores the sprite$(13_10)currently assigned to the instance.$(13_10)$(13_10)This allows us to transition to some other sprite,$(13_10)depending on the currently assigned sprite.
/// @DnDArgument : "expr" "sprite_index"
var l61CEFEB2_0 = sprite_index;
switch(l61CEFEB2_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2D39EF3B
	/// @DnDComment : Actions assigned to this Case run if the$(13_10)assigned sprite is 'spr_player_fall', meaning$(13_10)the player was falling downward.
	/// @DnDParent : 61CEFEB2
	/// @DnDArgument : "const" "spr_player_fall"
	case spr_player_fall:
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 758BF6D2
		/// @DnDComment : Since the animation has ended (which is why$(13_10)this event is running), we stop the animation$(13_10)by setting its speed to 0
		/// @DnDParent : 2D39EF3B
		/// @DnDArgument : "speed" "0"
		image_speed = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 1F2FDEAD
		/// @DnDComment : We also set the current frame to the last frame$(13_10)of the animation, which will remain visible
		/// @DnDParent : 2D39EF3B
		/// @DnDArgument : "value" "image_number - 1"
		/// @DnDArgument : "instvar" "11"
		image_index = image_number - 1;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 79F93656
	/// @DnDComment : Actions assigned to this Case run if the$(13_10)assigned sprite is 'spr_player_jump', meaning$(13_10)the player was in the middle of a jump.
	/// @DnDParent : 61CEFEB2
	/// @DnDArgument : "const" "spr_player_jump"
	case spr_player_jump:
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 4A8EAD90
		/// @DnDComment : Since the animation has ended (which is why$(13_10)this event is running), we stop the animation$(13_10)by setting its speed to 0
		/// @DnDParent : 79F93656
		/// @DnDArgument : "speed" "0"
		image_speed = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 652E47AD
		/// @DnDComment : We also set the current frame to the last frame$(13_10)of the animation, which will remain visible
		/// @DnDParent : 79F93656
		/// @DnDArgument : "value" "image_number - 1"
		/// @DnDArgument : "instvar" "11"
		image_index = image_number - 1;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6854C97B
	/// @DnDComment : Actions assigned to this Case run if the$(13_10)assigned sprite is 'spr_player_fall', meaning$(13_10)the player was falling downward.
	/// @DnDParent : 61CEFEB2
	/// @DnDArgument : "const" "spr_player_idle_pickaxe"
	case spr_player_idle_pickaxe:
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 39AF08F7
		/// @DnDComment : Since the animation has ended (which is why$(13_10)this event is running), we stop the animation$(13_10)by setting its speed to 0
		/// @DnDParent : 6854C97B
		/// @DnDArgument : "speed" "0"
		image_speed = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 4A919DDA
		/// @DnDParent : 6854C97B
		/// @DnDArgument : "spriteind" "spr_player_idle"
		/// @DnDSaveInfo : "spriteind" "spr_player_idle"
		sprite_index = spr_player_idle;
		image_index = 0;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2059FA50
	/// @DnDComment : Actions assigned to this Case run if the$(13_10)assigned sprite is 'spr_player_fall', meaning$(13_10)the player was falling downward.
	/// @DnDParent : 61CEFEB2
	/// @DnDArgument : "const" "spr_player_walk_pickaxe"
	case spr_player_walk_pickaxe:
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 56C22C0C
		/// @DnDComment : Since the animation has ended (which is why$(13_10)this event is running), we stop the animation$(13_10)by setting its speed to 0
		/// @DnDParent : 2059FA50
		/// @DnDArgument : "speed" "0"
		image_speed = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 4C0A320F
		/// @DnDParent : 2059FA50
		/// @DnDArgument : "spriteind" "spr_player_walk"
		/// @DnDSaveInfo : "spriteind" "spr_player_walk"
		sprite_index = spr_player_walk;
		image_index = 0;
		break;
}