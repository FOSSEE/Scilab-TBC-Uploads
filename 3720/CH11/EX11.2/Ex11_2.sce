//Example 11_2
clc;clear;funcprot(0);
//Properties
rho_a=1.20;// The density of air in kg/m^3
rho_g=.8;//The density of gasoline in kg /L
n_o=0.3;// The over all efficiency of the engine 
C_dc=1.1;// The drag coefficient for a circular disk
C_dh=0.4;//The drag coefficient for a hemispherical body
HV=44000;// The heating value of gasoline in kJ/kg

// Given values
V=95;// km/h
Pr=0.60;//Price of gasoline in $/L
D=0.13;// m
L=24000;// km/year

//Calculation
A=(%pi*0.13^2)/4;//m^2
F_d=(C_dc*A*rho_a*V^2)/(2*3.6^2);//The drag force acting on the flat mirror in N
W_drag=F_d*L;// kJ/year
E_in=W_drag/n_o;// kJ/year
m_f=E_in/HV; // kg/year
Amount=m_f/rho_g;// L/year
Cost=(Amount*Pr);// $/year
Rr=(C_dc-C_dh)/C_dc;// Reduction ratio
Fr=Rr*Amount;// Fuel reduction in L/year
printf('Fuel reduction =%0.2f L/year\n',Fr);
Cr=Rr*Cost;// Cost reduction in $/year
printf('Cost reduction =%0.2f $/year\n',Cr);
// The answer vary due to round off error
