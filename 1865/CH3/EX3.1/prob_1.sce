
//Problem 1
//Calculate the wavelength of X-rays
clear
clc
V=12400// Potential difference in V
e=1.6*10^(-19)//charge on an electron in C
h=6.626*10^(-34)//planck's constant in J-s
c=3*10^(8)//velocity of light in m/s
w=((h*c)/(e*V))*10^(10)// wavelength of X-rays in A
printf('wavelength of X-rays = %.1f A',w)