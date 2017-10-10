clc
u_m = 0.8 // mean velocity in m/s
D = 5 // Diameter in cm
v = 4.78e-7 // dynamic coefficient of viscosity
Pr = 2.98 // Prantl number
K = 0.66 // Thermal conductivity in W/mK
l = 3 // length of pipe in m
tw = 70 // Wall temperature
tf = 50 // mean water temperature
printf("\n Example 18.9\n")
Re = u_m*D*1e-2/v // Reynold number
Nu = 0.023*(Re^0.8)*(Pr^0.4)
h = K*Nu/(D*1e-2) // Heat transfer coefficient
A = %pi*D*1e-2*l // Surface area
Q = h*A*(tw-tf) // Rate of heat transfer
printf("\n Heat transfer coefficient is %d W/m^2K",h)
printf("\n Rate of heat transfer is %f kW",Q/1e3)
//The answers vary due to round off error

