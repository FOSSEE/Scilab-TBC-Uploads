//Example 8.6.9: inductance and capacitance
clc;
clear;
close;
format('v',6)
//given data :
F1=1.5;//in MHz
C1=650;//in pF
F2=3;//in MHz
C2=150;//in pF
Cd=(C1-(4*C2))/3;
disp(Cd,"capacitance,Cd(pico-farad) = ")
L=(1/(4*%pi^2*F1^2*((C1*10^-12)+(C2*10^-12))))*10^-6;
disp(L,"inductance,L(micro-henry) = ")
