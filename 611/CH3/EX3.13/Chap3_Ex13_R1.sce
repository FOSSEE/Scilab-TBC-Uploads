// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-3,Example 13,Page 73
//Title:Pressure developed using three paramter compressibility factor correlation
//================================================================================================================
clear 
clc

//INPUT
V=1;//volume of the tank in m^3
m=180;//mass of carbon dioxide in kg
T=91.8;//temperature of the tank in degree celsius after it is placed in the vicinity of a furnace
Tc=304.2;//critical temperature of carbon dioxide in K
Pc=73.87;//critical pressure of carbon dioxide in bar
R=8.314;//universal gas constant in (Pa m^3)/(mol K)
w=0.239;//acentric factor (no unit)

//CALCULATION
mwt=44*10^-3;//molecular weight of carbon dioxide in kg/mol
n=m/mwt;//calculation of number of moles of carbon dioxide in the tank in mol
MV=V/n;//calculation of molar volume in m^3/mol
Tr=(T+273.15)/Tc;//calculation of reduced temperature (no unit)
z0=0.725;//the value of z0 as computed in Example 3.12 (no unit)
z_init=z0;//taking the initial guess value of z as z0
slope=(MV*Pc*10^5)/(R*(T+273.15));//slope of the straight line formed when z is plotted against Pr formed by using the relation  z0=(V*Pc*Pr)/(R*T)
Prguess=z_init/slope;//Calculation of an initial guess value of reduced pressure (no unit) to compute the value of z
z1guess=0.1;//z1 read from Fig.3.14 for the value of Tr and Prguess (no unit)
tolerance=1e-6;//framing the tolerance limit for the convergence of the equation
function[fn]=solver_function(zi)
    fn=zi-(z0+(w*z1guess));//Function defined for solving the system using Eq.(3.64)
endfunction
[z]=fsolve(z1guess,solver_function,tolerance)//using inbuilt function fsolve for solving the system of equations
Pr=z/slope;//calculation of the proper reduced pressure (no unit)
P=((Pc*10^5)*Pr)*10^-6;//calculation of pressure exerted by carbon dioxide in MPa

//OUTPUT
mprintf('\n The pressure developed by carbon dioxide= %f MPa\n',P);



//===============================================END OF PROGRAM===================================================



