// Exa 11.6
clc;
clear;
close;
//given data
R1= 3;// in kohm
R1= R1*10^3;// in ohm
R2= 1;// in kohm
R2= R2*10^3;// in ohm
V_REF= 1.25;// in volt
V_in=20;// in volt
V_out= V_REF*(R1+R2)/R2;// in volt
D=V_out/V_in*100;// in percent
disp(D,"Duty cycle in percent")
