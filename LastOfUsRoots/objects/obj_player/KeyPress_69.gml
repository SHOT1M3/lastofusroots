/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 44116C7D
/// @DnDArgument : "key" "vk_down"
var l44116C7D_0;
l44116C7D_0 = keyboard_check(vk_down);
if (l44116C7D_0)
{

}

/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
/// @DnDVersion : 1
/// @DnDHash : 443D5BCB
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
/// @DnDArgument : "var" "tile"
/// @DnDArgument : "not" "1"
if(!(tile == 0))
{

}

/// @DnDAction : YoYo Games.Tiles.Tile_Set_At_Pixel
/// @DnDVersion : 1
/// @DnDHash : 445A4CB4
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