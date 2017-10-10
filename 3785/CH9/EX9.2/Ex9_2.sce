// Example 9_2
clc;funcprot(0);
// Given data
// From Example 9_1
D=8;// The diameter of the steel pipe in inch
z_in=100;// Elevation in m
z_out=22;// Elevation in m
L=2.2;// The distance in km
g=9.807;// The acceleration due to gravity in m/s^2
nu=1.0*10^-6;// The kinematic viscosity in m/s^2
rho=1*10^3;// The density of water in kg/m^3
dp=0;// The static pressure in Pa

// Calculation
D=D*2.54*10^-2;// m
deltah_f=(dp/(rho*g))+(z_in-z_out);// m
// From equation 9.9
sqrtoffintoRe_D=((2*g*deltah_f*D^3)/(((nu)^2)*L*10^3))^(1/2);
epsilon=5*10^-5;// physical height in m
Re_D=-2*sqrtoffintoRe_D*log10(((epsilon/D)/3.7)+(2.51/(sqrtoffintoRe_D)));// Reynolds number
Q=(%pi*D*nu*Re_D)/4;// The volume flow rate in m^3/s
Q=(Q*60)/(3.782*10^-3)//  The volume flow rate in gal/min
printf("The volume flow rate,Q=%4.0f gal/min",Q);
