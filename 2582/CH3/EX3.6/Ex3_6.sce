//Ex 3.6
clc;clear;close;
format('v',6);
fo=1;//kHz
Ap=1.586;//Band pass gain
C1=0.005;C2=0.005//micro F(Assumed)
R=1/(2*%pi*fo*10^3*C1*10^-6);//ohm
Rf=10;//kohm(Assumed)
Ri=Rf/(Ap-1);//kohm
disp("Design values are :");
disp(R/1000,"Resistance in kohm, R1=R2=");
disp(Ri,"Resistance Ri(kohm)");
disp(Rf,"Resistance Rf(kohm)");
disp(C1,"Capacitance(micro F), C1=C2=");
