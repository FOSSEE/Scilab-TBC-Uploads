//Ex 5.18
clc;
clear;
close;
format('v',5);
fmin=200;//Hz
fmax=1;//kHz
fa=fmax;//kHz
disp("Various design parameters are : ");
Ci=0.05;//micro F////Chosen for the design
disp(Ci,"Capacitance Ci(micro F)");
format('v',4);
fb=10*fa;//kHz
Rf=1/(2*%pi*fa*10^3*Ci*10^-6)/1000;//kohm
disp(Rf,"Resistance Rf(kohm)");
Ri=1/(2*%pi*fb*10^3*Ci*10^-6);//ohm
disp(Ri,"Resistance Ri(ohm)");
format('v',6);
Cf=Ri*Ci/(Rf*10^3);//micro F
disp(Cf,"Capacitance Cf(micro F)");
