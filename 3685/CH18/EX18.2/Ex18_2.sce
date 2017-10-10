clc
r1 = 5 // Inner radius of steel pipe in cm
r2 = 10 // Extreme radius of inner insulation in cm
r3 = 13// Extreme radius of outer insulation in cm
K1 = 0.23 // Thermal conductivity of inner insulation in W/mK
K2 = 0.37 // Thermal conductivity of outer insulation in W/mK
hi = 58 // Inner heat transfer coefficient in W/m^2K
h0 = 12 // Inner heat transfer coefficient in W/m^2K
ti = 60 // Inner temperature in degree Celsius
to = 25 // Outer temperature in degree Celsius
L = 50 // Length of pipe in m

printf("\n Example 18.2\n")
Q =((2*%pi*L*(ti-to))/((1/(hi*r1*1e-2))+(log(r2/r1)/(K1))+(log(r3/r2)/(K2))+(1/(h0*r3*1e-2))))
// Rate of heat transfer
printf("\n Heat transfer rate is %f kW",Q/1e3)
//The answers vary due to round off error

