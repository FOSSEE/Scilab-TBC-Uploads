//Variable declaration:
P = 1.0132 * 10**5              //Air pressure (Pa)
T = 300.0+273.0                 //Air temperature (K)
V = 5.0                         //Air flow velocity (m/s)
D = 2.54/100.0                  //Diameter of tube (m)
R = 287.0                       //Gas constant (m^2/s^2.K)
//From Appendix:
Pr = 0.713                      //Prandtl number of nitrogen
mu = 1.784*10**(-5)             //Dynamic viscosity of nitrogen (kg/m.s)
k = 0.0262                      //Thermal conductivity of nitrogen (W/m.K)
Cp = 1.041                      //Heat capacity of nitrogen (kJ/kg.K)

//Calculation:
p = P/(R*T)                     //Density of air
Re = D*V*p/mu                   //Reynolds number
//From table 9.5:
Nu = 0.023*(Re**0.8)*(Pr**0.3)  //Nusselt number
h = (k/D)*Nu                    //Heat transfer coefficient (W/m^2.K)

//Result:
printf("The required Heat transfer coefficient is : %.2f  W/m^2.K.",h)
