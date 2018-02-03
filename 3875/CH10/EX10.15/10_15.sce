clc;
clear;
lambda1=400*10^-9 //wavelength in m
lambda2=300*10^-9 //wavelength in m
V1=0.82 //stopping potential in V
V2=1.85 //stopping potential in V
c=3*10^8 //velocity of light in m/s
e=1.6*10^-19 //charge in C

//calculation
h=(e*(V1-V2)*(lambda1)*(lambda2))/(c*(lambda2-lambda1))

mprintf("\nThe Plancks constant is = %1.3e J-s\n",h)
mprintf("The photoelectric current will not be obtained as the stopping potential does not depend on the intensity of light")
