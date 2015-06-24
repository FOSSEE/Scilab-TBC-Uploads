clc
clear 
printf("example 3.18 page number 108\n\n")

//to find the temperature of combustion

H_combustion = 1560000    //in kJ/kmol 
H0_CO2 = 54.56   //in kJ/kmol
H0_O2 = 35.2   //in kJ/kmol
H0_steam = 43.38   //in kJ/kmol
H0_N2 = 33.32   //in kJ/kmol

t = H_combustion/(2*H0_CO2+3*H0_steam+0.875*H0_O2+16.46*H0_N2);

printf("theoritical temperature of combustion = %f degree C",t)
