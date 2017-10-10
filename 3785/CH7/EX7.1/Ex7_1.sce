// Example 7_1
clc;funcprot(0);
// Given data
D=6;// The diameter of a steel pipe in inch
Q=2000;// Volume flow rate in gpm
L=1.0;// Length in km
nu=1.0*10^-6;// Kinematic viscosity in m^2/s
rho=1*10^3;// The density of water in kg/m^3

// Calculation
// (a)
D=D*2.54*10^-2;// m
Q=(Q*3.782*10^-3)/60;// m^3/s
Vbar=(4*Q)/(%pi*D^2);// m/s
Re_D=(Vbar*D)/nu;// Reynolds number
// (b)
epsilon=5*10^-5;// physical height in m
function[X]=frictionfactor(y)
    X(1)=-(2.0*log10(((epsilon/D)/3.7)+(2.51/(Re_D*sqrt(y(1))))))-(1/sqrt(y(1)));
endfunction
// Guessing a value of f=1*10^-2;
y=[1*10^-2];
f=fsolve(y,frictionfactor);
dp=f*((1/2)*rho*Vbar^2)*((L*10^3)/D);// The pressure drop in  Pa
P=dp*Q;// The power required to maintain the flow in W
printf("\n(a)Re_D=%1.3e.The How is turbulent since the Reynolds number exceeds the transition value of 2300. \n(b)The pressure drop,deltap=%1.3e Pa \n(c)The power required to maintain the flow,P=%1.3e W",Re_D,dp,P);
// The answer is varied due to round off error
