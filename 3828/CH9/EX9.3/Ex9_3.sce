//Chapter 9 : Electromagnetic Theory

clear;

//Variable declaration
E0=9*10**-12
myu0=4*%pi*10**-7
r=10**4                  //radius of Hemisphere
epsilon0=8.85*10**-12
C=3*10**2
P=10**5

//Calculations
S=P/(2*%pi*r**2)/10**-4
E0=sqrt((2*S)/(C*epsilon0))/10**5
B0=E0/C/10**-4

//Result
mprintf("Poynting vector S= %.2f*10**-4 W/m**2",S)
mprintf("\nE0= %.3f V/m",E0)
mprintf("\nB0= %.2f *10**-10 T",B0)

