clc
clear 
printf("example 3.25 page number 113\n\n")

//to find the excess air supplied

N2 = 80.5   //in m3
air_supplied = N2/0.79   //in m3
volume_O2 = air_supplied*0.21;  //in m3
O2_fluegas = 6.1   //in m3

O2_used = volume_O2 - O2_fluegas;
excess_air_supplied = (O2_fluegas/O2_used)*100;

printf("percentage of excess air supplied = %f",excess_air_supplied)
