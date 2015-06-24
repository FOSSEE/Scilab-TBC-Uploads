clc;
clear;
close;
//pagec no 102
Ri=5*10^3;// in ohm
Rf=20*10^3;// in ohm
vin=100*10^-3;//In volt
Av=-(Rf/Ri);
vout=vin*Av;
disp("Volt",vout,"Vout is ");
disp("(i.e. negative sign means inverted)");
