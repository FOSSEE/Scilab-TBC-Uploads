//Calculations on carburettor
clc,clear
//Given:
V_s=1710 //Capacity of the engine in cc
N=5400 //Speed of the engine in rpm
eta_vol=70 //Volumetric efficiency
n=2 //Number of carburettor
A_F=13 //Air fuel ratio
C2=107 //Flow velocity at throat in m/s
Cd_a=0.85,Cd_f=0.66 //Coefficient of discharge for air and fuel
s=0.75 //Specific gravity of the fuel
z=6 //Elevation of the jet in mm
P1=1.013 //Pressure of air in bar
T1=27+273 //Temperature of air in K
g=1.4 //Specific heat ratio(gamma)
cp=1.005 //Specific heat at constant pressure in kJ/kgK
//Solution:
V_s=V_s*10^-6 //Swept volume in m^3
V_act=eta_vol*V_s*N/(2*100*60) //Actual volume sucked in m^3/s
V_act=V_act/n //Actual volume of air sucked through each carburettor in m^3/s
R=0.287 //Specific gas constant in kJ/kgK
m_a=P1*10^5*V_act/(R*10^3*T1) //Mass of air sucked in kg/s
//Defining, y as a function of P2
//This function is the difference of C2 actual and C2 given
function [y]=f(P2)
    C2_act=sqrt(2*cp*10^3*T1*(1-(P2/P1)^((g-1)/g)))
    y=C2_act-C2
endfunction
funcprot(0);
//The function f is solve for zero to get the value of P2
P2=fsolve(1,f) //Pressure at throat in bar
V2=V_act*(P1/P2)^(1/g) //Volume at throat in m^3/s
A2=V2/(C2*Cd_a) //Cross section area at throat in m^2
d2=poly(0,'d2') //Defining the diameter of choke as unknown in m
d_f=d2/2.5 //Given
d2=roots(%pi/4*(d2^2-d_f^2)-A2) //Diameter of choke in m
m_f=m_a/A_F //Mass of fuel sucked in kg/s
A_f=m_f/(Cd_f*sqrt(2*s*1000*(P1*10^5-P2*10^5-z*10^-3*9.81*s*1000))) //Area of cross section of fuel nozzle in m^2
d_f=sqrt(4*A_f/%pi) //Diameter of cross section of fuel nozzle in m
//Results:
printf("\n The diameter of the choke tube, D = %.2f cm",d2(1)*100)
printf("\n The diameter of the fuel jet of a simple carburettor, D_f = %.2f mm\n\n",d_f*1000)
