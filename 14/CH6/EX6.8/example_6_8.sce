//Chapter 6
//Example 6.8
//Page 154
//3windingtransformer
clear;clc;

//Given
Z_ps = %i * 0.07;
P_ps_base = 15e6;
V_ps_base = 66e3;

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
disp(Z_p,'Z_p in per unit = ')
disp(Z_s,'Z_s in per unit = ')
disp(Z_t,'Z_t in per unit = ')
