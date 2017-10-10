clc
// At 0.1Mpa, 110 degree
h2 = 2696.2 // Enthalpy at turbine inlet in kJ/kg
hf = 844.89 // Enthalpy of fluid in kJ/kg
hfg = 1947.3 // Latent heat of vaporization in kJ/kg
vf = 0.001023 // at T = 70 degree
V = 0.000150 // In m3
m2 = 3.24 // mass of condensed steam in kg

printf("\n Example 9.10")
x2 = (h2-hf)/hfg // Quality of steam at turbine inlet
m1 = V/vf // mass of moisture collected in separator
x1 = (x2*m2)/(m1+m2) // quality of the steam
printf("\n The quality of the steam in the pipe line is %f",x1)
//The answers vary due to round off error

