//To determine the coil parameters with resistance of 5 ohms

clc;
clear;
//Parameters of the coil
R=5; // Resistance
I=10; // Current flowing
V=200;// Voltage across
f=50;// Frequency of operation
P=750;//Total Power Dissipated

Pc=(I^2)*R; // Copper Loss
Pil=P-Pc;// Iron Loss

Z=V/I;// Impedance

X=sqrt((Z^2)-(R^2));//Reactance

L=X/(2*%pi*f);// Inductance

pf=P/(V*I); // Power Factor

printf('i The iron loss = %g W\n',Pil)
printf('ii) The inductance at the given value of current = %g H\n',L)
printf('iii) p.f = %g\n',pf)
