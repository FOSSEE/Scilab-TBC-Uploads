// Exa 11.4
clc;
clear;
close;
//given data
R1= 40;// in ohm
I_Q= 10;// in mA
I_Q=I_Q*10^-3;// in amp
V_REF= 15;// in volt
// When R2 is set at minimum i.e.
R2= 0;// in ohm
V_out= (1+R2/R1)*V_REF + I_Q*R2;// in volt
disp(V_out,"Minimum output voltage in volt")
// When R2 is set at maximum i.e.
R2= 200;// in ohm
V_out= (1+R2/R1)*V_REF + I_Q*R2;// in volt
disp(V_out,"Minimum output voltage in volt")
