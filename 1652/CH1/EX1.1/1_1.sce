clc
//Initialization of variables
l=0.71 *10^-8 //cm
n=200 //lines/cm
v=0.00145 //radian
//calculations
d=1/n
phi2=2*l/d +v^2
phi=sqrt(phi2)
//results
printf('Angle required = %.2e radian',phi)
