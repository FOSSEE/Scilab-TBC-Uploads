clear
clc
//Example 6.12 PRESSURE RISE DUE TO WATER HAMMER EFFECT
rho=1.94; //[slugs/ft^3]
Ev=3.2*10^5; //[lbf/in^2]
V=4; //[ft/s]
//Sound speed
c=sqrt(Ev*144/rho) //[ft/s]
L=3000; //[ft]
tc=2*L/c //[s]
//Closure time of 1sec is less than tc
//Pressure rise
delp=rho*V*c/144 //[psi]
pi=40; //initial pressure[psi]
pmax=pi+delp //[psi]
printf("\n The maximum pressure that develops at the downstream end = %.f psig.\n",pmax)