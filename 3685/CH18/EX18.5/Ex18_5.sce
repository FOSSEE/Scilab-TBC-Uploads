clc
d = 8 // Average diameter in mm
r = 750 // Density in Kg/m^3
t = 2 // Intermediate temperature in degree celcius
t_inf = 1 // Ambient temperature in degree celcius
t0 = 25 // Initial temperature in degree celcius
c = 3.35 // Specific heat in kJ/KgK
h = 5.8 // Heat transfer coeeficient in W/m^2K
T1 = 10 // time period in minutes
T2 = 30 // time period in minutes 
t1 = 5 // Intermediate temperature in degree celcius
printf("\n Example 18.5\n")
tau1 = c*1e3*log((t0-t_inf)/(t-t_inf))/(h*60) // Time to cool down to 2 degree celcius
tau2 = (t0-t_inf)*(exp(-(c*T1*60)/(c*1e3))) // Temperature of peas after 10 minutes
Y = exp(-1*(c*T2*60)/(c*1e3))
tau3 = (t0*Y-t1)/(Y-1)

printf("\n Time to cool down to 2 degree celcius is %f min",tau1)
printf("\n Temperature of peas after 10 minutes is %f degree celcius",tau2)
printf("\n Temperature of peas after 30 minutes is %f degree celcius",tau3)
//The answers given in book are incorrect

