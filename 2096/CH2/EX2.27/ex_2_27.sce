//Example 2.27 // distributed capacitance
clc;
clear;
close;
//given data :
C1=410; // in pico-farad
C2=50; // inpico-farad
f1=2; // in MHz
f2=5; // in MHz
F=f2/f1;
Cd=(C1-F^2*C2)/5.25;
disp(Cd,"the self capacitance,Cd(pico-farad) = ")
