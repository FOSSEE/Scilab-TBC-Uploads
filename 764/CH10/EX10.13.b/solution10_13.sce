
//Obtain the path of solution file
path = get_absolute_file_path("solution10_13.sce")
//Obtain the path of datafile
datapath = path + filesep() + 'data10_13.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the spring index C
C = D/d
//Calculate the Wahl Factor K
K = (4*C - 1)/(4*C - 4) + (0.615/C)
//Calculate the shear stress correction factor Ks
Ks = 1 + 0.5/C
//Calculate the mean force Pm (N)
Pm = (Pmax + Pmin)/2
//Calculate the force amplitude Pa (N)
Pa = (Pmax - Pmin)/2
//Calculate the mean shear stress taum (N/mm2)
taum = (Ks * 8 * Pm * D)/(%pi * d^3)
//Calculate the shear stress amplitude taua (N/mm2)
taua = (K * 8 * Pa * D)/(%pi * d^3)
//Calculate the endurance limit in shear Se (N/mm2)
Se = 0.22 * Sut
//Calculate the yield shear strength Ssy (N/mm2)
Ssy = 0.45 * Sut
//Calculate the factor of safety fs
fs = (((taua*(Ssy - Se/2))/(Se/2) + taum)/Ssy)^-1
//Print results
printf("\nFactor of safety(fs) = %0.2f",fs)
