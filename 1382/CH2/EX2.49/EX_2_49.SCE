// Example 2.49:Ai,Ri,Av,Avs,Ais
clc;
clear;
close;
Rl=1000;//Load resistance in ohms
Rs=1200;// Internal Resistance
//H Paramters are
Hib=22;//in  ohms
Hrb=3*10^-4;
Hfb=-0.98;
Hob=0.5*10^-6;// in ampere per volt
Ai= -Hfb/(1+Hob*Rl);// Current gain
Ri= Hib+(Hrb*Ai*Rl);// Input resistance in ohms
Av=(Ai*(Rl/Ri));// Voltage Gain
dh=(Hib*Hob)-(Hrb*Hfb);
Avs=(Av*Ri)/(Ri+Rs);// Overall Voltage gain
Ais=(Ai*Rs)/(Ri+Rs);// Overall Current gain
disp(Ai,"Current gain is")
disp(Ri,"Input resistance in ohms is")
disp(Av,"Voltage gain is")
disp(Ais,"Overall Current gain is")
disp(Avs,"Overall Voltage gain is")
