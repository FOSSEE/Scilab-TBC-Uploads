//Calculation of slip from losses

clc;
clear;

eff=0.9; // Efficiency
P=50*735; // Load in watts
x=poly([0 1],'x','c'); // Rotor Copper Loss Variable

tx=(x+x+x+(x/3)); // Total loss

loss=((P+tx)*eff)-P; // Equation to calculate x

x=roots(loss); // Rotor Copper Loss Constant

s=poly([0 1],'s','c'); // Variable for slip
slip=(P*s)-(x*(1-s));// Gives the variable equation of slip

s=roots(slip); // Numerical Value of slip

printf('The slip of an induction motor of 0.9 efficiency at 50 HP load = %g \n',s)



