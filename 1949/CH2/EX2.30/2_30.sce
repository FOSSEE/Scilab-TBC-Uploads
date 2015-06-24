//Chapter-2,Example 2_30,Page 2-50
clc()

//Given Data:
GE=1/5000*10^-2        //GE=(a+b) grating element
lam=5.89*10^-7         //Wavelength of light
N=3*5000               //N=W/(a+b) Number of lines on grating
 
//Calculations:

//We know, (a+b)*sin(theta)=m*lam
//maximum value of sin(theta)=1
m=GE/lam               //Maximum order of spectra
printf('Maximum order of spectra is = %.0f \n \n',m)

RP=3*N                 //Resolving power (round of m to 3)
printf('Resolving power is = %.0f  \n \n',RP)
