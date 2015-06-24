//Variable declaration:
T1 = 15.0                   //Water entering temperature (°C)
T2 = 60.0                   //Water leaving temperature (°C)
D = 0.022                   //Inside diameter of tube (m)
V = 0.355                   //Average water flow velocity (m/s)
TC = 150.0                  //Outside wall temperature (°C)
//From Appendix:
p = 993.0                   //Density of water (kg/m^3)
mu = 0.000683               //Dynamic viscosity of water (kg/m.s)
Cp = 4.17*10**3             //Heat capacity of water (J/kg.K)
k = 0.63                    //Thermal conductivity of water (W/m.K)

//Calculation:
Tav1 = (T1+T2)/2.0          //Average bulk temperature of water (°C)
Re = D*V*p/mu               //Reynolds number
Pr = Cp*mu/k                //Prandtl number
Tav2 = (Tav1+TC)/2.0        //Fluid's average wall temperature (°C)
//From Appendix:
mu_w = 0.000306             //Dynamic viscosity of fluid at wall (kg/m.s)
//From Table 9.5:
h = (k/D)*0.027*Re**0.8*Pr**0.33*(mu/mu_w)**0.14    //Heat transfer coefficient for water (W/m^2.K)

//Result:
printf("The heat transfer coefficient for water is : %.1f  W/m^2.K.",h)
