clc;
clear;
close;
//pagec no 113
//Figure 4.20
//Noninverting Amplifier
Rf=10*10^3;          //In Ohm(Assumption)
//Channel 1
Ri1=4*10^3;          //In Ohm(Assumption)
Vi1=1;      //In Volt
Av1=-Rf/Ri1;
Vo1=Av1*Vi1;
disp("V",Vo1,"Vout1");
//Channel 2
Ri2=2*10^3;          //In Ohm(Assumption)
Vi2=-2;      //In Volt
Av2=-Rf/Ri2;
Vo2=Av2*Vi2;
disp("V",Vo2,"Vout2");
//Channel 3
Ri3=1*10^3;          //In Ohm(Assumption)
Vi3=0.5;      //In Volt
Av3=-Rf/Ri3;
Vo3=Av3*Vi3;
disp("V",Vo3,"Vout1")
disp("V",Vo1+Vo2+Vo3,"Total output via summation  is ")
