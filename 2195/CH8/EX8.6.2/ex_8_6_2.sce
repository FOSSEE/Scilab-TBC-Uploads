//Example 8.6.2: Cx,Rx and D
clc;
clear;
close;
//given data :
f=1000;//in Hz
R1=1.1;// in kilo-ohm
R2=2.2;// in kilo-ohm
C1=0.47;// in micro-farad
C3=0.5;// in micro-farad
Rx=(R2*C1)/C3;
disp(Rx,"unknown resistance,Rx(k-ohm) = ")
Cx=(R1*C3)/R2;
disp(Cx,"unknown capacitance,Cx(micro-farad) = ")
w=2*f*%pi;
D=w*Cx*10^-6*Rx*10^3;
disp(D,"dissipation factor,D = ")
//answer is wrong in the textbook
