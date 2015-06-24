//Example No. 3.13.1
clc;
clear;
close;
format('v',6);
Irms=15;//A(Current Drawn)
Prad=5;//kW(Radiated Power)
Rr=Prad*10^3/Irms^2;//Ω(Radiation Resistance)
disp(Rr,"Radiation resistance in Ω : ");
