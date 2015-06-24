//Exa 1.3
clc;
clear;
close;
//Given data
RL=1;//in kOhm
//rf<<RL
Vrms=200;//in Volt
//Part (i)
Vo=Vrms*sqrt(2);//in Volt
Idc=Vo/(RL*10^3*%pi);//in Ampere
disp(round(Idc*10^3),"DC current in load in mA :");
//Part (ii)
Vdc=RL*10^3*Idc;//in Volt
disp(round(Vdc),"DC voltage across load in volt :");
//Part (iii)
//Gamma=sqrt((Irms/Idc)^2-1)=sqrt((Io/2)/(Io/%pi)-1)=sqrt((%pi/2)^2-1)
Gamma=sqrt((%pi/2)^2-1);//unitless
disp(Gamma,"Ripple factor : ");
//Part (iv)
PIV=Vrms*sqrt(2);//in volt
disp(PIV,"Peak Inverse Voltage in volt :");