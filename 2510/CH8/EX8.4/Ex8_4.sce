//Variable declaration:
k = 9.1                 //Thermal coductivity of steel rod (Btu/h.ft.°F)
p = 0.29*1728           //Density of steel rod (lb/ft^3)
Cp = 0.12               //Heat capacity of steel rod (Btu/lb.°F)
P = 15+14.7             //Absolute pressure (psia)
Ta = 71.0               //Initial temperature (°F)
L = 20.0/12.0           //Length of rod (ft)
t = 30.0/60.0           //Time taken (h)
x = 0.875/12.0          //Length from one of end (ft)
pi = %pi
e = %e

//From assumption:
n = 1.0                 //First term
//From tables in Appendix:
Ts = 249.7              //Saturated steam temperature (°F)

//Calculation:
a = k/(p*Cp)            //Thermal diffusivity  (ft^2/s)
T = Ts+(Ta-Ts)*(((n+1)*(-1)**2 + 1 )/pi)*e**((-a*((n*pi)/L)**2)*t)*sin((n*pi*x)/L) //Temperature 0.875 inches from one of the ends after 30 minutes (°F)

//Result:
printf ("The temperature 0.875 inches from one of the ends after 30 minutes is : %.0f  °F.",T)
