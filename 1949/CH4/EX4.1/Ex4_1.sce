//Chapter-4,Example 4_1,Page 4-27
clc()

//Given Data:
lam=694.3*10^-9         //Wavelength in meter
T=300                   //Temperature in Kelvin

h=6.63*10^-34           //Planck's Constant
c=3*10^8                //Velocity of light
K=1.38*10^-21           //Boltzmann Constant

//Calculations:
delE= h*c/lam           //Energy difference between two energy states N and N0

//N=N0*e^-delE/(K*T)
R=%e^(-delE/(K*T))      //R=Ratio of N and N0 i.e.(R=N/N0)

//(Printing mistake in textbook)
//instead of e^-.692, it has taken e^-69.2

printf('The ratio of population of two energy states is = %.8f \n',R)
printf(' (calculation mistake in book)')
