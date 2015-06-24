clc;
clear;
close;
//figure 4.15
//pagec no 107
//Figure 4.15
Iload=100*10^-6;        //In Amp
Vin=10;     //In Volt
gm=Iload/Vin;
Ri=1/gm;
disp("ohm",Ri,"Value of Ri")
