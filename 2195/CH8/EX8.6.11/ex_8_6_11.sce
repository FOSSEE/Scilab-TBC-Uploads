//Example 8.6.11 // capacitance
clc;
clear;
close;
//given data :
F1=3;//in MHz
C1=400;//in pico-farad
F2=6;//in MHz
C2=120;//in pico-farad
Cd=(C1-(4*C2))/3;
disp(-Cd,"self capacitance,Cd(pico-farad) = ")
