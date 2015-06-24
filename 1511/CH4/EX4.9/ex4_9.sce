// Example 4.9 page no-208
clear
clc

eps=12/(36*%pi*10^11) //F/cm
mup=500 // cm^2/V-Sec
Vb=(2.54/1000)^2/(2*eps*mup)
printf("VB = %.1f*10^3*W^2/rho_B",Vb/1000)
