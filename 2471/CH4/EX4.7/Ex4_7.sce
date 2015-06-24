clear ;
clc;
// Example 4.7
printf('Example 4.7\n\n');
printf('Page No. 99\n\n');

// (a) without insulation
// given
d_a = 0.150;// Diameter of pipe in m
T1_a = 60;// Surface temperature in degree celcius
T2_a = 10;// Ambient temperature in degree celcius

//For laminar flow in pipe,h= 1.41*((T1-T2)/d)^0.25
h_a = 1.41*((T1_a-T2_a)/d_a)^0.25;//W/m^2-K
A_a = %pi * d_a;// Surface Area per unit length in m^2/m
Q_a = h_a*A_a*(T1_a - T2_a);// in W/m
printf('The heat loss per unit length without insulation is %.0f W/m \n',ceil(Q_a))

// (b) with insulation
// given
d_b = 0.200;// Diameter of pipe in m
T1_b = 20;// Surface temperature in degree celcius
T2_b = 10;// Ambient temperature in degree celcius

//For laminar flow in pipe,h= 1.41*((T1-T2)/d)^0.25
h_b = 1.41*((T1_b-T2_b)/d_b)^0.25;//W/m^2-K
A_b = %pi * d_b;// Surface Area per unit length in m^2/m
Q_b = h_b*A_b*(T1_b - T2_b);// in W/m
printf('the heat loss per unit length with insulation is %.1f W/m',Q_b)
// Deviation in answer due to direct substitution


