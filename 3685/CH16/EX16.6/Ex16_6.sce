clc
v1 = 1 // Assumed
v2 = 0 // Assumed
v3 = 1 // Assumed
v4 = 1/2// Assumed
dH = 250560 // Enthalpy change in j/gmol
e = 3.2e-03 // Constant
R = 8.3143 // Gas constant
T = 1900 // Reaction temperature
Cp = ((dH^2)*(1+e/2)*e*(1+e))/(R*T^2*(v1+v2)*(v3+v4))
printf("\n Example 16.6\n")
printf("\n Cp is %f J/g mol K",Cp)
//The answers vary due to round off error

