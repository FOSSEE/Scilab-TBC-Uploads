//Ex 7.7
clc;clear;close;
C=1;//nF
T=10;//micro seconds(Output pulse duration)
R=T*10^-6/(C*10^-9*log(3))/1000;//kohm
disp(R,"(a) Value of R(kohm)");
VCC=15;//V
T=20;//micro seconds(Output pulse duration)
VTH=VCC*(1-exp(-T*10^-6/(R*1000*C*10^-9)));//V
disp(VTH,"(b) Value of VTH(V)");
