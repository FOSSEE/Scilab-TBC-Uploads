// Example 12_8
clc;funcprot(0);
// Given data
theta=10;// The half angle of two dimensional wedge in degree
beta=20;// The attached shock wave angle in degree
r=1.4;// The specific heat ratio

// Calculation
M=sqrt(((2*tand(theta))+(2*cotd(beta)))/((2*cosd(beta)*sind(beta))-((r+(cosd(beta)*cosd(beta)))*tand(theta))));// The Mach number M of the flow in the wind tunnel
printf("The Mach number M of the flow in the wind tunnel,M=%1.3f",M);
