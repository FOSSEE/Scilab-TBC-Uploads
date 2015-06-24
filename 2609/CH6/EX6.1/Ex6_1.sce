//Ex 6.1
clc;
clear;
close;
format('v',6);
f0=600;//Hz//Oscillating Frequency
disp("Various design parameters are :-");
C=0.05;//micro F//Chosen for the design
disp(C,"Capacitance(micro F)");
format('v',5);
R=1/(2*%pi*f0*sqrt(6)*C*10^-6);//ohm
R=R/1000;//kohm
disp(R,"Resistance R(kohm)");
disp("We can use R=2.2 kohm for design purpose.")
//To avoid loading effect
Ri=10*R;//kohm//Ri>=10*R
Ri=ceil(Ri);//kohm
disp(Ri,"Resistance Ri(kohm)");
Rf=29*Ri;//kohm//Rf>=29*Ri
disp(Rf,"Resistance Rf(kohm)");
disp("We can use Rf=640 kohm for design purpose.")
Rf=640;//kohm
//Balancing the circuit
Rom=Rf*Ri/(Rf+Ri);//kohm
Rom=ceil(Rom);//kohm
format('v',6);
disp(Rom,"Resistance Rom(kohm)");
