/// @description draw an alpha-enabled surface
function yui_draw_alpha_surface(surface, x, y, alpha, blend_color = c_white) {
	var bm = gpu_get_blendmode_ext();
	
	// pre-multiply alpha!!!
	gpu_set_blendmode_ext(bm_one, bm_inv_src_alpha);
	
	// need a shader to actually make animated alpha work
	draw_surface_ext(surface, x, y, 1, 1, 0, blend_color, alpha);
	
	gpu_set_blendmode_ext(bm[0], bm[1]);
}
