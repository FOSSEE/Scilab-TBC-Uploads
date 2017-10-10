clc
// At T = 40 degree
Psat = 7.384 // Saturation pressure in kPa
sf = 0.5725 // Entropy of fluid in kJ/kgK
sfg = 7.6845 // Entropy change due to vaporization in kJ/kgK
hf = 167.57 // Enthalpy of fluid in kJ/kg
hfg = 2406.7 // Latent heat of vaporization in kJ/kg
s1 = 6.9189 // Entropy at turbine inlet in kJ/kgK
h1 = 3037.6 // Enthalpy at turbine inlet in kJ/kg
printf("\n Example 9.7")
x2 = (s1-sf)/sfg // Steam quality
h2 = hf+(x2*hfg) // Enthalpy at turbine exit
W = h1-h2 // Net work done
printf("\n The ideal work output of the turbine is %f kJ/Kg",W)
//The answers vary due to round off error

