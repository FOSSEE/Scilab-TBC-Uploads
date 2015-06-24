//Ex:6.4
clc;
clear;
close;
R_l=400;
V_in=9;
V_z=5;
P_z_max=0.5;
R_s_max=R_l*((V_in/V_z)-1);
R_s_min=((V_z*V_in)-V_z^2)/P_z_max;
printf("Suitable value of resistor = %d ohm",(R_s_max+R_s_min)/2);