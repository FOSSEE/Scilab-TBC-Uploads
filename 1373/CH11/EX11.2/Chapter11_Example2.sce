//Chapter-11, Example 11.2, Page 481
//=============================================================================
clc
clear

//INPUT DATA
Tsat=100;//Saturation temperature of water in degree C
p1=957.9;//Density of liquid in kg/m^3
Cpl=4217;//Specific heat in J/kg.K
u=(279*10^-6);//Dynamic viscosity in N.s/m^2
Pr=1.76;//Prantl number
hjg=2257;//Enthalpy in kJ/kg
s=(58.9*10^-3);//Surface tension in N/m
pv=0.5955;//Density of vapour in kg/m^3
m=30;//Rate of water in kg/h
D=0.3;//Diameter in m

//CALCULATIONS
q=(0.18*hjg*1000*pv*((s*9.81*(p1-pv))/pv^2)^0.25)/10^6;//Burnout heat flux in MW/m^2

//OUTPUT
mprintf('Burnout heat flux is %3.3f MW/m^2',q)

//=================================END OF PROGRAM==============================
