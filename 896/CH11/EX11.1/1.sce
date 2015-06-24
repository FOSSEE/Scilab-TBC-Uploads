clc
//Example 11.1
//Calculate the volumetric flow rate
g=32.2//ft/s^2
dz=1.25//ft
Dp=0.03//in (Diameter of particle)
eta=0.33//dimentionless
rho=62.3//lbm/ft^3
mew=1.002//cP
dx=1//ft
//1 cP.ft.s = 6.72*10^(-4)//lbm
//1 ft = 12 in
Vs=g*dz*(Dp/12)^2*eta^3*rho/(150*mew*(1-eta)^2*dx*6.72*10^(-4))//ft/s
printf("The velocity of water is %f ft/s\n",Vs);
d=2//in (diameter of pipe)
A=(%pi)/4*(d/12)^2//ft^2
Q=Vs*A//ft^3/s
printf("The volumetric flow rate is %f ft^3/s\n",Q);
R=(Dp/12)*Vs*rho/(mew*6.72*10^(-4)*(1-eta))//dimentionless (Reynold's number)
printf("Reynolds number is %f",R);