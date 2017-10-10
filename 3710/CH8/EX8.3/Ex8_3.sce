//Example 8.3, Page Number 370
//Single mode guide dimensions
clc;

n1=1.48//refractive index
n2=1.46//refractive index
l=1*(10**-6) //Wavelength in meter

//from equation 8.16

d=l*(1/(2*sqrt((n1**2)-(n2**2))))

disp("meters",d,"The Waveguide core thickness must be less than")
