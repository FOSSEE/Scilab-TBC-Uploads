
clc;    
clear;
//Example 3.19

//DATA:
rho=984.1    //Density of water [kg/m^3]
Cp=4187    //Specific heat in [J/kg.K]
mu=485*10^-6    //Viscosity at 331 K[Pa.s]
k=0.657    //[W/(m.K)]
mu_w=920*10^-6    //Viscosity at 297 K [Pa.s]
//Solution
D=16    //Diameter in [mm]
D=D/1000    //Diameter in [m]
u=3    //Velocity in [m/s]
rho=984.1    //[kg/m^3]
Nre=D*u*rho/mu    //Reynolds number
Nre=round(Nre)
Npr=Cp*mu/k    //Prandtl number

//Dittus-Boelter equation (i)
Nnu=0.023*(Nre^0.8)*(Npr^0.3)    //nusselt number
h=k*Nnu/D    //Heat transfer coefficient [W/m^2.K]
printf("\nANSWER-(i) \nBy Dittus-Boelter equation we get h=%f W/sq m.K\n\n\n",h);

//sieder-tate equation (ii)
Nnu=0.023*(Nre^0.8)*(Npr^(1.0/3.0))*((mu/mu_w)^0.14)    //Nusselt number
h=k*Nnu/D    //Heat transfer coefficient in [W/sq m.K]
printf("\nAnswer-(ii)\n-By Sieder-Tate equation we get h=%f W/sq m.K\n",h);
printf("\nNOTE:Calculation mistake in book in part 2 ie sieder tate eqn\n")
