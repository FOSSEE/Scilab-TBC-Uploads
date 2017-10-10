clc;
clear;
n1=1.5 //core refractive index
delta=1.8*10^-2 //fractional refractive index 
ratio=0.982 //ratio of cladding to core refractive index
c=3*10^8 //velocity of light in m/s

//calculation
NA=n1*sqrt(2*delta) //numerical aperture
mprintf("\nThe numerical aperture is = %1.3f\n",NA)

i_a=asind(0.285)
mprintf("The acceptance angle is = %2.1f degree\n",i_a)

i_c=asind(ratio)
mprintf("The critical angle at the core cladding interface is = %2.1f degree\n",i_c)

v_core=c/n1
mprintf("The velocity of light in the core is = %1.0e m/s\n",v_core)

v_clad=c/(ratio*n1)
mprintf("The velocity of light in the cladding is = %1.2e m/s",v_clad)
