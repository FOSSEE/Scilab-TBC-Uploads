// Exa 5.10
clc;
clear;
close;
// Given data
C1= 4;// in pF
C2= 60;// in pF
L=8*10^-3;// in H
C_Tmin= C1*C1/(C1+C1);// in pF
C_Tmin= C_Tmin*10^-12;// in F
C_Tmax= C2*C2/(C2+C2);// in pF
C_Tmax= C_Tmax*10^-12;// in F
Fc_max= 1/(2*%pi*sqrt(L*C_Tmin));// in Hz
Fc_min= 1/(2*%pi*sqrt(L*C_Tmax));// in Hz
disp(Fc_max*10^-6,"Maximum resonance frequency in MHz is :")
disp(Fc_min*10^-6,"Minimum resonance frequency in MHz is :")
