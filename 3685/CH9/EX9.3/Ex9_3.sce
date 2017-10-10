clc
v = 0.09  // Specific volume of substance at a point in m^3/kg
vf = 0.001177 // Specific volume of fluid in m^3/kg
vg = 0.09963  // Specific volume of gas in m^3/kg
hf = 908.79 // Specific enthalpy of fluid in kJ/kg
hfg = 1890.7 // Latent heat of substance in kJ/kg
sf = 2.4474 // Specific entropy of fluid in kJ/kgK
sfg = 3.8935 // Entropy change due to vaporization

printf("\n Example 9.3")
x = (v-vf)/(vg-vf) // steam quality
h = hf+(x*hfg) // Specific enthalpy of substance at a point in kJ/kg
s = sf+(x*sfg) // Specific entropy of substance at a point in kJ/kgK

printf("\n The enthalpy and entropy of the system are\n %f kW and %f kJ/kg and kJ/kg K respectively.",h,s)
//The answers vary due to round off error

