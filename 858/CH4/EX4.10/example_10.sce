clc
clear 
printf("example 4.10 page number 139\n\n")

//to find the temperature increase

Q=0.001*10^5   //in J/s
w=0.001*1000   //in kg/s
density=1000   //in kg/m3
cp=4.19*10^3   //in J/kg K

delta_T=Q/(w*cp);
printf("Temperature increase = %f degree celcius",delta_T)
