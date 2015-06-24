// Example 3.6, page no-92
clear
clc
lam=10^-10//m
h=6.626*10^-34
m=1.675*10^-27
e1=1.602*10^-19//ev
e=(h^2)/(2*m*lam^2)
e=e/e1
printf("\nThe energy of thermal neutron with wavelength 1A° is %f eV",e)
