clc
//Initialization of variables
nu=0.00015 //ft^2/s
L=35 //ft
U=88 //fps
g=32.2 //ft/s^2
b=10 //ft
w=8 //ft
rho=0.0725
//calculations
R=L*U/nu
Cf=0.455 /(log10(R))^2.58
B=2*b + w
Ff=Cf*rho/g *U^2 /2 *L*B
Rx=R/10^5
delta=L*0.377 /(b* Rx^(0.2))
T0=0.0587 *rho/g *U^2 /2 *(nu/(L*U))^(0.2)
//results
printf("Frictional drag = %.1f lb",Ff)
printf("\n Thickness of  boundary layer = %.3f ft",delta)
printf("\n Shear stress = %.4f lb/ft^2",T0)
