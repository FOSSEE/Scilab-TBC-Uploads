//Example 6_8
clc;clear;
// Given values
rho=1000;//The density of water in kg/m^3
D=0.10;// Diameter in m
V=3;// Average velocity in m/s
g=9.81;// The acceleration due to gravity m/s^2
m=12;//Mass per meter length in kg/m
r_1=0.5;
r_2=2;// The average moment arm at inlet & outlet in m

// Calculation
A_c=((%pi*D^2)/4);// m^2
m_1=rho*A_c*V;// The mass flow rate in kg/s
W=m*g;//The weight of the horizontal section of the pipe in N
M_a=(r_1*W)-(r_2*m_1*V);// N.m
printf("The bending moment acting at the base of the pipe (point A)=%0.1f N.m\n",M_a);
