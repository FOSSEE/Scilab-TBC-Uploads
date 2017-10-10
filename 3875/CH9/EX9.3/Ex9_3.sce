clc;
clear;
n1=1.48 //core refractive index
delta=0.05 //fractional refractive index

//calculation
NA=n1*sqrt(2*delta) //numerical aperture
i_a=asind(NA)

mprintf("\nThe numerical aperture is = %1.3f\n",NA)
mprintf("The acceptance angle is = %2.1f degree.",i_a)
