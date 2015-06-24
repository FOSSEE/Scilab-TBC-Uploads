// calculating gain and feedback resistance
clc;

Rf=100*10^3;
R1=1*10^3;
A=Rf/R1;
disp(A,'Gain=')
disp('If multiplier is 10')
A=10;
Rf=A*R1;
disp(Rf, 'feedback resistance (Ohm)=')