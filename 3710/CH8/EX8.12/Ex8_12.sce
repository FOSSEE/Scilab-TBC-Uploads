//Example 8.12, Page Number 398
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
clc;

n=1.48//Refractive index of fiber
n0=1//Refractive index between the fibers in air

//From equation 8.39
Rf=(((n-1)/(n+1))**2) //Rf is the fraction of light
Rf=fpround(Rf,4)

Tf=((1-Rf)**2)  //Tf is the total transmission for each face due to Fresnel reflection
Tf=fpround(Tf,4)

L=-10*log10(Tf) //L is the Transmission Loss
L=fpround(L,2)

mprintf("The Fraction of light reflected back at each end is %.4f\n",Rf)
mprintf(" The Total Transmission for each face due to Fresnel Reflection is %.3f\n",Tf)
mprintf(" The Total Transmission loss is %.2f db",L)
