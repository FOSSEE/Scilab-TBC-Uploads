//Ex 5.11
clc;
clear;
close;
format('v',4);
G=20;//dB(Gain)
f3dB=2;//kHz
Cf=0.05;//micro F
Rf=1/(f3dB*1000*2*%pi*Cf/1000000)/1000;//kohm
G=10^(G/20);//Gain(unitless)
Ri=Rf*1000/G;//ohm
disp(Rf,"Resistance Rf(kohm)");
disp(Ri,"Resistance Ri(ohm)");
