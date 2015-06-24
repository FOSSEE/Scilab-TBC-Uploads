//Exa 1.4
clc;
clear;
close;
//Given data
rf=20;//in ohm
RL=980;//in Ohm
Vrms=50;//in Volt
Vo=Vrms*sqrt(2);//in Volt
Io=Vo/(RL+rf);//in Ampere
//Part (i)
Idc=2*Io/%pi;//in Ampere
disp(round(Idc*10^3),"Average DC current in mA :");
//Part (ii)
Irms=Io/sqrt(2);//in Ampere
disp(Irms*1000,"rms value of load current in mA :")
//Part (iii)
Vdc=RL*Idc;//in Volt
disp(Vdc,"DC output voltage in volt :");
//Part (iv)
ETA=(Idc^2*RL/(Irms^2*(RL+rf)))*100;//Rectification Efficiency in %
disp("Rectification Efficiency is "+string(ETA)+" %")
//Part (v)
PIV=2*Vo;//in volt
disp(PIV,"Peak Inverse Voltage in volt :");