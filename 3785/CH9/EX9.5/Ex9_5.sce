// Example 9_5
clc;funcprot(0);
// Given data
D=1;// Diameter in cm
L=22;// The lngth of a copper tube in m
Q=4;// The water flow rate in the circuit in l/min
g=9.807;// The acceleration due to gravity in m/s^2
nu=1.0*10^-6;// The kinematic viscosity in m/s^2

// Calculation
D=1*10^-2;// m
Q=(Q*1*10^-3)/60;// m^3/s
A=(%pi*(D)^2)/4;// m^2
V=Q/A;// m/s
Re_D=(V*D)/nu;// Reynolds number
epsilon=1*10^-6;// Roughness in m
function[X]=frictionfactor(y)
    X(1)=-(2.0*log10(((epsilon/D)/3.7)+(2.51/(Re_D*sqrt(y(1))))))-(1/sqrt(y(1)));
endfunction
// Guessing a value of f=1*10^-2;
y=[1*10^-2];
f=fsolve(y,frictionfactor);
K_f=f*((L)/D);// The head loss coefficient
SigmaK=11.4;
deltah=(K_f+SigmaK)*((V^2)/(2*g));// The total head loss in m
printf("The total head loss,deltah=%1.2f m",deltah);
