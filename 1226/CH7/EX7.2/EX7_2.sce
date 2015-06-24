clc;funcprot(0)//EXAMPLE 7.2
//Initializing the variables

N=3600;................//engine rpm
T=15;................//Inlet temperature in degree Celsius
Tk = T+273;..............//Inlet temperature in Kelvin
p=760;................//Inlet pressure in mm of Hg i.e. 1.013 x 10^5 Pa
ppa=1.013*(10^5);.........// Inlet pressure in Pascals
pdv=4066;..............//Total piston displacement volume in cm^3
pdvsi=pdv*(10^(-6));.............//Total piston displacement volume in m^3
afr=14/1;...................//Air fuel ratio is 14:1
bsfc=0.38;..................// b.s.f.c in kg/kWh
BP=86;.............//power output in kW
R=287;................//Gas constant for air in J/kg.K
//Calculations
m = (BP*bsfc*afr)/60;...............//Air consumption
V = (m*R*Tk)/ppa;
DV= pdvsi*(N/2);.........//Displacement Volume
VE=V/DV;...............//Volumetric Efficiency
disp (VE,"Volumetric efficiency of the engine is:")

