clc;
//Example 14.2
//page no 148
printf("Example 14.2 page no 148\n\n");
//a fluid is moving through a cylinder in laminar flow
meu=6.9216e-4//viscosity of fluid,lb/ft*s
rho=62.4//density,lb/ft^3
D=1/12//diameter,ft
R_e=2100//reynolds no
v=R_e*meu/(D*rho)//minimum velocity at which turbulance will appear
printf("\n velocity v=%f ft/s",v);
