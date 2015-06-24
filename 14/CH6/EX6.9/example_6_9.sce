//Chapter 6
//Example 6.9
//Page 155
//3winding3ex8
clear;clc;

//Given
Z_ps = %i * 0.07;
P_ps_base = 15e6;
V_ps_base = 66e3;
P_r_load = 5e6;
V_r_load = 2.3e3;
P_m = 7.5e6;
V_m = 13.2e3;
R_l = 1;
X_11 = 0.20;

Z_pt = %i * 0.09;
P_pt_base = 15e6;
V_pt_base = 66e3;

Z_st = %i * 0.08;
P_st_base = 10e6;
V_st_base = 13.2e3;

//Calculations
Z_st_new = Z_st * P_ps_base / P_st_base;
Z_p = (Z_ps + Z_pt - Z_st_new)/2;
Z_s = (Z_ps - Z_pt + Z_st_new)/2;
Z_t = (-Z_ps + Z_pt + Z_st_new)/2;

R_pu = R_l * P_ps_base / P_r_load;
X11_pu = X_11 *  P_ps_base / P_m;
printf("\n\n On a base of 15MVA,2.3kV load resistance = %.1f per unit",R_pu)
printf("\n\n Reactance of the motor at a base of 15MVA,13.2kV = %.2f per unit",X11_pu)

//Reactance diagram is drawn in the xcos file
