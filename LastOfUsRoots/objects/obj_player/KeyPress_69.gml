/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 44116C7D
/// @DnDArgument : "key" "vk_down"
var l44116C7D_0;
l44116C7D_0 = keyboard_check(vk_down);
if (l44116C7D_0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
	/// @DnDVersion : 1
	/// @DnDHash : 59B72555
	/// @DnDParent : 44116C7D
	/// @DnDArgument : "x" "(obj_player.bbox_left+obj_player.bbox_right)/2"
	/// @DnDArgument : "y" "obj_player.bbox_bottom + 64"
	/// @DnDArgument : "target" "inst_id"
	/// @DnDArgument : "obj" "obj_block_brick"
	/// @DnDArgument : "destroylist" "false"
	/// @DnDSaveInfo : "obj" "obj_block_brick"
	var l59B72555_0 = collision_point((obj_player.bbox_left+obj_player.bbox_right)/2, obj_player.bbox_bottom + 64, obj_block_brick, true, 1);
	inst_id = l59B72555_0;
	if((l59B72555_0))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 64F62CD3
		/// @DnDParent : 59B72555
		/// @DnDArgument : "value" "spr_player_dig"
		/// @DnDArgument : "instvar" "10"
		sprite_index = spr_player_dig;
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 2FBBF206
		/// @DnDApplyTo : inst_id
		/// @DnDParent : 59B72555
		with(inst_id) {
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 234B9435
			/// @DnDComment : Create an instance of the brick block destroy$(13_10)object, which is an animation that shows the$(13_10)block being destroyed$(13_10)$(13_10)It's created at the same position and in the same$(13_10)layer as the block itself
			/// @DnDParent : 2FBBF206
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_block_brick_destroy"
			/// @DnDArgument : "layer" "layer"
			/// @DnDSaveInfo : "objectid" "obj_block_brick_destroy"
			instance_create_layer(x + 0, y + 0, layer, obj_block_brick_destroy);
		
			/// @DnDAction : YoYo Games.Random.Choose
			/// @DnDVersion : 1
			/// @DnDHash : 686A9F5E
			/// @DnDComment : Choose a random block hit sound and play it
			/// @DnDInput : 3
			/// @DnDParent : 2FBBF206
			/// @DnDArgument : "var" "sound"
			/// @DnDArgument : "option" "snd_dirt_block_hit_01"
			/// @DnDArgument : "option_1" "snd_dirt_block_hit_02"
			/// @DnDArgument : "option_2" "snd_dirt_block_hit_02"
			sound = choose(snd_dirt_block_hit_01, snd_dirt_block_hit_02, snd_dirt_block_hit_02);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 6DAC8B53
			/// @DnDParent : 2FBBF206
			/// @DnDArgument : "soundid" "sound"
			audio_play_sound(sound, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2E41AC22
			/// @DnDComment : Destroy the brick block
			/// @DnDParent : 2FBBF206
			instance_destroy();
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3777DE5F
	/// @DnDParent : 44116C7D
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 46B4DA6C
		/// @DnDParent : 3777DE5F
		/// @DnDArgument : "value" "spr_player_dig"
		/// @DnDArgument : "instvar" "10"
		sprite_index = spr_player_dig;
	
		/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
		/// @DnDVersion : 1
		/// @DnDHash : 443D5BCB
		/// @DnDParent : 3777DE5F
		/// @DnDArgument : "x" "(obj_player.bbox_left+obj_player.bbox_right)/2"
		/// @DnDArgument : "y" "obj_player.bbox_bottom + 64"
		/// @DnDArgument : "var" "tile"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "layername" ""CollisionTiles""
		var l443D5BCB_0 = layer_tilemap_get_id("CollisionTiles");
		var tile = undefined;
		if(l443D5BCB_0 > -1) {
			var l443D5BCB_1 = tilemap_get_at_pixel(l443D5BCB_0, (obj_player.bbox_left+obj_player.bbox_right)/2, obj_player.bbox_bottom + 64);
			if(l443D5BCB_1 > -1) tile = tile_get_index(l443D5BCB_1);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6879FE90
		/// @DnDParent : 3777DE5F
		/// @DnDArgument : "var" "tile"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "109"
		if(!(tile == 109))
		{
			/// @DnDAction : YoYo Games.Tiles.Tile_Set_At_Pixel
			/// @DnDVersion : 1
			/// @DnDHash : 445A4CB4
			/// @DnDParent : 6879FE90
			/// @DnDArgument : "x" "(obj_player.bbox_left+obj_player.bbox_right)/2"
			/// @DnDArgument : "y" "obj_player.bbox_bottom + 64"
			/// @DnDArgument : "layername" ""CollisionTiles""
			var l445A4CB4_0 = layer_tilemap_get_id("CollisionTiles");
			if(l445A4CB4_0 > -1) {
				var l445A4CB4_1 = tilemap_get_at_pixel(l445A4CB4_0, (obj_player.bbox_left+obj_player.bbox_right)/2, obj_player.bbox_bottom + 64);
				if(l445A4CB4_1 > -1) {
					l445A4CB4_1 = tile_set_index(l445A4CB4_1, 0);
					if(l445A4CB4_1 > -1) tilemap_set_at_pixel(l445A4CB4_0, l445A4CB4_1, (obj_player.bbox_left+obj_player.bbox_right)/2, obj_player.bbox_bottom + 64);
				}
			}
		
			/// @DnDAction : YoYo Games.Tiles.TileSet_Get_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2B412A88
			/// @DnDParent : 6879FE90
			/// @DnDArgument : "target" "temp_x"
			/// @DnDArgument : "target_temp" "1"
			/// @DnDArgument : "layername" ""CollisionTiles""
			var l2B412A88_0 = layer_tilemap_get_id("CollisionTiles");
			if(l2B412A88_0 > -1) {
				var temp_x = tilemap_get_x(l2B412A88_0);
			}
		
			/// @DnDAction : YoYo Games.Tiles.TileSet_Get_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 44F4C6D2
			/// @DnDParent : 6879FE90
			/// @DnDArgument : "target" "temp_y"
			/// @DnDArgument : "target_temp" "1"
			/// @DnDArgument : "layername" ""CollisionTiles""
			/// @DnDArgument : "var" "1"
			var l44F4C6D2_0 = layer_tilemap_get_id("CollisionTiles");
			if(l44F4C6D2_0 > -1) {
				var temp_y = tilemap_get_y(l44F4C6D2_0);
			}
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4A7F1E6E
			/// @DnDComment : Create an instance of the brick block destroy$(13_10)object, which is an animation that shows the$(13_10)block being destroyed$(13_10)$(13_10)It's created at the same position and in the same$(13_10)layer as the block itself
			/// @DnDParent : 6879FE90
			/// @DnDArgument : "xpos" "temp_x"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "temp_y"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_block_brick_destroy"
			/// @DnDArgument : "layer" "layer"
			/// @DnDSaveInfo : "objectid" "obj_block_brick_destroy"
			instance_create_layer(x + temp_x, y + temp_y, layer, obj_block_brick_destroy);
		
			/// @DnDAction : YoYo Games.Random.Choose
			/// @DnDVersion : 1
			/// @DnDHash : 2EABDE45
			/// @DnDComment : Choose a random block hit sound and play it
			/// @DnDInput : 3
			/// @DnDParent : 6879FE90
			/// @DnDArgument : "var" "sound"
			/// @DnDArgument : "option" "snd_dirt_block_hit_01"
			/// @DnDArgument : "option_1" "snd_dirt_block_hit_02"
			/// @DnDArgument : "option_2" "snd_dirt_block_hit_02"
			sound = choose(snd_dirt_block_hit_01, snd_dirt_block_hit_02, snd_dirt_block_hit_02);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 66A4EB73
			/// @DnDParent : 6879FE90
			/// @DnDArgument : "soundid" "sound"
			audio_play_sound(sound, 0, 0, 1.0, undefined, 1.0);
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 315F7639
else
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 1E366ED0
	/// @DnDParent : 315F7639
	/// @DnDArgument : "key" "vk_up"
	var l1E366ED0_0;
	l1E366ED0_0 = keyboard_check(vk_up);
	if (l1E366ED0_0)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
		/// @DnDVersion : 1
		/// @DnDHash : 7AF8F02B
		/// @DnDParent : 1E366ED0
		/// @DnDArgument : "x" "(obj_player.bbox_left+obj_player.bbox_right)/2"
		/// @DnDArgument : "y" "obj_player.bbox_top - 64"
		/// @DnDArgument : "target" "inst_id"
		/// @DnDArgument : "obj" "obj_block_brick"
		/// @DnDArgument : "destroylist" "false"
		/// @DnDSaveInfo : "obj" "obj_block_brick"
		var l7AF8F02B_0 = collision_point((obj_player.bbox_left+obj_player.bbox_right)/2, obj_player.bbox_top - 64, obj_block_brick, true, 1);
		inst_id = l7AF8F02B_0;
		if((l7AF8F02B_0))
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 56077B31
			/// @DnDParent : 7AF8F02B
			/// @DnDArgument : "value" "spr_player_idle_pickaxe"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_player_idle_pickaxe;
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 7FB02E06
			/// @DnDApplyTo : inst_id
			/// @DnDParent : 7AF8F02B
			with(inst_id) {
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 30EFAB7D
				/// @DnDComment : Create an instance of the brick block destroy$(13_10)object, which is an animation that shows the$(13_10)block being destroyed$(13_10)$(13_10)It's created at the same position and in the same$(13_10)layer as the block itself
				/// @DnDParent : 7FB02E06
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "obj_block_brick_destroy"
				/// @DnDArgument : "layer" "layer"
				/// @DnDSaveInfo : "objectid" "obj_block_brick_destroy"
				instance_create_layer(x + 0, y + 0, layer, obj_block_brick_destroy);
			
				/// @DnDAction : YoYo Games.Random.Choose
				/// @DnDVersion : 1
				/// @DnDHash : 1CFE3087
				/// @DnDComment : Choose a random block hit sound and play it
				/// @DnDInput : 3
				/// @DnDParent : 7FB02E06
				/// @DnDArgument : "var" "sound"
				/// @DnDArgument : "option" "snd_dirt_block_hit_01"
				/// @DnDArgument : "option_1" "snd_dirt_block_hit_02"
				/// @DnDArgument : "option_2" "snd_dirt_block_hit_02"
				sound = choose(snd_dirt_block_hit_01, snd_dirt_block_hit_02, snd_dirt_block_hit_02);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 29D11661
				/// @DnDParent : 7FB02E06
				/// @DnDArgument : "soundid" "sound"
				audio_play_sound(sound, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 72FF15E0
				/// @DnDComment : Destroy the brick block
				/// @DnDParent : 7FB02E06
				instance_destroy();
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 0FB560B5
		/// @DnDParent : 1E366ED0
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 50AC59C0
			/// @DnDParent : 0FB560B5
			/// @DnDArgument : "value" "spr_player_idle_pickaxe"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_player_idle_pickaxe;
		
			/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
			/// @DnDVersion : 1
			/// @DnDHash : 4B4FD45E
			/// @DnDParent : 0FB560B5
			/// @DnDArgument : "x" "(obj_player.bbox_left+obj_player.bbox_right)/2"
			/// @DnDArgument : "y" "obj_player.bbox_top - 64"
			/// @DnDArgument : "var" "tile"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "layername" ""CollisionTiles""
			var l4B4FD45E_0 = layer_tilemap_get_id("CollisionTiles");
			var tile = undefined;
			if(l4B4FD45E_0 > -1) {
				var l4B4FD45E_1 = tilemap_get_at_pixel(l4B4FD45E_0, (obj_player.bbox_left+obj_player.bbox_right)/2, obj_player.bbox_top - 64);
				if(l4B4FD45E_1 > -1) tile = tile_get_index(l4B4FD45E_1);
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4B9AD0B8
			/// @DnDParent : 0FB560B5
			/// @DnDArgument : "var" "tile"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" "109"
			if(!(tile == 109))
			{
				/// @DnDAction : YoYo Games.Tiles.Tile_Set_At_Pixel
				/// @DnDVersion : 1
				/// @DnDHash : 34DB00B4
				/// @DnDParent : 4B9AD0B8
				/// @DnDArgument : "x" "(obj_player.bbox_left+obj_player.bbox_right)/2"
				/// @DnDArgument : "y" "obj_player.bbox_top - 64"
				/// @DnDArgument : "layername" ""CollisionTiles""
				var l34DB00B4_0 = layer_tilemap_get_id("CollisionTiles");
				if(l34DB00B4_0 > -1) {
					var l34DB00B4_1 = tilemap_get_at_pixel(l34DB00B4_0, (obj_player.bbox_left+obj_player.bbox_right)/2, obj_player.bbox_top - 64);
					if(l34DB00B4_1 > -1) {
						l34DB00B4_1 = tile_set_index(l34DB00B4_1, 0);
						if(l34DB00B4_1 > -1) tilemap_set_at_pixel(l34DB00B4_0, l34DB00B4_1, (obj_player.bbox_left+obj_player.bbox_right)/2, obj_player.bbox_top - 64);
					}
				}
			
				/// @DnDAction : YoYo Games.Tiles.TileSet_Get_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7A8F5872
				/// @DnDParent : 4B9AD0B8
				/// @DnDArgument : "target" "temp_x"
				/// @DnDArgument : "target_temp" "1"
				/// @DnDArgument : "layername" ""CollisionTiles""
				var l7A8F5872_0 = layer_tilemap_get_id("CollisionTiles");
				if(l7A8F5872_0 > -1) {
					var temp_x = tilemap_get_x(l7A8F5872_0);
				}
			
				/// @DnDAction : YoYo Games.Tiles.TileSet_Get_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 05B1BBE3
				/// @DnDParent : 4B9AD0B8
				/// @DnDArgument : "target" "temp_y"
				/// @DnDArgument : "target_temp" "1"
				/// @DnDArgument : "layername" ""CollisionTiles""
				/// @DnDArgument : "var" "1"
				var l05B1BBE3_0 = layer_tilemap_get_id("CollisionTiles");
				if(l05B1BBE3_0 > -1) {
					var temp_y = tilemap_get_y(l05B1BBE3_0);
				}
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 54D15117
				/// @DnDComment : Create an instance of the brick block destroy$(13_10)object, which is an animation that shows the$(13_10)block being destroyed$(13_10)$(13_10)It's created at the same position and in the same$(13_10)layer as the block itself
				/// @DnDParent : 4B9AD0B8
				/// @DnDArgument : "xpos" "temp_x"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "temp_y-256"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "obj_block_brick_destroy"
				/// @DnDArgument : "layer" "layer"
				/// @DnDSaveInfo : "objectid" "obj_block_brick_destroy"
				instance_create_layer(x + temp_x, y + temp_y-256, layer, obj_block_brick_destroy);
			
				/// @DnDAction : YoYo Games.Random.Choose
				/// @DnDVersion : 1
				/// @DnDHash : 065403B2
				/// @DnDComment : Choose a random block hit sound and play it
				/// @DnDInput : 3
				/// @DnDParent : 4B9AD0B8
				/// @DnDArgument : "var" "sound"
				/// @DnDArgument : "option" "snd_dirt_block_hit_01"
				/// @DnDArgument : "option_1" "snd_dirt_block_hit_02"
				/// @DnDArgument : "option_2" "snd_dirt_block_hit_02"
				sound = choose(snd_dirt_block_hit_01, snd_dirt_block_hit_02, snd_dirt_block_hit_02);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 3CCC6D9F
				/// @DnDParent : 4B9AD0B8
				/// @DnDArgument : "soundid" "sound"
				audio_play_sound(sound, 0, 0, 1.0, undefined, 1.0);
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6FFA3125
	/// @DnDParent : 315F7639
	else
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 11D84FD5
		/// @DnDParent : 6FFA3125
		/// @DnDArgument : "key" "vk_left"
		var l11D84FD5_0;
		l11D84FD5_0 = keyboard_check(vk_left);
		if (l11D84FD5_0)
		{
			/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
			/// @DnDVersion : 1
			/// @DnDHash : 2B3850F6
			/// @DnDParent : 11D84FD5
			/// @DnDArgument : "x" "obj_player.bbox_left - 64"
			/// @DnDArgument : "y" "(obj_player.bbox_top+obj_player.bbox_bottom)/2"
			/// @DnDArgument : "target" "inst_id"
			/// @DnDArgument : "obj" "obj_block_brick"
			/// @DnDArgument : "destroylist" "false"
			/// @DnDSaveInfo : "obj" "obj_block_brick"
			var l2B3850F6_0 = collision_point(obj_player.bbox_left - 64, (obj_player.bbox_top+obj_player.bbox_bottom)/2, obj_block_brick, true, 1);
			inst_id = l2B3850F6_0;
			if((l2B3850F6_0))
			{
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 7181A06F
				/// @DnDParent : 2B3850F6
				/// @DnDArgument : "value" "spr_player_walk_pickaxe"
				/// @DnDArgument : "instvar" "10"
				sprite_index = spr_player_walk_pickaxe;
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 6149CA54
				/// @DnDApplyTo : inst_id
				/// @DnDParent : 2B3850F6
				with(inst_id) {
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 2D60ECD0
					/// @DnDComment : Create an instance of the brick block destroy$(13_10)object, which is an animation that shows the$(13_10)block being destroyed$(13_10)$(13_10)It's created at the same position and in the same$(13_10)layer as the block itself
					/// @DnDParent : 6149CA54
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_block_brick_destroy"
					/// @DnDArgument : "layer" "layer"
					/// @DnDSaveInfo : "objectid" "obj_block_brick_destroy"
					instance_create_layer(x + 0, y + 0, layer, obj_block_brick_destroy);
				
					/// @DnDAction : YoYo Games.Random.Choose
					/// @DnDVersion : 1
					/// @DnDHash : 53B5EA10
					/// @DnDComment : Choose a random block hit sound and play it
					/// @DnDInput : 3
					/// @DnDParent : 6149CA54
					/// @DnDArgument : "var" "sound"
					/// @DnDArgument : "option" "snd_dirt_block_hit_01"
					/// @DnDArgument : "option_1" "snd_dirt_block_hit_02"
					/// @DnDArgument : "option_2" "snd_dirt_block_hit_02"
					sound = choose(snd_dirt_block_hit_01, snd_dirt_block_hit_02, snd_dirt_block_hit_02);
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 147A8B2F
					/// @DnDParent : 6149CA54
					/// @DnDArgument : "soundid" "sound"
					audio_play_sound(sound, 0, 0, 1.0, undefined, 1.0);
				
					/// @DnDAction : YoYo Games.Instances.Destroy_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 64ED5E97
					/// @DnDComment : Destroy the brick block
					/// @DnDParent : 6149CA54
					instance_destroy();
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 5FB6F583
			/// @DnDParent : 11D84FD5
			else
			{
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 1D64F2F9
				/// @DnDParent : 5FB6F583
				/// @DnDArgument : "value" "spr_player_walk_pickaxe"
				/// @DnDArgument : "instvar" "10"
				sprite_index = spr_player_walk_pickaxe;
			
				/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
				/// @DnDVersion : 1
				/// @DnDHash : 44F80B10
				/// @DnDParent : 5FB6F583
				/// @DnDArgument : "x" "obj_player.bbox_left - 64"
				/// @DnDArgument : "y" "(obj_player.bbox_top+obj_player.bbox_bottom)/2"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "var" "tile"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "layername" ""CollisionTiles""
				var l44F80B10_0 = layer_tilemap_get_id("CollisionTiles");
				var tile = undefined;
				if(l44F80B10_0 > -1) {
					var l44F80B10_1 = tilemap_get_at_pixel(l44F80B10_0, obj_player.bbox_left - 64, y + (obj_player.bbox_top+obj_player.bbox_bottom)/2);
					if(l44F80B10_1 > -1) tile = tile_get_index(l44F80B10_1);
				}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1A3DC2A8
				/// @DnDParent : 5FB6F583
				/// @DnDArgument : "var" "tile"
				/// @DnDArgument : "not" "1"
				/// @DnDArgument : "value" "109"
				if(!(tile == 109))
				{
					/// @DnDAction : YoYo Games.Tiles.Tile_Set_At_Pixel
					/// @DnDVersion : 1
					/// @DnDHash : 19035051
					/// @DnDParent : 1A3DC2A8
					/// @DnDArgument : "x" "obj_player.bbox_left - 64"
					/// @DnDArgument : "y" "(obj_player.bbox_top+obj_player.bbox_bottom)/2"
					/// @DnDArgument : "layername" ""CollisionTiles""
					var l19035051_0 = layer_tilemap_get_id("CollisionTiles");
					if(l19035051_0 > -1) {
						var l19035051_1 = tilemap_get_at_pixel(l19035051_0, obj_player.bbox_left - 64, (obj_player.bbox_top+obj_player.bbox_bottom)/2);
						if(l19035051_1 > -1) {
							l19035051_1 = tile_set_index(l19035051_1, 0);
							if(l19035051_1 > -1) tilemap_set_at_pixel(l19035051_0, l19035051_1, obj_player.bbox_left - 64, (obj_player.bbox_top+obj_player.bbox_bottom)/2);
						}
					}
				
					/// @DnDAction : YoYo Games.Tiles.TileSet_Get_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 53901AA7
					/// @DnDParent : 1A3DC2A8
					/// @DnDArgument : "target" "temp_x"
					/// @DnDArgument : "target_temp" "1"
					/// @DnDArgument : "layername" ""CollisionTiles""
					var l53901AA7_0 = layer_tilemap_get_id("CollisionTiles");
					if(l53901AA7_0 > -1) {
						var temp_x = tilemap_get_x(l53901AA7_0);
					}
				
					/// @DnDAction : YoYo Games.Tiles.TileSet_Get_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2F5FDB48
					/// @DnDParent : 1A3DC2A8
					/// @DnDArgument : "target" "temp_y"
					/// @DnDArgument : "target_temp" "1"
					/// @DnDArgument : "layername" ""CollisionTiles""
					/// @DnDArgument : "var" "1"
					var l2F5FDB48_0 = layer_tilemap_get_id("CollisionTiles");
					if(l2F5FDB48_0 > -1) {
						var temp_y = tilemap_get_y(l2F5FDB48_0);
					}
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 3C0283B6
					/// @DnDComment : Create an instance of the brick block destroy$(13_10)object, which is an animation that shows the$(13_10)block being destroyed$(13_10)$(13_10)It's created at the same position and in the same$(13_10)layer as the block itself
					/// @DnDParent : 1A3DC2A8
					/// @DnDArgument : "xpos" "temp_x-128"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "temp_y-128"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_block_brick_destroy"
					/// @DnDArgument : "layer" "layer"
					/// @DnDSaveInfo : "objectid" "obj_block_brick_destroy"
					instance_create_layer(x + temp_x-128, y + temp_y-128, layer, obj_block_brick_destroy);
				
					/// @DnDAction : YoYo Games.Random.Choose
					/// @DnDVersion : 1
					/// @DnDHash : 53664EBE
					/// @DnDComment : Choose a random block hit sound and play it
					/// @DnDInput : 3
					/// @DnDParent : 1A3DC2A8
					/// @DnDArgument : "var" "sound"
					/// @DnDArgument : "option" "snd_dirt_block_hit_01"
					/// @DnDArgument : "option_1" "snd_dirt_block_hit_02"
					/// @DnDArgument : "option_2" "snd_dirt_block_hit_02"
					sound = choose(snd_dirt_block_hit_01, snd_dirt_block_hit_02, snd_dirt_block_hit_02);
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 7C74EE69
					/// @DnDParent : 1A3DC2A8
					/// @DnDArgument : "soundid" "sound"
					audio_play_sound(sound, 0, 0, 1.0, undefined, 1.0);
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5C45E37F
		/// @DnDParent : 6FFA3125
		else
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 0D69A625
			/// @DnDParent : 5C45E37F
			/// @DnDArgument : "key" "vk_right"
			var l0D69A625_0;
			l0D69A625_0 = keyboard_check(vk_right);
			if (l0D69A625_0)
			{
				/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
				/// @DnDVersion : 1
				/// @DnDHash : 1CEC2F92
				/// @DnDParent : 0D69A625
				/// @DnDArgument : "x" "obj_player.bbox_right + 64"
				/// @DnDArgument : "y" "(obj_player.bbox_top+obj_player.bbox_bottom)/2"
				/// @DnDArgument : "target" "inst_id"
				/// @DnDArgument : "obj" "obj_block_brick"
				/// @DnDArgument : "destroylist" "false"
				/// @DnDSaveInfo : "obj" "obj_block_brick"
				var l1CEC2F92_0 = collision_point(obj_player.bbox_right + 64, (obj_player.bbox_top+obj_player.bbox_bottom)/2, obj_block_brick, true, 1);
				inst_id = l1CEC2F92_0;
				if((l1CEC2F92_0))
				{
					/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
					/// @DnDVersion : 1
					/// @DnDHash : 275C7E3D
					/// @DnDParent : 1CEC2F92
					/// @DnDArgument : "value" "spr_player_walk_pickaxe"
					/// @DnDArgument : "instvar" "10"
					sprite_index = spr_player_walk_pickaxe;
				
					/// @DnDAction : YoYo Games.Common.Apply_To
					/// @DnDVersion : 1
					/// @DnDHash : 1B28B8E2
					/// @DnDApplyTo : inst_id
					/// @DnDParent : 1CEC2F92
					with(inst_id) {
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 669370A8
						/// @DnDComment : Create an instance of the brick block destroy$(13_10)object, which is an animation that shows the$(13_10)block being destroyed$(13_10)$(13_10)It's created at the same position and in the same$(13_10)layer as the block itself
						/// @DnDParent : 1B28B8E2
						/// @DnDArgument : "xpos_relative" "1"
						/// @DnDArgument : "ypos_relative" "1"
						/// @DnDArgument : "objectid" "obj_block_brick_destroy"
						/// @DnDArgument : "layer" "layer"
						/// @DnDSaveInfo : "objectid" "obj_block_brick_destroy"
						instance_create_layer(x + 0, y + 0, layer, obj_block_brick_destroy);
					
						/// @DnDAction : YoYo Games.Random.Choose
						/// @DnDVersion : 1
						/// @DnDHash : 4DAEA5D5
						/// @DnDComment : Choose a random block hit sound and play it
						/// @DnDInput : 3
						/// @DnDParent : 1B28B8E2
						/// @DnDArgument : "var" "sound"
						/// @DnDArgument : "option" "snd_dirt_block_hit_01"
						/// @DnDArgument : "option_1" "snd_dirt_block_hit_02"
						/// @DnDArgument : "option_2" "snd_dirt_block_hit_02"
						sound = choose(snd_dirt_block_hit_01, snd_dirt_block_hit_02, snd_dirt_block_hit_02);
					
						/// @DnDAction : YoYo Games.Audio.Play_Audio
						/// @DnDVersion : 1.1
						/// @DnDHash : 5DECA4CF
						/// @DnDParent : 1B28B8E2
						/// @DnDArgument : "soundid" "sound"
						audio_play_sound(sound, 0, 0, 1.0, undefined, 1.0);
					
						/// @DnDAction : YoYo Games.Instances.Destroy_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 3D8E170C
						/// @DnDComment : Destroy the brick block
						/// @DnDParent : 1B28B8E2
						instance_destroy();
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 3257B292
				/// @DnDParent : 0D69A625
				else
				{
					/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
					/// @DnDVersion : 1
					/// @DnDHash : 31B1E5AD
					/// @DnDParent : 3257B292
					/// @DnDArgument : "value" "spr_player_walk_pickaxe"
					/// @DnDArgument : "instvar" "10"
					sprite_index = spr_player_walk_pickaxe;
				
					/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
					/// @DnDVersion : 1
					/// @DnDHash : 03DCD915
					/// @DnDParent : 3257B292
					/// @DnDArgument : "x" "obj_player.bbox_right + 64"
					/// @DnDArgument : "y" "(obj_player.bbox_top+obj_player.bbox_bottom)/2"
					/// @DnDArgument : "var" "tile"
					/// @DnDArgument : "var_temp" "1"
					/// @DnDArgument : "layername" ""CollisionTiles""
					var l03DCD915_0 = layer_tilemap_get_id("CollisionTiles");
					var tile = undefined;
					if(l03DCD915_0 > -1) {
						var l03DCD915_1 = tilemap_get_at_pixel(l03DCD915_0, obj_player.bbox_right + 64, (obj_player.bbox_top+obj_player.bbox_bottom)/2);
						if(l03DCD915_1 > -1) tile = tile_get_index(l03DCD915_1);
					}
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 288A1ED4
					/// @DnDParent : 3257B292
					/// @DnDArgument : "var" "tile"
					/// @DnDArgument : "not" "1"
					/// @DnDArgument : "value" "109"
					if(!(tile == 109))
					{
						/// @DnDAction : YoYo Games.Tiles.Tile_Set_At_Pixel
						/// @DnDVersion : 1
						/// @DnDHash : 037FD805
						/// @DnDParent : 288A1ED4
						/// @DnDArgument : "x" "obj_player.bbox_right + 64"
						/// @DnDArgument : "y" "(obj_player.bbox_top+obj_player.bbox_bottom)/2"
						/// @DnDArgument : "layername" ""CollisionTiles""
						var l037FD805_0 = layer_tilemap_get_id("CollisionTiles");
						if(l037FD805_0 > -1) {
							var l037FD805_1 = tilemap_get_at_pixel(l037FD805_0, obj_player.bbox_right + 64, (obj_player.bbox_top+obj_player.bbox_bottom)/2);
							if(l037FD805_1 > -1) {
								l037FD805_1 = tile_set_index(l037FD805_1, 0);
								if(l037FD805_1 > -1) tilemap_set_at_pixel(l037FD805_0, l037FD805_1, obj_player.bbox_right + 64, (obj_player.bbox_top+obj_player.bbox_bottom)/2);
							}
						}
					
						/// @DnDAction : YoYo Games.Tiles.TileSet_Get_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 5923F380
						/// @DnDParent : 288A1ED4
						/// @DnDArgument : "target" "temp_x"
						/// @DnDArgument : "target_temp" "1"
						/// @DnDArgument : "layername" ""CollisionTiles""
						var l5923F380_0 = layer_tilemap_get_id("CollisionTiles");
						if(l5923F380_0 > -1) {
							var temp_x = tilemap_get_x(l5923F380_0);
						}
					
						/// @DnDAction : YoYo Games.Tiles.TileSet_Get_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 754F4D6D
						/// @DnDParent : 288A1ED4
						/// @DnDArgument : "target" "temp_y"
						/// @DnDArgument : "target_temp" "1"
						/// @DnDArgument : "layername" ""CollisionTiles""
						/// @DnDArgument : "var" "1"
						var l754F4D6D_0 = layer_tilemap_get_id("CollisionTiles");
						if(l754F4D6D_0 > -1) {
							var temp_y = tilemap_get_y(l754F4D6D_0);
						}
					
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 27DFA4D9
						/// @DnDComment : Create an instance of the brick block destroy$(13_10)object, which is an animation that shows the$(13_10)block being destroyed$(13_10)$(13_10)It's created at the same position and in the same$(13_10)layer as the block itself
						/// @DnDParent : 288A1ED4
						/// @DnDArgument : "xpos" "temp_x+128"
						/// @DnDArgument : "xpos_relative" "1"
						/// @DnDArgument : "ypos" "temp_y-128"
						/// @DnDArgument : "ypos_relative" "1"
						/// @DnDArgument : "objectid" "obj_block_brick_destroy"
						/// @DnDArgument : "layer" "layer"
						/// @DnDSaveInfo : "objectid" "obj_block_brick_destroy"
						instance_create_layer(x + temp_x+128, y + temp_y-128, layer, obj_block_brick_destroy);
					
						/// @DnDAction : YoYo Games.Random.Choose
						/// @DnDVersion : 1
						/// @DnDHash : 4C452EBA
						/// @DnDComment : Choose a random block hit sound and play it
						/// @DnDInput : 3
						/// @DnDParent : 288A1ED4
						/// @DnDArgument : "var" "sound"
						/// @DnDArgument : "option" "snd_dirt_block_hit_01"
						/// @DnDArgument : "option_1" "snd_dirt_block_hit_02"
						/// @DnDArgument : "option_2" "snd_dirt_block_hit_02"
						sound = choose(snd_dirt_block_hit_01, snd_dirt_block_hit_02, snd_dirt_block_hit_02);
					
						/// @DnDAction : YoYo Games.Audio.Play_Audio
						/// @DnDVersion : 1.1
						/// @DnDHash : 0180F3DC
						/// @DnDParent : 288A1ED4
						/// @DnDArgument : "soundid" "sound"
						audio_play_sound(sound, 0, 0, 1.0, undefined, 1.0);
					}
				}
			}
		}
	}
}