//Ex 3.7
clc;clear;close;
format('v',6);
fo=3;//kHz
Ap=4;//Band pass gain
alfa=1.414;//for butterworth filter
C1=0.01;//micro F(Assumed)
C2=alfa^2*C1/4;//micro F
R=1/(2*%pi*fo*10^3*sqrt(C1*10^-6*C2*10^-6))/1000;//kohm
Rf=2*R;//kohm(Assumed)
disp("Design values are :");
disp(C1,"Capacitance C1(micro F)");
disp(C2,"Capacitance C2(micro F)");
disp(R,"Resistance R(kohm)");
disp(Rf,"For offset minimization, Resistance Rf(kohm)");
///For additional pass band gain
Ri=10;//kohm(Assumed)
Rf=(Ap-1)*Ri;//kohm
disp("For additional band pass gain:");
disp(Ri,"Resistance Ri(kohm)");
disp(Rf,"Resistance Rf(kohm)");
//Answer in the book is not accurate.
