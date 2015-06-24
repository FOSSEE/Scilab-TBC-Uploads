//Ex:7.1
clc;
clear;
close;
I_i=4;
V_o=2;
V_i=50*10^-3;
I_o=200;
A_v=V_o/V_i;
A_i=I_o/I_i;
printf(" Volt gain = %f ",A_v); 
printf("\n Current gain = %f ",A_i); 
printf("\n Power gain = %f ",A_i*A_v);   
                     