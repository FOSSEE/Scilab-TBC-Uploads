
clc;
clear;
//Example 3.17
mu=0.8    //Viscosity of flowing fluid [N.s/sq m]
rho=1.1    //Density of flowinf fluid [g/cubic cm]
rho=rho*1000    //Density in [kg/cubic m]
Cp=1.26    //Specific heat [kJ/kg.K]
Cp=Cp*10^3    // in[J/(kg.K)]
k=0.384    //[W/(m.K)]
mu_w=1    //Viscosity at wall temperature [N.s/sq m]
L=5    //[m]
vfr=300    //Volumetric flow rate in [cubic cm/s]
vfr=vfr*10^-6    //[cubic m/s]
mfr=vfr*rho    //Mass flow rate of flowinf fluid [kg/s]
Di=20    //Inside diameter in[mm]
Di=Di/1000    //[m]
Area=(%pi/4)*Di^2    //Area of cross-section [sq m]
u=vfr/Area    //Veloctiy in [m/s]
Nre=Di*u*rho/mu    //Reynold's number
//As reynold's number is less than 2100,he flow is laminar
Npr=Cp*mu/k    //Prandtl number
Nnu=1.86*(Nre*Npr*Di/L)^(1.0/3.0)*(mu/mu_w)^(0.14)
hi=Nnu*k/Di    //inside heat transfer coefficient [W/sq m.K]
printf("Inside heat transfer coefficient is %f W/(sq m.K)",hi);
//Note:
printf("\n The answer given in book..ie 1225 is wrong.please redo the calculation of last line manually to check\n"); 
