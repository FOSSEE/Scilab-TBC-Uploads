//Ex:7.8
clc;
clear;
close;
V=9;
V_e=2;
R4=1000;
V_b=2.6;
R2=33*10^3;
R1=68000;
I_r1=(V-V_b)/R1;
R3=2.2*10^3;
I_b=15.1*10^-6;
I_c=2.0151*10^-3;
V_r3=I_c*R3;
V_c=V-V_r3;
printf("Collector voltage = %f V",V_c); 
