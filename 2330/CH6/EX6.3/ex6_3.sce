// Example 6.3
format('v',6)
clc;
clear;
close;
// given data
R= 10*10^3;// in Ω
V_CC= 15;// in V
V_BE= 0.7;// in V
Vt= 25*10^-3;// in V
Vp= 1*10^-3;// in V
I= (V_CC-V_BE)/R;// in A
r_ac= Vt/I;// in Ω
// The total current through diode 
Ip= Vp/r_ac;// in A
Ip= Ip*10^6;// in µA
disp(Ip,"The total current through diode in µA is : ")


