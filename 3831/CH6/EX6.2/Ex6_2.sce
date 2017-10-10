// Example 6_2
clc;funcprot(0);
// Given data
D=1.00;// inch
T=60.0;// °F
p=80.0;// psig
mdot=0.800;// lbm/s
v=0.01603;// ft^3/lbm
g_c=32.174;// lbm.ft/lbf.s^2
g=32.174;// ft/s^2

// Calculation
V_in=(4*mdot*v)/(%pi*D^2*(1/12)^2);// ft/s
p_in=94.7;// psia
p_out=14.7;// psia
V_out=[(V_in^2)+(2*g_c*v*(p_in-p_out)*144)]^(1/2);// ft/s
Z_out=V_out^2/(2*g);// ft
printf("\n(a)The outlet velocity from the nozzle,(V_out)_a=%3.0f ft/s \n(b)The height to which the stream of water rises above the nozzle outlet when the nozzle is pointed straight up,(Z_out)_b=%3.0f ft.",V_out,Z_out)
