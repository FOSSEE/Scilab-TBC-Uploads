
//To determine the cross section of the conductor for a minimum consumer voltage
//Page 111
clc;
clear;

//Unknown Variable obtained in the equation
Ib=poly(0,"Ib");
r=poly(0,"r");

//Voltages at the respective ends
Va=230;
Vb=230;

//Minimum Consumers's Voltage
Vc=220;

//Lenghths of the segments
r1=200;
r2=200;
r3=100;
r4=300;
r5=300;
r6=100;

//Effective length of segments
R1=r1;
R2=r1+r2;
R3=r1+r2+r3;
R4=r1+r2+r3+r4;
R5=r1+r2+r3+r4+r5;
R6=r1+r2+r3+r4+r5+r6;

//Current drawn by different loads
I1=25;
I2=20;
I3=25;
I4=25;
I5=10;

//By the law of momemts of currents
Vnet=2*((I1*R1)+(I2*R2)+(I3*R3)+(I4*R4)+(I5*R5)-(Ib*R6)); //Since the equation is equated to zero, r vanishes
X=Vnet-(Va-Vb); //Polynomial Equation to Find Ib
Ib=roots(X); // Numerical Value of Ib
Ia=(I1+I2+I3+I4+I5)-Ib;

//From the given figure it is clear that point M is the point of Minimum Potential
Vd=Va-Vc;
X=(2*r*((Ia*r1)+((Ia-I1)*r2)+((Ia-I1-I2)*r3)))-Vd; //Polynomial Equation to Find r
r=roots(X); // Resistance per unit length (Numerical Value)

Rstd=(1/58); // Resistance for 1m and 1 sq.mm

A=Rstd/r; // Cross Section of Conductor required.

printf('The Cross Section of the Conductor to provide minimal consumer''s voltage is %g sq.mm\n',A)
