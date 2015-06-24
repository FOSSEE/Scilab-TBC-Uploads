//fiber optic communications by joseph c. palais
//example 4.2
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
lambda=0.82//wavelength in um
n1=3.6//refractive index of core AlGaAs slab
n2=3.55//refractive index of cladding
//to find
d=lambda/(2*sqrt(n1^2-n2^2))//Largest thickness in um

mprintf(' Maximum thickness that will guarantee single TE-mode operation at 0.82umin AlGaAs slab waveguide  =%f um',d)
