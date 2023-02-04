/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4FFCDB32
/// @DnDArgument : "key" "vk_down"
var l4FFCDB32_0;
l4FFCDB32_0 = keyboard_check(vk_down);
if (l4FFCDB32_0)
{
	/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 443D5BCB
	/// @DnDParent : 4FFCDB32
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
	/// @DnDParent : 4FFCDB32
	/// @DnDArgument : "var" "tile"
	/// @DnDArgument : "not" "1"
	if(!(tile == 0))
	{
	
	}

	/// @DnDAction : YoYo Games.Tiles.Tile_Set_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 445A4CB4
	/// @DnDParent : 4FFCDB32
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

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 629AA689
else
{

}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 461DEC29
/// @DnDArgument : "key" "vk_right"
var l461DEC29_0;
l461DEC29_0 = keyboard_check(vk_right);
if (l461DEC29_0)
{
	/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 358EC8C4
	/// @DnDParent : 461DEC29
	/// @DnDArgument : "x" "obj_player.bbox_right + 64"
	/// @DnDArgument : "y" "(obj_player.bbox_top +obj_player.bbox_bottom)/2"
	/// @DnDArgument : "var" "tile"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "layername" ""CollisionTiles""
	var l358EC8C4_0 = layer_tilemap_get_id("CollisionTiles");
	var tile = undefined;
	if(l358EC8C4_0 > -1) {
		var l358EC8C4_1 = tilemap_get_at_pixel(l358EC8C4_0, obj_player.bbox_right + 64, (obj_player.bbox_top +obj_player.bbox_bottom)/2);
		if(l358EC8C4_1 > -1) tile = tile_get_index(l358EC8C4_1);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2415B74F
	/// @DnDParent : 461DEC29
	/// @DnDArgument : "var" "tile"
	/// @DnDArgument : "not" "1"
	if(!(tile == 0))
	{
	
	}

	/// @DnDAction : YoYo Games.Tiles.Tile_Set_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 4F108EAF
	/// @DnDParent : 461DEC29
	/// @DnDArgument : "x" "obj_player.bbox_right + 64"
	/// @DnDArgument : "y" "(obj_player.bbox_top +obj_player.bbox_bottom)/2"
	/// @DnDArgument : "layername" ""CollisionTiles""
	var l4F108EAF_0 = layer_tilemap_get_id("CollisionTiles");
	if(l4F108EAF_0 > -1) {
		var l4F108EAF_1 = tilemap_get_at_pixel(l4F108EAF_0, obj_player.bbox_right + 64, (obj_player.bbox_top +obj_player.bbox_bottom)/2);
		if(l4F108EAF_1 > -1) {
			l4F108EAF_1 = tile_set_index(l4F108EAF_1, 0);
			if(l4F108EAF_1 > -1) tilemap_set_at_pixel(l4F108EAF_0, l4F108EAF_1, obj_player.bbox_right + 64, (obj_player.bbox_top +obj_player.bbox_bottom)/2);
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3DA8B127
else
{

}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5F242194
/// @DnDArgument : "key" "vk_left"
var l5F242194_0;
l5F242194_0 = keyboard_check(vk_left);
if (l5F242194_0)
{
	/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 0BE2554A
	/// @DnDParent : 5F242194
	/// @DnDArgument : "x" "obj_player.bbox_left - 64"
	/// @DnDArgument : "y" "(obj_player.bbox_top +obj_player.bbox_bottom)/2"
	/// @DnDArgument : "var" "tile"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "layername" ""CollisionTiles""
	var l0BE2554A_0 = layer_tilemap_get_id("CollisionTiles");
	var tile = undefined;
	if(l0BE2554A_0 > -1) {
		var l0BE2554A_1 = tilemap_get_at_pixel(l0BE2554A_0, obj_player.bbox_left - 64, (obj_player.bbox_top +obj_player.bbox_bottom)/2);
		if(l0BE2554A_1 > -1) tile = tile_get_index(l0BE2554A_1);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41E7C812
	/// @DnDParent : 5F242194
	/// @DnDArgument : "var" "tile"
	/// @DnDArgument : "not" "1"
	if(!(tile == 0))
	{
	
	}

	/// @DnDAction : YoYo Games.Tiles.Tile_Set_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 4731CEC2
	/// @DnDParent : 5F242194
	/// @DnDArgument : "x" "obj_player.bbox_left - 64"
	/// @DnDArgument : "y" "(obj_player.bbox_top +obj_player.bbox_bottom)/2"
	/// @DnDArgument : "layername" ""CollisionTiles""
	var l4731CEC2_0 = layer_tilemap_get_id("CollisionTiles");
	if(l4731CEC2_0 > -1) {
		var l4731CEC2_1 = tilemap_get_at_pixel(l4731CEC2_0, obj_player.bbox_left - 64, (obj_player.bbox_top +obj_player.bbox_bottom)/2);
		if(l4731CEC2_1 > -1) {
			l4731CEC2_1 = tile_set_index(l4731CEC2_1, 0);
			if(l4731CEC2_1 > -1) tilemap_set_at_pixel(l4731CEC2_0, l4731CEC2_1, obj_player.bbox_left - 64, (obj_player.bbox_top +obj_player.bbox_bottom)/2);
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 36E3B7A8
else
{

}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 772C6162
/// @DnDArgument : "key" "vk_up"
var l772C6162_0;
l772C6162_0 = keyboard_check(vk_up);
if (l772C6162_0)
{
	/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 1BD56681
	/// @DnDParent : 772C6162
	/// @DnDArgument : "x" "(obj_player.bbox_left+obj_player.bbox_right)/2"
	/// @DnDArgument : "y" "obj_player.bbox_top - 64"
	/// @DnDArgument : "var" "tile"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "layername" ""CollisionTiles""
	var l1BD56681_0 = layer_tilemap_get_id("CollisionTiles");
	var tile = undefined;
	if(l1BD56681_0 > -1) {
		var l1BD56681_1 = tilemap_get_at_pixel(l1BD56681_0, (obj_player.bbox_left+obj_player.bbox_right)/2, obj_player.bbox_top - 64);
		if(l1BD56681_1 > -1) tile = tile_get_index(l1BD56681_1);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E645295
	/// @DnDParent : 772C6162
	/// @DnDArgument : "var" "tile"
	/// @DnDArgument : "not" "1"
	if(!(tile == 0))
	{
	
	}

	/// @DnDAction : YoYo Games.Tiles.Tile_Set_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 6D1DD941
	/// @DnDParent : 772C6162
	/// @DnDArgument : "x" "(obj_player.bbox_left+obj_player.bbox_right)/2"
	/// @DnDArgument : "y" "obj_player.bbox_top - 64"
	/// @DnDArgument : "layername" ""CollisionTiles""
	var l6D1DD941_0 = layer_tilemap_get_id("CollisionTiles");
	if(l6D1DD941_0 > -1) {
		var l6D1DD941_1 = tilemap_get_at_pixel(l6D1DD941_0, (obj_player.bbox_left+obj_player.bbox_right)/2, obj_player.bbox_top - 64);
		if(l6D1DD941_1 > -1) {
			l6D1DD941_1 = tile_set_index(l6D1DD941_1, 0);
			if(l6D1DD941_1 > -1) tilemap_set_at_pixel(l6D1DD941_0, l6D1DD941_1, (obj_player.bbox_left+obj_player.bbox_right)/2, obj_player.bbox_top - 64);
		}
	}
}