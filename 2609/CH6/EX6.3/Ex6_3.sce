//Ex 6.3
clc;
clear;
close;
format('v',5);
f0=12;//kHz//Oscillating Frequency
disp("Various design parameters are :-");
C=0.01;//micro F//Chosen for the design between 0.01 & 1 micro F
disp(C,"Capacitance(micro F)");
R=1/(2*%pi*f0*1000*C*10^-6);//ohm
R=R/1000;//kohm
disp(R,"Resistance R(kohm)");
format('v',5);
Ri=3*R/2;//kohm//Ri>=3*R/2
disp(Ri,"Resistance Ri(kohm)");
disp("We can use Ri=2.2 kohm for design purpose.")
Ri=2.2;//kohm
Rf=2*Ri;//kohm
disp(Rf,"Resistance Rf(kohm)");
disp("We should use Rf=4.7 kohm for design purpose.")
