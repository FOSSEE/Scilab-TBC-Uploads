//Example 5_24
clc;
clear;
close;
format('e',10);
//given data : 
I=1;///mA
CD=1.5;//micro F
Eta=2;//for Si
Dp=13;//for Si
VT=0.026;//V(Thermal voltage)
Lp=sqrt(CD/10^6*Dp*Eta*VT/(I*10^-3));//m
disp(Lp,"Diffusion Length(m)");
