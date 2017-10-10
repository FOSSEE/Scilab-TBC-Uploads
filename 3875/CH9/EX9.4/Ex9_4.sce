clc;
clear;
n1=1.45 //refractive index of core
n2=1.40 //refractive index of cladding

//calculation
NA=sqrt(n1^2-n2^2)
mprintf("\nThe numerical aperture is = %1.4f.\n",NA)

i_a=asind(NA)
mprintf("The acceptance angle is = %d degree.",i_a)
