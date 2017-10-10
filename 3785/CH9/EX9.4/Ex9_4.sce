// Example 9_4
clc;funcprot(0);
// Given data
l=6;// in
b=12;// in
A=6*12;// in^2
L=20;// Length in ft
Q=1000;// ft^3/min
epsilon=1*10^-5;// The duct roughness in m
nu=1.51*10^-5;// m/s
rho=1.204;// The density of water in kg/m^3
g=9.807;// The acceleration due to gravity in m/s^2

// Calculation
D=(4*(l*b))/(2*(l+b));// m
D=D*2.54*10^-2;// m
Q=Q*(2.832*10^-2)/60;// m^3/s
A=A*(2.54*10^-2)^2;// m^2
V=Q/A;// m/s
L=L*0.3048;// m
Re_D=(V*D)/nu;// Reynolds number
function[X]=frictionfactor(y)
    X(1)=-(2.0*log10(((epsilon/D)/3.7)+(2.51/(Re_D*sqrt(y(1))))))-(1/sqrt(y(1)));
endfunction
// Guessing a value of f=1*10^-2;
y=[1*10^-2];
f=fsolve(y,frictionfactor);
K_f=f*((L)/D);// The head loss coefficient
deltah=K_f*((V^2)/(2*g));// The head loss in m
dp=rho*g*deltah;// The pressure drop in Pa
printf("\nThe head loss,h_in-h_out=%1.3f m \nThe pressure drop,p*_in-p*_out=%2.2f Pa",deltah,dp);
