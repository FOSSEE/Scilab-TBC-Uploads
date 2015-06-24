//Example 8.6.6: Cx,Rx and D
clc;
clear;
close;
format('v',9)
//given data :
f=1000;//in Hz
R2=20000;// in ohm
R3=1.2*10^3;// in ohm
C3=300*10^-12;// in farad
C4=0.05*10^-6;// in farad
Rx=(R2*C3)/C4;
disp(Rx,"unknown resistance,Rx(k-ohm) = ")
Cx=((R3*C4)/R2)*10^6;
disp(Cx,"unknown capacitance,Cx(micro-farad) = ")
w=2*f*%pi;
D=w*Cx*10^-6*Rx*10^3;
disp(D*10^-3,"dissipation factor,D = ")
