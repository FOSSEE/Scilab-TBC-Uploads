//Variable declaration:
//From example 12.5:
Re = 73.9                       //Reynolds number
mu_l = 2.82*10**-4              //Absolute viscosity of liquid water condensate (kg/m.s)
Pw = 0.2                        //Wetted perimeter of rectangular plate (m)
h = 14700.0                     //Heat transfer coefficient (W/m^2.K)
T_sat = 100.0                   //Saturation temperature (°C)
Ts = 98.0                       //Surface temperature (°C)
A = 0.2*0.4                     //Heat transfer area of plate (m^2) 

//Calculation:
m1 = Re*mu_l/4.0                //Mass flow rate of condensate (kg/m.s)
m = Pw*m1                       //Mass flow rate of condensate (kg/s)
Co = (3.038*10**-5)*h           //Condensation number
Q = h*A*(T_sat-Ts)              //Heat transfer rate (W)

//Result:
printf("1. The mass flow rate of condensate is : %.4f kg/m.s.",m1)
printf("2. The heat transfer rate is : %.2f kW.",Q/10**3)
