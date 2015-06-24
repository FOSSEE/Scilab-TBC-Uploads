// Exa 11.3
clc;
clear;
close;
//given data
R1= 240;// in ohm
R2= 1.2;// in kohm
R2=R2*10^3;// in ohm
V_out= 1.25*(1+R2/R1);// in volt
disp(V_out,"Regulated output voltage in volt")
