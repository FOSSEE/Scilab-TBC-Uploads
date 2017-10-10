clc;
clear;
myu_e=1.553 //refractive index
myu_0=1.542 //refractive index
lambda=5.5*10^-5//wavelength in m 

//calculation for minimum thickness i.e half wave plate
d=lambda/(2*(myu_e-myu_0))

mprintf("The thickness of the plate is = %1.1e m",d) 

