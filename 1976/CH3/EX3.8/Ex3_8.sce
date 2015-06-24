
//To determine the cross section of the conductor for a minimum consumer voltage
//Page 111
clc;
clear;

//Unknown Variable obtained in the equation
x=poly(0,"x");
r=poly(0,"r");

//Voltages at the respective ends
Va=235;
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

//The Minimum Point assumed is N, Hence the current following to Point N is given by 'x'

//The Effective Drops
Van=Va-Vc;
Vbn=Vb-Vc;
V=Van/Vbn;
A=2*(((x+I1)*r1)+(r2*x)); //Wrt to Van
B=2*(((I2-x)*r3)+((I2+I3-x)*r4)+((I2+I3+I4-x)*r5)+((I2+I3+I4+I5-x)*r6)); //Wrt to Vbn
C=A/B; // The 'r' term gets eliminated
X=C-V; // Polynomial Eqaution to find x
X=X(2); // We take only the numerator into consideration as the above equation is eaquated to zero
x=roots(X);

Ia=I1+x; //Current Supplied at end A;
//It is clear the above assumed Minimal Point is wrong and it has to Point M
//Therefore finding drop at Point M

X=(2*r*(((x+I1)*r1)+(r2*x)+((x-20)*r3)))-Van; //Polynomial Equation to find r
r=roots(X); // Numerical Value of r

Rstd=(1/58); // Resistance for 1m and 1 sq.mm

A=Rstd/r; // Cross Section of Conductor required.

printf('The Cross Section of the Conductor to provide minimal consumer''s voltage is %g sq.mm\n',A)

// Please note the calculation mistake in the book. The value of r found out is wrong in the text book.
