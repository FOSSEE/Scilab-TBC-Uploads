clc
Pt=100;..//transmitter power
Gt=1000;..//transmitter gain
f=3*10^9;..//frequency
R=10^5;..//resistance
pi=3.14;
Smin=(Pt*(0.3*Gt/(4*%pi*f*R))^2);..//Received power
disp("W",Smin,"Received power");