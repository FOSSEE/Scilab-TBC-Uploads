//clear//
//Example5.8:"minimum acceptable rate for 741""
//Page 149
//figure 5.6
clear;
clc;
fmax=20000;     //in Hz
Vp=10;      //in Volts
slewrate=fmax*(2*%pi*Vp);
disp("V/S",slewrate,"Slew rate ");
///Result in V/S
