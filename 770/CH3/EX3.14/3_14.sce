clear;
clc;

//Example - 3.14
//Page number - 105
printf("Example - 3.14 and Page number - 105\n\n");


//Given
P_2 = 0.2;//[bar]
P_2 = P_2*10^(5);//[Pa]
int_dia_2 = 2.4*10^(-2);//[m] - internal diameter at state 2.
Q = 5*10^(-3);//[cubic metre/s] - Flow rate at point 2.
den = 1000;//[kg/cubic metre] - density
delta_z = 1;//[m] - Difference in height
g = 9.81;//[m/s^(2)] - Acceleration due to gravity

// (1)
// Pressure at state 1 is atmospheric pressure and at state 2 is gauze pressure at state 2 + atmospheric pressure,thus
// (delta(P)/den) = (P2-P1)/den = P2/den
Vel_2 = Q/(3.14*(int_dia_2/2)^(2));//[m/s] - Velocity of water at state 2.
// Velocity at state 1 i negligible as compared to velocity at state 2,because the diameter of reservoir is very large as compared to diameter of pipe at state 2

// From bernaulli equation we get,
// -w = (delta(P)/den) + delta(v^(2))/2 + g*delta_z
w = -((P_2/den )+ (Vel_2^(2)/2) + (g*delta_z));//[J/kg]
// w multiplied by m = (den*Q), will give the fluid power.
m = den*Q;//[kg/s]
W_net = m*w;//[Watt]
printf(" (1).The fluid power is %f Watt\n",W_net);

//(2)
// Total discharge head developed by the pump is given by
// h = (delta(P)/den*g) + (Vel_2^(2)/2*g) + delta_z
h = (P_2/(den*g)) + (Vel_2^(2)/(2*g)) + delta_z;//[m]
printf(" (2).Total discharge head developed by the pump is given by h = %f m',h);
