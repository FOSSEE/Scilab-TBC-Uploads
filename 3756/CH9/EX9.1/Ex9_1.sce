clc
//
//
//

//Variable declaration
k=3
E0=8.854*10**-12
E=10**6

//Calculations
P=(E0*(k-1)*E)*10**6
D=(E0*k*E)*10**6
Ed=0.5*E0*k*(E**2)

//Result
printf("\n (a) The Polarization in the Dielectric is %2.2f *10**-6 coul/m**2",P)
printf("\n (b) The Displacement Current Density is %2.2f *10**-6 coul/m**2",D)
printf("\n (c) The Energy Density is %0.3f J/m**3",Ed)
