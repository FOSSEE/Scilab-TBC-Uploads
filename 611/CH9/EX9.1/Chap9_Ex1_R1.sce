// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 1,Page 313
//Title: Partial molar volume
//================================================================================================================
clear 
clc

//INPUT
per_ethanol=60;//mole percent of ethanol in a ethanol-water system
per_water=40;//mole percent of water in a ethanol-water system
v1=57.5*10^-6;//partial molar volume of ethanol in the ethanol-water system in m^3
rho=849.4;//density of the mixture in kg/m^3
M_ethanol=46*10^-3;//molar mass of ethanol in kg/mol
M_water=18*10^-3;//molar mass of ethanol in kg/mol

//CALCULATION
X1=per_ethanol/100;//calculation of the mole fraction of ethanol (no unit)
X2=per_water/100;//calculation of the mole fraction of water (no unit)
M=(X1*M_ethanol)+(X2*M_water);//calculation of the molar mass of the ethanol-water mixture in kg/mol
v=M/rho;//calculation of the molar volume of the mixture in m^3/mol
v2=(v-(X1*v1))/(X2);//calculation of the partial molar volume of water using Eq.(9.10) in m^3/mol

//OUTPUT
mprintf("\n The partial molar volume of water = %f m^3/mol\n",v2);

//===============================================END OF PROGRAM===================================================

