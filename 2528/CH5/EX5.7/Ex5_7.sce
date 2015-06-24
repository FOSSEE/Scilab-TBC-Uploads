//clear//
//Example5.7:"is 741's power bandwith atleast 3kHz""
//Page 148
//figure 5.6
clear;
clc;
slewrate=0.5/10^-6;       // in V/S
Vp=12;      //in Volts
fmax=slewrate/(2*%pi*Vp);
disp("Hz",fmax,"Fmax");
//Result
