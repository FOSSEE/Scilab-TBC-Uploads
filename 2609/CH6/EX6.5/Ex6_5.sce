//Ex 6.5
clc;
clear;
close;
format('v',5);
f0=2;//kHz//Oscillating Frequency
disp("Various design parameters are :-");
C=0.05;//micro F//Chosen for the design
disp(C,"Capacitance(micro F)");
R=1/(2*%pi*f0*1000*C*10^-6);//ohm
R=R/1000;//kohm
disp(R,"Resistance R(kohm)");
format('v',5);
Ri=3*R/2;//kohm//Ri>=3*R/2
format('v',4);
disp(Ri,"Resistance Ri(kohm)");
disp("We can use Ri=2.2 kohm for design purpose.")
Rf=2*Ri;//kohm
disp(Rf,"Resistance Rf(kohm)");
disp("We should use 5k pot for Rf.")
