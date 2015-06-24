// Exa 7.6
clc;
clear;
close;
// Given data
f=500;//in Hz
R2=4.8;//in ohm
R3=2*10^3;// in ohm
R4=2.85*10^3;//in ohm
C2=0.5*10^-6;//in F
r2= 0.4;// in ohm 
omega=2*%pi*f;
C1=C2*R4/R3;//in F
disp(C1*10^6,"Unknown capacitance in micro F ");
r1=(R3*(R2+r2))/R4;//in ohm 
disp(r1,"Resistance of unknown capacitance in ohm")
Tan_del_1= omega*C1*r1;
disp(Tan_del_1,"Dissipation factor is ")
