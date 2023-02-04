/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 44116C7D
/// @DnDArgument : "key" "vk_down"
var l44116C7D_0;
l44116C7D_0 = keyboard_check(vk_down);
if (l44116C7D_0)
{
	/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 443D5BCB
	/// @DnDParent : 44116C7D
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
	/// @DnDParent : 44116C7D
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
		/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
		/// @DnDVersion : 1
		/// @DnDHash : 4B4FD45E
		/// @DnDParent : 1E366ED0
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
		/// @DnDParent : 1E366ED0
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
			/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
			/// @DnDVersion : 1
			/// @DnDHash : 44F80B10
			/// @DnDParent : 11D84FD5
			/// @DnDArgument : "x" "obj_player.bbox_left - 64"
			/// @DnDArgument : "y" "(obj_player.bbox_top+obj_player.bbox_bottom)/2"
			/// @DnDArgument : "var" "tile"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "layername" ""CollisionTiles""
			var l44F80B10_0 = layer_tilemap_get_id("CollisionTiles");
			var tile = undefined;
			if(l44F80B10_0 > -1) {
				var l44F80B10_1 = tilemap_get_at_pixel(l44F80B10_0, obj_player.bbox_left - 64, (obj_player.bbox_top+obj_player.bbox_bottom)/2);
				if(l44F80B10_1 > -1) tile = tile_get_index(l44F80B10_1);
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1A3DC2A8
			/// @DnDParent : 11D84FD5
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
				/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
				/// @DnDVersion : 1
				/// @DnDHash : 03DCD915
				/// @DnDParent : 0D69A625
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
				/// @DnDParent : 0D69A625
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
				}
			}
		}
	}
}