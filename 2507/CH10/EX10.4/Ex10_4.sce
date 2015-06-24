clc
clear
printf("Example 10.4 | Page number 350 \n\n");
//Find temperature and all other specific properties
//Given data
p1 = 500 //kPa //initial pressure
s1 = 1.3625 //initial entropy

//Solution
//Using Method 2:
Ts = 424.28 //K //temperature at 500kPa
sf = 1.8606 //kJ/kgK //entropy at 500kPa
Cwat = 4.189 //kJ/kgK //specific heat of water
T1 = (exp((sf-s1)/Cwat)/Ts)^-1 //K
printf("Temperature = %.2f °C\n",T1-273)
v1 = 0.001 //m^3/kg //volume per kg water
h1 = (640.21 - Cwat*(151.86-T1+273)) // kJ/kg //Enthalpy per kg water
u1 = h1 - p1*v1 //kJ/kg //internal energy per kg water
printf("Volume per kg water = %.3f m^3/kg\n",v1)
printf("Enthalpy per kg water = %.1f kJ/kg\n",h1)
printf("Internal energy per kg water = %.1f kJ/kg\n",u1)
