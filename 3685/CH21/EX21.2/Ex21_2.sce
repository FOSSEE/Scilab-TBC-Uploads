clc
// Given that
v_bm = 360 // Blade velocity at the mean diameter of a gas turbine stage in m/s
beta1 = 20 // Blade angle at inlet in degree
beta2 = 52 // Blade angle at exit in degree
r = 0.5 // Degree of reaction
Dm = 0.45 // Mean diameter of blade in m
h = 0.08 // Mean height of blade in m
printf("\n Example 21.2\n")
v_f = v_bm/((tand(beta2))-tand(beta1))
r_r = (Dm/2)-h/2
r_t = Dm/2 +h/2
delta_v_wm = v_f*((tand(beta1))+(tand(beta2)))
v_br = v_bm*(r_r/(Dm/2))
delta_v_wr = delta_v_wm*v_bm/v_br

v_bt = (r_t/(Dm/2))*v_bm
v_w_1m = v_f*(tand(beta2))
v_w_1t = v_w_1m*(Dm/2)/r_t
delta_v_wt = v_f*((tand(beta1))+(tand(beta2)))*v_bm/v_bt
v_w_1r = v_w_1m*((Dm/2)/r_r)
alpha_1r = atand(v_w_1r/v_f)
alpha_2r = atand((delta_v_wr-v_w_1r)/v_f)
beta_1r = atand((v_w_1r-v_br)/v_f)
beta_2r = atand((v_br+v_f*(tand(alpha_2r)))/v_f)
alpha_1t = atand(v_w_1t/v_f)
alpha_2t = atand((delta_v_wt-v_w_1t)/v_f)
beta_1t = atand((v_w_1t-v_bt)/v_f)
beta_2t = atand((v_bt+(v_f*tand(alpha_2t)))/v_f)
Rt = v_f*((tand(beta_2t))-(tand(beta_1t)))/(2*v_bt)
Rr = v_f*((tand(beta_2r))-(tand(beta_1r)))/(2*v_br)
printf("\n Flow velocity = %d m/s,\n The blade angle at the root = %f degree,and at the tip = %f degree,\n The degree of reaction at the root = %f percent, and at the tip = %d percent",v_f,alpha_1r,alpha_2r,Rt*100,Rr*100)





