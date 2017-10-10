clc
hfg = 2202.6 // Latent heat of fusion in kJ/kg
Qh = 5.83 // Heat addition in MJ/s
ws = Qh/hfg // steam flow rate
eg = 0.9 // efficiency of generator
P = 1000 // Power generation rate in kW
Wnet = 1000/eg // Net output
nbrake = 0.8 // brake thermal efficiency
h1_2s = Wnet/(ws*nbrake) // Ideal heat addition
n_internal = 0.85 // internal efficiency
h12 = n_internal*h1_2s // Actual heat addition
hg = 2706.3 // Enthalpy of gas in kJ/kg
h2 = hg //Isenthalpic process 
h1 = h12+h2 // Total enthalpy 
h2s = h1-h1_2s // Enthalpy change
hf = 503.71 // Enthalpy of fluid in kJ/kg 
x2s = (h2s-hf)/hfg // Quality of steam
sf = 1.5276  // entropy of fluid in kJ/kgK
sfg = 5.6020 // Entropy change due to vaporization in kJ/kgK
s2s = sf+(x2s*sfg) // Entropy at state 2s
s1 = s2s // Isentropic process
P1 = 22.5 // Turbine inlet pressure in bar from Mollier chart
t1 = 360 // Temperature of the steam in degree Celsius from Mollier chart

printf("\n Example 12.9\n")
printf("\n Temperature of the steam is %d degree celcius",t1)
printf("\n Pressure of the steam is %f bar",P1)
//The answers vary due to round off error

