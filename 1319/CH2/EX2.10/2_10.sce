//Using thevenin theorem determine current through 2 ohm resistor

clc;
clear;

// Characteristic equation to find Vth
// 14i1+12i2 = 2
// 12i1+16i2 = 4

// Resistors in the circuit in order from the 2V side
R1=2;
R2=12;
R3=1;
R4=3;

// Voltage Sources
V1=2;
V2=4;

Z=[14 12; 12 16]; // Resistance Matrix
V=[V1; V2]; // Voltage Matrix

I=inv(Z)*V; // Current Matrix

i1=I(1);
i2=I(2);

Vth=V2-(i2*R4);

Reff= R3 +((R1*R2)/(R1+R2));

Zth= Reff*R4/(Reff+R4);

Zl=2; // Resistor Connected between AB

Current = Vth/(Zth+Zl); // Current Through 2 ohm resistor

printf('The Current through 2 ohm resistor connected across AB = %g A\n',Current)
