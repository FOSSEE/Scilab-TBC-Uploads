//Chapter-14, Example 14.3, Page 583
//=============================================================================
clc
clear

//INPUT DATA
T=27;//Temperature of dry air in degree C
p=1;//Pressure of dry air in atm
L=0.5;//Length of the plate in m
v=50;//Velocity in m/s

//CALCULATIONS
DAB=(0.26*10^-4)//DAB value in m^2/s
p=1.16;//Density in kg/m^3
u=(184.6*10^-7);//Dynamic viscosity in N.s/m^2
Pr=0.707;//Prantl number
Sc=(u/(p*DAB));//Schmidt number
Re=(p*v*L)/u;//Reynolds number
jm=(0.0296*(Re^(-1/5)));//jm value
h=(jm*v)/Sc^(2/3);//Mass transfer coefficient of water vapour in m/s

//OUTPUT
mprintf('Mass transfer coefficient of water vapour is %3.3f m/s',h)

//=================================END OF PROGRAM==============================
