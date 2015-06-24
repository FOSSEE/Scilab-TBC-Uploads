clc;clear;
//Example 5.18

//given values
Vs1=4.6;//Stopping Potential in V
Vs2=12.9;//Stopping Potential in V
f1=2*10^15;//frequency in Hz
f2=4*10^15;//frequency in Hz
e=1.6*10^-19;//the charge on electron in C

//calculations
h=((Vs2-Vs1)*e)/(f2-f1)
disp(h,'The Plancks const in Js')