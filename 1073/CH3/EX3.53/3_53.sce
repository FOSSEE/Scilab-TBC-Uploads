clc;
clear;
rho=975 //[kg/m^3]
k=0.671 //[W/(m.K)]
mu=3.8*10^-4    //[N.s/m^2]
dT=10   //[K]
lambda=2300*10^3    //[J/kg]
L=1 //[m]
g=9.81  //[m/s^2]
h=0.943*((rho^2*lambda*g*k^3)/(mu*L*dT))^(1/4)  //W/(sq m.K)    //[W/sq m.K]

printf("\n (i)- Average heat transfer coefficient is %d W/(m^2.K)\n",round(h));

//Local heat transfer coefficient
//at x=0.5  //[m]
x=0.5   //[m]
h=((rho^2*lambda*g*k^3)/(4*mu*dT*x))^(1/4)  //[W/sq m.K]
printf("\n (ii)-Local heat transfer coefficient at 0.5 m height is %d W/(sq m.K)\n",round(h));
delta=((4*mu*dT*k*x)/(lambda*rho^2*g))^(1/4)    //[m]
delta=delta*10^3    //[mm]
printf("\n (iii)-Film thickness is %f mm",delta);

