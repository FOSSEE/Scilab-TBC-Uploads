clc;
clear;
lambda=0.154 //wavelength in nm
D=0.2494 //diameter in D

//calculation
d=lambda/2 //interplanar distance in nm 
hkl_parameters=((2*D)/(d*sqrt(3)))^2
mprintf("The sum total of the intercepts of the parallel plane h^2+k^2+l^2 should be less than %1.2f\n",hkl_parameters)//The answer varies dur to round off error
mprintf("The highest possible values of hkl are (222) as the sum total of h^2+k^2+l^2 is less than or equal to %1.2f\n",hkl_parameters)//The answer varies dur to round off error
mprintf("Braggs reflection will occur from the first planes including (222)")
