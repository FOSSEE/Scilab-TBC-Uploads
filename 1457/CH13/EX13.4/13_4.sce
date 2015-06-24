clc
//Initialization of variables
Q=30 //cfs
r=2 //ft
cp=3200
rho=1.94
Q2=10 //cfs
z=300 //ft
//calculations
V=Q/(%pi*r^2)
ph=rho*cp*V/144
phd=4000/cp /(2*r) *ph
dV=(Q2-Q)/(%pi*r^2)
dph=-rho*cp*dV/144
ph3=rho*cp*V/3 /144
ph4=ph3*z*2/cp
//results
printf("Water hammer pressure= %.1f psi",ph)
printf("\n Water hammer pressure in case 2= %.1f psi",phd)
printf("\n Water hammer pressure in case 3= %.1f psi",dph)
printf("\n Pressure at valve in case 4 = %.1f psi",ph3)
printf("\n Pressure at 300 ft from reservoir = %.2f psi",ph4)
