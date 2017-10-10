clear
clc
//Example 11.1 DRAG FORCE ON A CYLINDER
Vo=35; //speed of air [m/s]
d=0.3; //[m]
L=30; //[m]
Ap=d*L //area[m^2]
rho=1.2; //density[Kg/m^3]
mu=1.81*10^-5; //[N.s/m^2]
Re=Vo*d*rho/mu //Reynolds number
//From fig. 11.4
Cd=0.2; //coefficient of drag
//Drag force
Fd=(Cd*Ap*rho*Vo^2)/2 //[N]
printf("\nThe drag force acting on the cylinder = %.f N.\n",Fd)
//Moment at the base
M=Fd*(L/2) //[N.m]
printf("\nThe bending moment at the base of the cylinder = %.f N.m\n",M)