//Chapter 28
clc
//Example 2
//given
RH=1.097*10^7 //Rydberg constant in per meter
h=6.626*10^-34 //plancks constant in j.s
c=3*10^8 // velocity of light in m/s
nf=2 //quantum number
ni=3// quantum number
//assuming k=1/lambda
k=RH*((1/nf^2-1/ni^2))
lambda=1/k
disp(lambda, "longest wavelength that photon emmited in meters is")
E_photon=h*c/lambda
disp(E_photon,"Energy emmited by the photon in Joules is")


