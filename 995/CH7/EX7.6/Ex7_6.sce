//Ex:7.6
clc;
clear;
close;
h_oe=80*10^-6;
R_l=10000;
I_f=320*10^-6;
I_c=I_f*(1/h_oe)/((1/h_oe)+R_l);
V_out=I_c*R_l;
printf("Output voltage = %f V",V_out); 
