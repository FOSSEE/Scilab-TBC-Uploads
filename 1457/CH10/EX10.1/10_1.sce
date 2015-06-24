clc
//Initialization of variables
nu=0.001 //ft^2 /s
L=1.5 //ft
U=2 //ft/s
s=0.925
ro=1.94
b=6
//calculations
R=L*U/nu
Cf=1.328/sqrt(R)
Ff=Cf*s*ro*U*b/12 *L
delta=4.91 *L/sqrt(R)
T0=0.332*nu*s*ro*U/L *sqrt(R)
//results
printf("Friction drag = %.3f lb",Ff)
printf("\n Thickness of boundary layer = %.4f ft",delta)
printf("\n Shear stress = %.4f lb/ft^2",T0)
//Similar calculations are done for SI units case
