
#include"lvgl/lvgl.h"

static lv_obj_t * meter;

static void set_value(void * indic, int32_t v)
{
    lv_meter_set_indicator_end_value(meter, indic, v);
}


void rgb_mixer_create_ui(void)
{
	lv_obj_t* heading = lv_label_create(lv_scr_act());
	lv_label_set_text(heading,"Analog Clock");
	lv_obj_align(heading,LV_ALIGN_TOP_MID,0,30);

	meter = lv_meter_create(lv_scr_act());
	lv_obj_set_size(meter, 150, 150);
	lv_obj_center(meter);

	lv_meter_scale_t * scale_hour = lv_meter_add_scale(meter);
	lv_meter_set_scale_ticks(meter, scale_hour, 12, 0, 0, lv_palette_main(LV_PALETTE_GREY));               /*12 ticks*/
	lv_meter_set_scale_major_ticks(meter, scale_hour, 1, 2, 10, lv_color_black(), 10);    /*Every tick is major*/
	lv_meter_set_scale_range(meter, scale_hour, 1, 12, 330, 300);       /*[1..12] values in an almost full circle*/

}
