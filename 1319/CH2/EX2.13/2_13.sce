//Current through AB using Nortons theorem

clc;
clear;

// Resitances in order from the 2V side
R1=2;
R2=12;
R3=1;
R4=3;

// Voltage Sources
V1=2;
V2=4;

//Using Superposition principle
Iab1=V2/R4;
I1=V1/(R1+(R2*R3/(R2+R3))); // Current drawn from 2V supply
Iab2=I1*R2/(R1+R2);

Iab=Iab1+Iab2; // Current source

Reff= R3 +((R1*R2)/(R1+R2));

Zth= Reff*R4/(Reff+R4);

Zl=2; // Resistor Connected between AB

Current=Iab*(Zth/(Zth+2)); // Current through branch AB

// Errorless Calculation, In the textbook approximations are done
printf('The Current through 2 ohm resistor in branch AB = %g A\n',Current)

