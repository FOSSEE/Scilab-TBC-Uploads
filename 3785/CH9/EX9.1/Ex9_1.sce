// Example 9_1 
clc;funcprot(0);
// Given data
D=8;// The diameter of the steel pipe in inch
z_in=100;// Elevation in m
z_out=22;// Elevation in m
L=2.2;// The distance in km
Q=1000;// The flow rate in m^3/s
g=9.807;// The acceleration due to gravity in m/s^2
nu=1.0*10^-6;// The kinematic viscosity in m/s^2
rho=1*10^3;// The density of water in kg/m^3

// Calculation
// (a)
D=D*2.54*10^-2;// m
Q=Q*(3.782*10^-3)/60;// m^3/s
V=(4*Q)/(%pi*D^2);// m/s
Re_D=(V*D)/nu;// Reynolds number
epsilon=5*10^-5;// physical height
function[X]=frictionfactor(y)
    X(1)=-(2.0*log10(((epsilon/D)/3.7)+(2.51/(Re_D*sqrt(y(1))))))-(1/sqrt(y(1)));
endfunction
// Guessing a value of f=1*10^-2;
y=[1*10^-2];
f=fsolve(y,frictionfactor);

K_f=f*((L*10^3)/D);// The head loss coefficient
// (b)
deltah_f=K_f*((V^2)/(2*g));// The head loss in m
// (c)
dp=(deltah_f-(z_in-z_out))*rho*g;// The static pressure change between the pipe inlet and outlet
printf("\n(a)The head loss coefficient,K_f=%1.3e \n(b)The head loss,deltah_f=%2.2f \n(c)The static pressure change between the pipe inlet and outlet,p_in-p_out=%1.3e Pa",K_f,deltah_f,dp);
