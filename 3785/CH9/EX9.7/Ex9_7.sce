// Example 9_7
clc;funcprot(0);
// Given data
h=100;
Q=10;
n_t=.85;
D=1.5;
L=300;
delta_t=93.99;
epsilon=1*10^-4;
nu=1.0*10^-6;// The kinematic viscosity in m/s^2
rho=1*10^3;// The density of water in kg/m^3
g=9.81;// The acceleration due to gravity in m/s^2

// Calculation
V=(4*Q)/(%pi*D^2);// m/s
Re_D=(V*D)/nu;// Reynolds number
function[X]=frictionfactor(y)
    X(1)=-(2.0*log10(((epsilon/D)/3.7)+(2.51/(Re_D*sqrt(y(1))))))-(1/sqrt(y(1)));
endfunction
// Guessing a value of f=1*10^-2;
y=[1*10^-2];
f=fsolve(y,frictionfactor);
K_f=f*((L)/D);// The head loss coefficient
SigmaK=3.681;
deltah_1=SigmaK*((V^2)/(2*g));// The head loss in m
P=n_t*(rho*Q)*g*deltah_1;
P=P/10^3;
printf("\nThe head loss in the piping,deltah_1=%1.3f m \nThe power produced by the turbine,P=%3.0f kW",deltah_1,P);
