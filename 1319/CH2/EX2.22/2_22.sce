//Current through 2 ohm resistor given a current source

clc;
clear;

Is=2; // Current Source

//Resistors connected directly to the current source
Rs1=0.5;
Rs2=0.5;

//Resistors in various branches starting from the top
R1=1;
R2=1;
R3=2;

//Conversion to voltage sources
V1=Rs1*Is; // Voltage across first half of the branch
V2=Rs2*Is; // Voltage across second half of the branch

// Voltage sources in the circuit
V3=1;
V4=2;

//Characteristic Equations
//2.5i1-1i2 = 2
//-1i1+3.5i2 = 2

R=[2.5 -1; -1 3.5]; // Resistor Vector
V=[(V1+V3);(V2+V4-V3)]; // Voltage Vector
I=inv(R)*V; // Current Vector
i1=I(1);
i2=I(2);

printf('The Current through the 2 ohm resistor = %g A\n',i2)

