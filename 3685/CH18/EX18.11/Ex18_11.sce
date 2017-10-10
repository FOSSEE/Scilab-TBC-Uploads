clc
d1 = 2 // Diameter of steel rod in cm
d2 = 16 // Diameter of cylindrical furnace in cm
e1 = 0.6 // emissivity of inner surface
e2 = 0.85 // emissivity of rod surface
T = 1093 // Inner surface temperature of furncae in degree celcius
Tr1 = 427 // Initial temperature of rod in degree celcius
Tr2 = 538 // Initial temperature of rod in degree celcius
sigma = 5.67e-8 // Constant
rho = 7845 // density in kg/ m^3
c = 0.67 // Specific heat capacity in kJ/kgK
printf("\n Example 18.11\n")
A_ratio = d1/d2 // Surface area ratio of cylindrical bodies
F12 = (1/((1/e1)+(A_ratio*(1/e2 -1))))
A1 = %pi*d1*1e-2*1 // Surface area of rod
T1 = Tr1+273
T2 = T +273
T3 = Tr2 +273
Qi = sigma*A1*F12*(T1^4-T2^4)
Qe = sigma*A1*F12*(T3^4-T2^4)

Q_avg = abs((Qi+Qe)/2)
tau = rho*c*(1e-4)*%pi*(Tr2-Tr1)/(Q_avg*(1e-3))

// Time required for heating operation 
printf("\n Time required for heating operation is %f s",tau)

//The answers vary due to round off error
