// Example 5_2
clc;funcprot(0);
// Given data
W=100;// W

// Calculation
// (a)
// Since we are assuming a constant bulb temperature in part a, U=constant and
U=0;// W
Q=U-W;// kW
printf("\n(a)The heat transfer rate of an illuminated 100 W incandescent lightbulb in a room,Q=%3.0f W",Q);
// (b)
Q=0;
Udot=W;// W
printf("\n(b)The rate of change of its internal energy,Udot=%3.0f W",Udot);
