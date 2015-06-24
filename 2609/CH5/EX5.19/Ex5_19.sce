//Ex 5.19
clc;
clear;
close;
format('v',5);
fmax=100;//Hz
fa=fmax;//Hz
disp("Various design parameters are : ");
Ci=0.1;//micro F////Chosen for the design
disp(Ci,"Capacitance Ci(micro F)");
Rf=1/(2*%pi*fa*Ci*10^-6)/1000;//kohm
disp(Rf,"Resistance Rf(kohm)");
disp("Use f=15 kohm");
fb=15*fa;//kHz
Ri=1/(2*%pi*fb*Ci*10^-6)/1000;//kohm
disp(Ri,"Resistance Ri(kohm)");
disp("Use Ri=1 kohm");
format('v',6);
Cf=Ri*Ci/Rf;//micro F
disp(Cf,"Capacitance Cf(micro F)");
//Answer in the book is not accurate for Cf.
