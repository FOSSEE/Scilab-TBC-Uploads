clear
clc
//Example 6.10 JET IMPINGING ON MOVING BLOCK
A=5*10^-4; //area[m^2]
rho=1000; //density[kg/m^3]
vj=50; //[m/s]
vb=25; //[m/s]
//Force on cart
F=rho*A*(vj-vb)^2 //[N]
printf("\n The frictional force acting on the block = %.f N.\n",F)