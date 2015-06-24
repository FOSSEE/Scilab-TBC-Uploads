clc;
clear;
close;
//pagec no 103
//capacitors are used to remove higher frequencies
Rf=200*10^3;//In Ohm 
Ri=15*10^3; //In Ohm
Av=-(Rf/Ri);
Av1=20*log10(-Av);
disp(Av,"Maximum gain is ");
disp(Av1,"Maximum gain in dB is ");
Av2=0;// divider action makes Ri infinite
disp(Av2,"Minimum gain in dB is ");
