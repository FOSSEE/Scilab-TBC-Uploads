clc
//Initialization of variables
u=100 //Btu/lbm
P=100 //psia
v=5 //ft^3
//calculations
h=u + P*v*144/778.16
//results
printf("Enthalpy of unit mass of fluid = %.1f Btu/lbm",h)
