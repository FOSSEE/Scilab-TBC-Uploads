//Chapter-11, Example 11.1, Page 480
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
q=(m*hjg*1000)/(3600*3.14*(D^2/4));//Heat transfer in W/m^2
Ts=Tsat+(((q/(u*hjg*1000))*sqrt(s/(9.81*(p1-pv)))))^0.33

//OUTPUT
mprintf('Temperature of the bottom surface of the pan is %3.2f degree C',Ts)

//=================================END OF PROGRAM==============================
