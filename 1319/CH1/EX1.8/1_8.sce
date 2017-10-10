//To find the current and impedance and admittance of the circuit

clc;
clear;

R=25;
Xl=50*%i;
Z1=R+Xl;

Z2=-40*%i;

V=100;

Zeq=(Z1*Z2)/(Z1+Z2);

Y=1/Zeq;

I=V*Y;

mprintf('The Current of the circuit = %f /_ %f A \n',abs(I),atand(imag(I)/real(I)))
mprintf('The Impedance of the circuit = %f /_ %f ohms \n',abs(Zeq),atand(imag(Zeq)/real(Zeq)))
mprintf('The Admittance of the circuit = %f /_ %f siemens \n',abs(Y),atand(imag(Y)/real(Y)))
