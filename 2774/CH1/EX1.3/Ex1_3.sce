clc
// solution

// initialization of variables
V=3*5*20 // Volume of air in m^3 from dimensions
m=350 // mass in kg
g=9.81 // gavitational acceleration in m/s^2
rho=m/V // density
printf("The Density is %.3f kg/m^3 \n",rho)

v=1/rho // specific volume of air
printf(" The specific volume  is %.3f m^3/kg \n",v)

gama=rho*g // specific weight of air
printf(" The specific weight is %.2f N/m^3",gama)
