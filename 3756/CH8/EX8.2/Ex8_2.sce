clc
//
//
//

//Variable declaration
k=1.000074
E=100
E0=8.854*10**-12
n=0.268*10**26

//Calculations
p=(k-1)*E0*E
P=(p/n)*10**38

//Result
printf("\n The Dipole Moment induced in each Helium atom is %1.3f *10**-38 Coul-m",P)
