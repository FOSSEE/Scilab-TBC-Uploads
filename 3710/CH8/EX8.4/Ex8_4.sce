//Example 8.4, Page Number 375
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
//Number of modes in a fiber
clc;

n1=1.48//refractive index 
n2=1.46//refractive index
l=0.9*(10**-6) //Wavelength in meters
r=100*(10**-6) //Core radius in meter

V=(2*%pi*r*sqrt((n1**2)-(n2**2)))/l 
V=fpround(V,1)
N=(V**2)/2 //N is the Number of Modes
N=fpround(N,1)
mprintf("The Value of V is:%.1f\n",V)
mprintf(" The Number of Modes able to propagate is:%.1f",N)

//The difference arising is due to approximation
