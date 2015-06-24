// Example 18.7, page no-464
clear
clc
c=2*10^-6//F
epsr=80
v=1000 //v
E1=(c*v^2)/2
c0=c/epsr
E2=(c0*v^2)/2
E=E1-E2
printf("\nThe Energy stored in capacitor =%.0f J",E1)
printf("\nThe energy stored in polarising the capacitor = %.4f J",E)
