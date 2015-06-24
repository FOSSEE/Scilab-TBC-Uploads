clc
//Example 17.4
//Calculate the boundary layer thickness and the drag on the plate
V=50//ft/s
l=20//ft
b=1//ft
v=1.08*10^(-5)//ft^2/s
R=V*l/v//dimentionless (reynold's number)
delta=0.37*l/R^0.2//ft
printf("The boundary layer thichness at the end of the plate is %f ft\n",delta);
Cf=0.072/R^0.2//dimentionless
rho_water=62.3//lbm/ft^3
V=50//ft/s
//let A be the area of contact
A=2*l*b//ft^2
//1 lbf.s^2 = 32.2 lbm.ft
F=(1/2)*Cf*rho_water*V^2*A/32.2//lbf
printf("The drag on the plate is %f lbf",F);