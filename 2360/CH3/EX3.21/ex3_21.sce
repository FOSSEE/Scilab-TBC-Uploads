// Exa 3.21
format('v',7);clc;clear;close;
// Given data
r = 2;//radius in m
r = r * 10^3;// in mm
d = 200;//deflection in mm
To = 3.1415;// in sec   
J = 2*10^-6;// in kg-m^2
i = 1;// in µA
i = i * 10^-6;// in A
// d = 2*r*theta_f;
theta_f = d/(2*r);// in rad
// To = 2*%pi * (sqrt( J/K ));
K = 4*%pi^2*J/To^2;// in Nm/A
// theta_f = (G*i)/K;
G = (theta_f*K)/i;// in Nm/A
// The required resistance to obtain critical damping 
Rc = G^2/( 2*sqrt(J*K));// in ohm
Rc = Rc * 10^-3;// in k ohm
disp(Rc,"The required resistance to obtain critical damping in kΩ is");
