
//Problem 3
//calculate the energy falling on the target material per second and also calculate the cutoff wavelength of the X-rays
clear
clc
V=20*10^3// potential difference in V
e=1.6*10^(-19)//charge on an electron in C
h=6.6*10^(-34)//planck's constant in J-s
c=3*10^(8)//velocity of light in m/s
i=1//current in mA
E=i*V*10^(-3)//energy in j/s
w=(h*c)/(e*V)//wavelength in nm
printf('energy falling on the target material per second = %.1f j/s \n',E)
printf('cutoff wavelength of the X-rays = %.3f nm',w*10^9)