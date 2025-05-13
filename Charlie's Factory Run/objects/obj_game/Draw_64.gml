/// @DnDAction : YoYo Games.Drawing.Draw_Gradient_Rect
/// @DnDVersion : 1
/// @DnDHash : 09D4115F
/// @DnDArgument : "x1" "20"
/// @DnDArgument : "y1" "10"
/// @DnDArgument : "x2" "400"
/// @DnDArgument : "y2" "45"
/// @DnDArgument : "col1" "$FFFF9999"
/// @DnDArgument : "col2" "$FFFF9999"
/// @DnDArgument : "col3" "$FFFF9999"
/// @DnDArgument : "col4" "$FFFF9999"
/// @DnDArgument : "fill" "1"
draw_rectangle_colour(20, 10, 400, 45, $FFFF9999 & $FFFFFF, $FFFF9999 & $FFFFFF, $FFFF9999 & $FFFFFF, $FFFF9999 & $FFFFFF, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 3DCE3E10
/// @DnDArgument : "x" "120"
/// @DnDArgument : "sprite" "spr_lollipop2"
/// @DnDArgument : "number" "global.score"
/// @DnDSaveInfo : "sprite" "spr_lollipop2"
var l3DCE3E10_0 = sprite_get_width(spr_lollipop2);
var l3DCE3E10_1 = 0;
for(var l3DCE3E10_2 = global.score; l3DCE3E10_2 > 0; --l3DCE3E10_2) {
	draw_sprite(spr_lollipop2, 0, 120 + l3DCE3E10_1, 0);
	l3DCE3E10_1 += l3DCE3E10_0;
}

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0DCAE322
draw_set_colour($FFFFFFFF & $ffffff);
var l0DCAE322_0=($FFFFFFFF >> 24);
draw_set_alpha(l0DCAE322_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 3A5B0E38
/// @DnDArgument : "font" "fnt_1"
/// @DnDSaveInfo : "font" "fnt_1"
draw_set_font(fnt_1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4AA00A21
/// @DnDArgument : "x" "30"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "caption" ""Lollipops: ""
/// @DnDArgument : "var" "global.score"
draw_text(30, 20, string("Lollipops: ") + string(global.score));