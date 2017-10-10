clc
Ps = 2.339 // Satutation pressure in kPa
P = 100 // Atmospheric pressure in kPa
W2 = (0.622*Ps)/(P-Ps) // Specific humidity
hfg2 = 2454.1 // Latent heat of vaporization in kJ/kg
hf2 = 83.96 // Enthalpy of fluid in kJ/kg
cpa = 1.005 // COnstant pressure heat capacity of air
hw1 = 2556.3// ENthalpy of water
T2 = 20  // Exit tempeature of mixture in degree Celsius
T1 = 30 // Inlet tempeature of mixture in degree Celsius
W1 = (cpa*(T2-T1)+(W2*hfg2))/(hw1-hf2) // Specific humidity at inlet
Pw1 = ((W1/0.622)*P)/(1+(W1/0.622)) // pressure due to moisture
Ps1 = 4.246 // Saturation pressure in kPa
fi = (Pw1/Ps1) // Humidity ratio 

printf("\n Example 15.2\n")
printf("\n Humidity ratio of inlet mixture is %f kg vap./kg dry air",W1)
printf("\n Relative humidity is %f percent",fi*100)
//The answers vary due to round off error
