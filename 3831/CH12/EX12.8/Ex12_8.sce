// Example 12_8
clc;funcprot(0);
// Given data
T_WB=60.0;// °F
T_DB=70.0;// °F

// Calculation
// From Table C.1a in Thermodynamic Tables to accompany Modern Engineering Thermodynamics, we find
h_g1=1092.0;// Btu/lbm
h_fg2=1059.6;// Btu/lbm
h_f2=28.1;// Btu/lbm
p_sat=0.2563;// psia
p_w3=p_sat;// psia
p_m=14.7;// psia
w_3=0.622*((p_w3)/(p_m-p_w3));// lbm water per lbm of dry air
c_pa=0.240;// Btu/lbm.R
w_1=((c_pa*(T_WB-T_DB))+(w_3*h_fg2))/(h_g1-h_f2);// lbm water per lbm of dry air
w_1=w_1*7000;// grains of water per lbm of dry air
printf("\nThe humidity ratio (ω) in the room,w_1=%2.1f grains of water per lbm of dry air",w_1);
