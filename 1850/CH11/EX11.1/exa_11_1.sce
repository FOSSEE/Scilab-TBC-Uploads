// Exa 11.1
clc;
clear;
close;
//given data
I_dc=300;// in mA
C=200;// in micro F
V_max= 24;// in volt
V_r_rms= 2.4*I_dc/C;// in volt
V_r_peak= sqrt(3)*V_r_rms;// in volt
V_dc= V_max-V_r_peak;// in volt
V_in_low= V_max-V_r_peak;// in volt
disp(V_in_low,"Minimum input voltage in volt")

