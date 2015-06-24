clc
clear 
printf('example 1.8 page number 29\n\n')
//to find the amount of steam released

vp_C6H6 = 520    //in torr
vp_H2O = 225     //in torr
mass_water=18
mass_benzene=78

amount_of_steam = (vp_H2O/vp_C6H6)/(mass_benzene/mass_water);

printf("amount of steam = %f", amount_of_steam)
