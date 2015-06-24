clc;
clear;
close;
//pagec no 103
Ri=15*10^3;
zin=Ri;
Av=-10;//inverting amplifier gain
//Av=-(Rf/Ri)
Rf=Ri*-Av;
disp("ohm",Rf,"Value for Rf ");
