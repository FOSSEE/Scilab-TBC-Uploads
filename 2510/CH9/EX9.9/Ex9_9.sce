//Variable declaration:
m = 0.075                           //Mass rate of air flow (kg/s)
D = 0.225                           //Diameter of tube (m)
mu = 208*10**-7                     //Dynamic viscosity of fluid (N)
Pr = 0.71                           //Prandtl number
k = 0.030                           //Thermal conductivity of air (W/m.K)

//Calculation:
Re = 4*m/(%pi*D*mu)                  //Reynolds number
//From equation 9.26:
Nu = 0.023*(Re**0.8)*(Pr**0.3)      //Nusselt number
h = (k/D)*Nu                        //Heat transfer coefficient of air (W/m^2.K)

//Result:
printf("The Heat transfer coefficient of air is : %.2f  W/m^2.K.",h)
