clc
eps_e = 0.27  // Constant
P = 1 // Atmospheric pressure in bar
K = (4*eps_e^2*P)/(1-eps_e^2) 
P1 = 100/760 // Pressure in Pa
eps_e_1 = sqrt((K/P1)/(4+(K/P1)))
T1 = 318 // Temperature in K
T2 = 298// Temperature in K
R = 8.3143 // Gas constant
K1 = 0.664 // dissociation constant at 318K
K2 = 0.141// dissociation constant at 298K
dH = 2.30*R*((T1*T2)/(T1-T2))*(log10(K1/K2))
printf("\n Example 16.2\n")
printf("\n K is %f atm",K)
printf("\n Epsilon is %f ",eps_e_1)
printf("\n The heat of reaction is %d kJ/kg mol",dH)
//The answers vary due to round off error

