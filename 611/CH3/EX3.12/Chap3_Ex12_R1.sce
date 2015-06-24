// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-3,Example 12,Page 72
//Title:Pressure developed using two paramter compressibility factor correlation
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

//CALCULATION
mwt=44*10^-3;//molecular weight of carbon dioxide in kg/mol
n=m/mwt;//calculation of number of moles of carbon dioxide in the tank in moles
MV=V/n;//calculation of molar volume in m^3/mol
slope=(MV*Pc*10^5)/(R*(T+273.15));//slope of the straight line formed when z0 is plotted against Pr formed by using the relation z0=(V*Pc*Pr)/(R*T)
Tr=(T+273.15)/Tc;//calculation of reduced temperature (no unit)

//At the given conditions, the state of CO2 must lie on the curve corresponding to the obtained value of Tr. To determine the state of CO2, a straight line passing through the origin, with the obtained value of slope is drawn on the z0 vs Pr plot of Fig.3.12 and the point of intersection of this straight line with the Tr curve is obtained to get the value of z0

z0=0.725;//value of compressibilty factor obtained by doing the above mentioned procedure
P=(z0*R*10^-6*(T+273.15))/(MV)//calculation of pressure in MPa using Eq.(3.59)

//OUTPUT
mprintf('\n The pressure developed by carbon dioxide= %.0f MPa\n',P);



//===============================================END OF PROGRAM===================================================
