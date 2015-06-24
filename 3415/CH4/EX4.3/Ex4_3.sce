//fiber optic communications by joseph c. palais
//example 4.3
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
lambda=0.82//wavelength in um
n1=3.6//refractive index of core AlGaAs slab
n2=3.55//refractive index of cladding
n3=3.55//refractive index of cladding
n0=1//refractive index of Air


//to find
NA=sqrt(n1^2-n2^2)//Numerical aperture
alpha0=asind(NA/n0)//Acceptance angle in degree

mprintf(' Numerical aperture  =%f ',NA)
mprintf(' \nAcceptance angle in range  =+%fdegree to -+%fdegree',alpha0,alpha0)
