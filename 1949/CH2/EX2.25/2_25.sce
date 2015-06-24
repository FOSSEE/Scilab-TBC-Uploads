//Chapter-2,Example 2_25,Page 2-48
clc()

//GiveGE Data:
GE=1/4000*10^-2         //GE=(a+b) grating element
lam=5*10^-7             //Wavelength of red light
m=3                     //order

//Calculations:

//We know, (a+b)*sin(theta)=m*lam
theta=asin(m*lam/GE)     //angular position in first minima

DP=m/(GE*cos(theta))*10^-2     //Dispersive power
printf('Dispersive power is = %.0f  \n \n',DP)
