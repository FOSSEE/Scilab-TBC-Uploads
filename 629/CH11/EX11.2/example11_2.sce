clear
clc
//Example 11.2 DRAG ON A SPHERE
V=0.08; //speed[m/s]
d=0.012; //[m]
Ap=%pi*d^2/4 //area[m^2]
rho=850; //density[Kg/m^3]
mu=10^-1; //[N.s/m^2]
Re=V*d*rho/mu //Reynolds number
//From fig. 11.4
Cd=5.3; //coefficient of drag
//Drag force
Fd=(Cd*Ap*rho*V^2)/2 //[N]
printf("\nThe drag of a 12 mm sphere = %.5f N.\n",Fd)