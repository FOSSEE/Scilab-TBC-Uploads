// To calculate current from a battery and pd across points A and B

clc;
clear;

// Resistances in the given network
R1=4;
R2=2;
R3=3;
R4=6;
R5=8;

// MESH Equations
//9*i1-5*i2=10
//-5*i1+19*i2=0

// Supply voltage 10V

R=[(R1+R2+R3) -(R2+R3); -(R2+R3) (R2+R3+R4+R5)];
V=[10;0];

//Loop Currents
I=inv(R)*V;

i1=I(1);
i2=I(2);

i3=i1-i2; // From Mesh 1

// Point Voltages
Va=i3*R3;
Vb=i2*R5;

disp('amperes',abs(i1),'The current through 4 ohm resistor and the battery =')
disp('amperes',abs(i2),'The current through 6 ohm and 8 ohm resistors =')
disp('amperes',abs(i3),'The current through 2 ohm and 3 ohm resistors =')

disp('volts',abs(Va),'The voltage at point A =')
disp('volts',abs(Vb),'The voltage at point B =')
disp('volts',(Va-Vb),'The voltage across Points A and B =')
