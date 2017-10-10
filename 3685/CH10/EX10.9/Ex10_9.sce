clc
mo = 2 // mass of oxygen in kg
mn = 6 // mass of nitrogen in kg
muo = 32 // molecular mass of oxygen
mun = 28 // molecular mass of nitrogen
o = mo/muo // mass fraction of oxygen
n = mn/mun // mass fraction of nitrogen
xo = o/(n+o) // mole fraction of oxygen
xn = n/(n+o) // mole fraction of nitrogen
R = 8.314 // Universal gas constant
Ro = R/muo // Gas constant for oxygen
Rn = R/mun // Gas constant for nitrogen
dS = -mo*Ro*log(xo)-mn*Rn*log(xn) // Increase in entropy 

printf("\n Example 10.9")
printf("\n Increase in entropy is %f kJ/kg K",dS)
//The answers vary due to round off error
