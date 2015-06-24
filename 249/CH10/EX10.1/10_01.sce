clear
clc
CAo=1;CA=0.25;
v=100//litre/min
ko=.025;k1=0.2;k2=0.4;
rA=ko+k1*CA+k2*CA^2;
//Volume(litres) per MFR is
V=(v/4)*(CAo-CA)/rA;
//For 4 Reactor System
Vt=4*V;
printf("\n The Total volume(lires) of 4 reactor system is %f",Vt)