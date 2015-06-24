//water//
//page 1.59 example 1//
clc
volume_water=10^4//in litres//
volume_HCl=200//in litres//
conc_HCl=0.1//in Normals//
totl_hardness=volume_HCl*conc_HCl*50//in terms of g CaCO3 equivalent//
h=totl_hardness/volume_water//in terms of g CaCO3 equivalent//
printf("\nHardness of water sample is %.f mg/L",h*1000);