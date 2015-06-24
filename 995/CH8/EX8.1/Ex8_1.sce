//Ex:8.1
clc;
clear;
close;
V_out=2;
V_in=400*10^-6;
A_v=V_out/V_in;
A_v_dB=ceil (20*(log (A_v)/log (10)));
printf("open loop voltage gain = %d dB",A_v_dB); 
