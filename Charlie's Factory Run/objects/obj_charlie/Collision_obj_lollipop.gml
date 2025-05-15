/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0ECE1E71
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 0088682E
/// @DnDArgument : "soundid" "Collect_Item_Sound_Effect__1_"
/// @DnDSaveInfo : "soundid" "Collect_Item_Sound_Effect__1_"
audio_play_sound(Collect_Item_Sound_Effect__1_, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 153F1A51
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "7"
/// @DnDArgument : "size" "1"
/// @DnDArgument : "color" "$FFFFB2FF"
effect_create_below(7, x + 0, y + 0, 1, $FFFFB2FF & $ffffff);

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 1A87DAB4
/// @DnDArgument : "var" "lollipop_count"
/// @DnDArgument : "object" "obj_lollipop"
/// @DnDSaveInfo : "object" "obj_lollipop"
lollipop_count = instance_number(obj_lollipop);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 75597637
/// @DnDArgument : "var" "lollipop_count"
if(lollipop_count == 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5E59045E
	/// @DnDParent : 75597637
	/// @DnDArgument : "xpos" "1119"
	/// @DnDArgument : "ypos" "50"
	/// @DnDArgument : "objectid" "obj_door_open"
	/// @DnDSaveInfo : "objectid" "obj_door_open"
	instance_create_layer(1119, 50, "Instances", obj_door_open);
}

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 003BD627
/// @DnDArgument : "value" "global.score + 1"
/// @DnDArgument : "var" "global.score"
global.score = global.score + 1;