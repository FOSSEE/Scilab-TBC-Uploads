// Example 8_6
clc;funcprot(0);
// Given data
W=100;// W
T_b=110.0+273.15;// K

// Calculation
// (a)
// Since we are assuming a constant bulb temperature in part a, U=constant and
U=0;// W
Q=U-W;// kW
printf("\n(a)The heat transfer rate of an illuminated 100. W incandescent lightbulb in a room,Q=%3.0f W",Q);
// (b)
Q_dot=0;
Udot=W;// W
printf("\n(b)The rate of change of its internal energy,Udot=%3.0f W",Udot);
Sdot=0;// W/K
S_p=Sdot-(Q/(T_b));// W/K
printf("\n(c)The value of the entropy production rate,S_p=%0.3f W/K",S_p);
