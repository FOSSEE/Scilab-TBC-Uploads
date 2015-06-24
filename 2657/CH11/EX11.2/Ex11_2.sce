//Calculation of throat diameter and orifice diameter
clc,clear
//Given:
m_a=6,m_f=.45 //Mass of air and fuel in kg/min
rho_f=740 //Density of fuel in kg/m^3
P1=1.013 //Pressure of air in bar
T1=27+273 //Temperature of air in K
C2=92 //Flow velocity at throat in m/s
Cv=0.8 //Velocity coefficient
Cd_f=0.60 //Coefficient of discharge of fuel
cp=1.005 //Specific heat at constant pressure in kJ/kgK
g=1.4 //Specific heat ratio(gamma)
//Solution:
//Defining, y as a function of P2
//This function is the difference of C2 actual and C2 given 
function [y]=f(P2)
    C2_act=Cv*sqrt(2*cp*10^3*T1*(1-(P2/P1)^((g-1)/g)))
    y=C2_act-C2
endfunction
funcprot(0);
//The function f is solve for zero to get the value of P2
P2=fsolve(1,f) //Pressure at throat in bar
R=0.287 //Specific gas constant in kJ/kgK
rho1=P1*100/(R*T1) //Mass density at opening in kg/m^3
rho2=rho1*(P2/P1)^(1/g) //Mass density at throat in kg/m^3
A2=m_a/(60*rho2*C2) //Cross section area at throat in m^2
d2=sqrt(4*A2/%pi) //Diameter of cross section in m
deltaP_v=P1-P2 //Pressure drop at venturi in bar
deltaP_f=0.75*deltaP_v //Given, Pressure drop at fuel metering orifice in bar
A_f=m_f/(60*Cd_f*sqrt(2*rho_f*deltaP_f*10^5)) //Area of cross section of fuel nozzle in m^2
d_f=sqrt(4*A_f/%pi) //Diameter of cross section of fuel nozzle in m
//Results:
printf("\n The throat diameter of the choke, d2 = %.3f cm",d2*100)
printf("\n The orifice diameter, d_f = %.2f mm\n\n",d_f*1000)
