//Chapter 9 : Electromagnetic Theory

clear;

//Variable declaration
P=8*10**-4              //Power
A=2*10**-6              //cross-sectional Area
epsilon0=8.85*10**-12
C=3*10**2

//Calculations
I=P/A/100
E0=sqrt((2*I)/(C*epsilon0))/100
B0=E0/C

//Result
mprintf("Intensity of Beam= %d*10**2 W",I)
mprintf("\nE0= %.0f V/m",E0)
mprintf("\nB0= %f myu-T",B0)

