clc
clear
printf("Example 5.2 | Page number 120 \n\n");
//Part (a) Find the change in enthalpy across turbine, if inlet velocity is negligible
//Part (b) Find the change in enthalpy across turbine, if inlet velocity is 60m/s

//Given Data
m = 5000/3600 // kg/s // flow rate
W_x = 550 // KJ/s //power developed by turbine
Q = 0 //Heat loss is negligible

//Solution
//Part (a)
printf("Part(a)\n\n")
V1 = 0 // m/s //inlet velocity
V2 = 360 // m/s //exit velocity
g = 9.81 // m/s^2
delta_z = 0 //m //z2-z1

delta_h = ((Q-W_x)/m)-g*delta_z*.001-((V2^2-V1^2)/2000) //KJ/Kg //change in enthalpy
printf("Change in enthalpy = %.2f KJ/kg\n",delta_h)

//Part (a)
printf("\nPart(b)\n\n")
V1 = 60 // m/s //inlet velocity
V2 = 360 // m/s //exit velocity
g = 9.81 // m/s^2
delta_z = 0 //m //z2-z1

delta_h = ((Q-W_x)/m)-g*delta_z*.001-((V2^2-V1^2)/2000) //KJ/Kg //change in enthalpy
printf("Change in enthalpy = %.2f KJ/kg\n",delta_h)
