//Calculation of the diameter of fuel jet
clc,clear
//Given:
m_f=7.5 //Mass of fuel in kg/hr
s=0.75 //Specific gravity of the fuel
T1=25+273 //Temperature of air in K
A_F=15 //Air fuel ratio
d=22 //Diameter of choke tube in mm
z=4 //Elevation of the jet in mm
Cd_a=0.82,Cd_f=0.7 //Coefficient of discharge for air and fuel
P1=1.013 //Pressure of air in bar
g=9.81 //Accelaration due to gravity in m/s^2
//Solution:
R=0.287 //Specific gas constant in kJ/kgK
rho_a=P1*100/(R*T1) //Mass density of air in kg/m^3
rho_f=s*1000 //Mass density of fuel in kg/m^3
m_a=A_F*m_f/3600 //Mass of air in kg/s
deltaP_v=(m_a*4/(Cd_a*%pi*d^2*10^-6))^2/(2*rho_a) //Pressure drop at venturi in pascal
A_f=m_f/(3600*Cd_f*sqrt(2*rho_f*(deltaP_v-z*10^-3*g*rho_f))) //Area of cross section of fuel nozzle in m^2
d_f=sqrt(4*A_f/%pi) //Diameter of cross section of fuel nozzle in m
//Results:
printf("\n The diameter of the fuel jet of a simple carburettor, d_f = %.3f mm\n\n",d_f*1000)
//Answer in the book is wrong
