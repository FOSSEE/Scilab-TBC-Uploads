// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 2,Page 313
//Title: Volumes to be mixed
//================================================================================================================
clear 
clc

//INPUT
V=3;//volume of mixture to be prepared in m^3
per_ethanol=60;//mole percent of ethanol in a ethanol-water system
per_water=40;//mole percent of water in a ethanol-water system
v1=57.5*10^-6;//partial molar volume of ethanol in the ethanol-water system in m^3/mol
v2=16*10^-6;//partial molar volume of water in the ethanol-water system in m^3/mol
v1_pure=57.9*10^-6;//molar volume of pure ethanol in m^3/mol
v2_pure=18*10^-6;//molar volume of pure water in m^3/mol

//CALCULATION
X1=per_ethanol/100;//calculation of the mole fraction of ethanol (no unit)
X2=per_water/100;//calculation of the mole fraction of water (no unit)
v=(X1*v1)+(X2*v2);//calculation of the molar volume of the solution using Eq.(9.10) in m^3/mol
N=V/v;//calculation of the mole number of solution required in mol
N1=N*X1;//calculation of the mole number of ethanol in solution in mol
N2=N*X2;//calculation of the mole number of water in solution in mol
V1=N1*v1_pure;//calculation of the volume of pure ethanol required in m^3
V2=N2*v2_pure;//calculation of the volume of pure water required in m^3

//OUTPUT
mprintf("\n The volume of pure ethanol required = %0.3f m^3\n",V1);
mprintf("\n The volume of pure water required = %0.3f m^3\n",V2);

//===============================================END OF PROGRAM===================================================
