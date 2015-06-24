//Example 8.6.12 // capacitance
clc;
clear;
close;
//given data :
format('v',6)
F1=2;//in MHz
C1=450;//in pico-farad
F2=5;//in MHz
C2=60;//in pico-farad
ratio=F2/F1;
//1/sqrt(C2+Cd)=ratio/sqrt(C1+Cd)
Cd=(C1-(ratio^2*C2))/5.25;
disp(Cd,"self capacitance,Cd(pico-farad) = ")
