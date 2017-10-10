clc
Ps = 0.033363 //Saturation pressure in bar
P = 1.0132 // Atmospheric pressure in bar
W2 = (0.622*Ps)/(P-Ps) // mass fraction of moisture
hfg2 = 2439.9 // Latent heat of vaporization in kJ/kg
hf2 = 109.1 // Enthalpy of liquid moisture in kJ/kg
cpa = 1.005 // Constant pressure heat capacity in kJ/kg
hg = 2559.9 // Enthalpy of gas moisture in kJ/kg
hw1 = hg // constant enthalpy
T2 = 26 // wbt in degree Celsius 
T1 = 32 // dbt in degree Celsius 
W1 = (cpa*(T2-T1)+(W2*hfg2))/(hw1-hf2)
Pw = ((W1/0.622)*P)/(1+(W1/0.622))

Psat = 0.048 // Saturation pressure in bar at 32 degree
fi = Pw/Psat // Relative humidity

mu = (Pw/Psat)*((P-Psat)/(P-Pw)) // Degree of Saturation
Pa = P-Pw // Air pressure
Ra = 0.287 // Gase constant
Tdb = T1+273 //  dbt in K
rho_a = (Pa*100)/(Ra*Tdb) // Density of air 
rho_w = W1*rho_a // Water vapor density
ta = 32 // air temperature in degree Celsius  
tdb = 32 // dbt in degree Celsius 
tdp = 24.1// Dew point temperature in degree Celsius 
h = cpa*ta + W1*(hg+1.88*(tdb-tdp))
printf("\n Example 15.1\n")
printf("\n Specific humidity is %f kg vap./kg dry air",W1)
printf("\n Partial pressure of water vapour is %f bar",Pw)
printf("\n Dew point temperature is %f degree celcius",tdp)
printf("\n Relative humidity is %f percent ",fi*100)
printf("\n Degree of saturation is %f ",mu)
printf("\n Density of dry air is %f kg/m^3",rho_a)
printf("\n Density of water vapor is %f kg/m^3",rho_w)
printf("\n Enthalpy of the mixture is %f kJ/kg",h)
//The answers vary due to round off error

