clc
m = 1000 // Mass of fish in kg 
T0 = 300 // Ambient temperature in K
P0 = 1 // Ambient pressure in bar
T1 = 300 // Initial temperature of fish in K
T2_ = -20 // Final temperature of fish in degree Celsius
Tf_ = -2.2 // Freezing point temperature of fish in degree Celsius
Cb = 1.7 // Specific heat of fish below freezing point in kJ/kg
Ca = 3.2 // Specific heat of fish above freezing point in kJ/kg
Lh = 235 // Latent heat of fusion of fish in kJ/kg 

printf("\n Example 8.16")
T2 = T2_+273 // Final temperature of fish in K
Tf = Tf_+273 // Freezing point temperature of fish in K
H12 = m*((Cb*(Tf-T2))+Lh+(Ca*(T1-Tf))) // Enthalpy change 
H21 = -H12 // Enthalpy change 
S12 = m*((Cb*log(Tf/T2))+(Lh/Tf)+(Ca*log(T1/Tf))) // Entropy change
S21 = -S12 // Entropy change
E = H21-T0*S21 //Exergy produced
printf("\n Exergy produced is %f MJ or %f kWh",E/1e3,E/3600)
//The answers vary due to round off error

