//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 12.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
lambda=0.8e-6;//wavelength of light in m
n=3.5;//refractive index of Si
e=1.6e-19;//electronic charge in C
h=6.626e-34;//Planck's constant in SI Units
c=3e8;//speed of electrons in m/s
alpha=1e5;//average loss coefficient per unit length of resonator in m^(-1)
w=20e-6;//width of depletion layer in m
R=((n-1)/(n+1))^2;//Reflection coefficient of uncoated Si
mprintf("\n R=%.2f",R);
//Assuming all e-h pairs contribute to photo current i.e. zeta=1
eta=(1-R)*(1-exp(-alpha*w));//Corresponding quantum efficiency
mprintf("\n eta=%.1f",eta);
v=c/lambda;//frequency corresponding to given wavelength in Hz
rho=eta*e/(h*v);//corresponding responsivity in A/W
mprintf("\n rho=%.2f A/W",rho);//The answers vary due to round off error
