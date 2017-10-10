//To find the current through the branch AB

clc;
clear;

Zl=2; // Resistor Across AB

// Voltage Sources
V1=20;
V2=10;

//Resistances in order as seen from 20 V side exculding the resistance between A and B
R1=2;
R2=2;
R3=2;
R4=4;
R5=4;

// Characteristic Equation
//10i1-4i2 =10
//-4i1+8i2 =10

Z=[10 -4; -4 8]; // Resistance Matrix
V=[10;10]; // Effective Voltages Matrix
I=inv(Z)*V; // Current Matrix
i1=I(1);
i2=I(2);

Vth=V1-(i1*(R1+R2));

Reff=R4*R5/(R4+R5); // Effective resistance of R4 and R5 (Parallel)
Rt1=Reff+R3; // Effective Resistance on right side of AB
Rt2=R1+R2; // Effective Resistance on left side of AB
Zth=Rt1*Rt2/(Rt1+Rt2);

Current= Vth/(Zl+Zth); // Current Through branch AB

printf('The Current through branch AB = %g A\n',Current)
