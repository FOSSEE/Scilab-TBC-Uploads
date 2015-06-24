//Chapter-8, Example 8.14, Page 356
//=============================================================================
clc
clear

//INPUT DATA
d=0.0254;//Diatance between the plates in m
Tl=60;//Temperature of the lower panel n degree C
Tu=15.6;//Temperature of the upper panel in degree C

//CALCULATIONS
Tf=(Tl+Tu)/2;//Film temperature in degree C
p=1.121;//Density in kg/m^3
k=0.0292;//Thermal conductivity in W/m.K
v1=(0.171*10^-4);//Kinematic viscosity in m^2/s
b=(3.22*10^-3);//Coefficient of thermal expansion in 1/K
Pr=0.7;//Prantl number
Gr=((9.81*b*d^3*(Tl-Tu))/(v1^2));//Grashof number
Nu=(0.195*Gr^0.25);//Nussults number
q=(Nu*k*(Tl-Tu))/d;//Heat flux across the gap in W/m^2

//OUTPUT
mprintf('Free convection heat transfer is %3.1f W/m^2',q)

//=================================END OF PROGRAM==============================
