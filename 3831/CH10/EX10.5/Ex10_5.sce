// Example 10_5
clc;funcprot(0);
// Given data
Q=-100;// W
W=-100;// W
T_b=24.0+273;// K
p_0=0.101;// MPa
T_0=15.0+273;// K

// Calculation
dVbydt=0;
dAbydt=0;
I=((1-(T_0/T_b))*Q)-W+(p_0*dVbydt)-dAbydt;// W
printf("\nThe irreversibility rate within the room,I=%2.1f W",I);
