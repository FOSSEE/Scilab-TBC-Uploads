//Example 8.6.13 // capacitance
clc;
clear;
close;
//given data :
F1=8;//in MHz
C1=120;//in pico-farad
F2=12;//in MHz
C2=40;//in pico-farad
ratio=F1/F2;
//1/sqrt(C2+Cd)=ratio/sqrt(C1+Cd)
Cd=((4*C1-9*C2)/5);//
disp(Cd,"self capacitance,Cd(pico-farad) = ")
