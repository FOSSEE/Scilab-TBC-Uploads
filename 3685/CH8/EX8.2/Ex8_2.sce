
clc
lhw = 1858.5 // Latent heat of water in kJ/kg
Tew = 220 // Water evaporation temperature in degree Celsius
 
Tig = 1100 // Initial temperature of the gas in degree Celsius
Tfg = 550 // Final temperature of the gas in degree Celsius
T0 = 303 // Atmospheric temperature in degree Celsius
Tg2 = 823 
Tg1 = 1373
printf("\n Example 8.2")
Sw = lhw/(Tew+273) // Entropy generation in water
Sg = integrate('3.38/T','T',Tg1,Tg2)
St = Sg+Sw 
printf("\n Total change in entropy is %f kJ/K",St)

printf("\n Increase in unavailable energy is %d kJ",T0*St)
//The answers vary due to round off error

