//Calculation of the throat diameter
clc,clear
//Given:
m_a=5 //Mass of air in kg/min
P1=1.013 //Pressure of air in bar
T1=27+273 //Temperature of air in K
C1=0,C2=90 //Flow velocity at opening and throat in m/s
Cv=0.8 //Velocity coefficient
cp=1.005 //Specific heat at constant pressure in kJ/kgK
g=1.4 //Specific heat ratio(gamma)
//Solution:
//Refer fig 11.32
//Defining, y as a function of P2
//This function is the difference of C2 actual and C2 given 
function [y]=f(P2)
    C2_act=0.8*sqrt(2*cp*1000*T1*(1-(P2/P1)^((g-1)/g)))
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
//Results:
printf("\n The throat diameter of the choke, d2 = %.2f cm\n\n",d2*100)
