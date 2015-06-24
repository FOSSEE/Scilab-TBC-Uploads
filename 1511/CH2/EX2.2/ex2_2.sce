// Example 2.2 page no-46
clear
clc

lambda=2537 //A°
E_diff=12400/lambda
e=1.6*10^-19
energy=50/1000  //J/sec
e_j=energy/e  //eV/sec
n=e_j/E_diff
printf("The lamp emits %.1f *10^16 photons/sec of wavelength, lambda=%dA°",n/10^16,lambda)
