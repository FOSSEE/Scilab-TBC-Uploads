clc;
clear;
close;
//pagec no 100
Rf=14*10^3;//in ohm
Ri=2*10^3;//in ohm
Av1=1+(Rf/Ri);
disp(Av1,"Av1 is");
Av3=20*log10(Av1);
disp(Av3,"Av1 in dB is");

Rf=18*10^3;//in ohm
Ri=2*10^3;//in ohm
Av2=1+(Rf/Ri);
disp(Av2,"Av2 is");
Av4=20*log10(Av2);
disp(Av4,"Av2 dB is ");
Avt=Av3+Av4;
disp(Avt,"Total Gain dB Av1+Av2 is");
vin=-30;//in dB
vout=Avt+vin;
disp(vout,"Vout in dB ");
