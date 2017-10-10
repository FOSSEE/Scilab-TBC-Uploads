// Example 4_12
clc;funcprot(0);
// Given data
d_1=20/10^3;// The diameter at inlet in m
d_2=40/10^3;// The diameter at exit in m
V_1=40;// The velocity at inlet in m/s
rho=1000;// kg/m^3

// Calculation
A_1=(%pi/4)*(d_1^2);// m^2
A_2=(%pi/4)*(d_2^2);// m^2
V_2=(A_1/A_2)*V_1;// The exit velocity of water in m/s
m=rho*A_1*V_1;// kg/s
printf("\nThe velocity in the 40 mm section,V_2=%2.0f m/s \nThe mass flux,m=%2.2f kg/s",V_2,m);
