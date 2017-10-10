//Example 8.2, Page Number 369
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
//Number of modes in a planar dielectic guide
clc;

w=100*(10**-6) //Thickness in meter
n1=1.48//refractive index
n2=1.46//refractive index
l=1*(10**-6) //Wavelength of light in meters

V=((%pi*w)/l)*sqrt((n1**2)-(n2**2))
V1=(2*V)/%pi
mprintf("The value of V is:%.2f\n",V)

//from equation 8.15
N=2*(1+int(V1)) //N is the total number of possible modes
N=fpround(N,0)
mprintf(" The Total number of possible modes is:%d",N)
