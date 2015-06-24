//fiber optic communications by joseph c. palais
//example 5.7
//OS=Windows XP sp3
//Scilab version 5.4.1
clc;
clear all;
//given
n1=1.47//core refractive index
n2=1.46//cladding refractive index
lambda=1.3//wavelength in um
//to find
delta=((n1-n2)/n1)//fractional refractive index
abylambda=(1.4/(%pi*sqrt(n1*(n1-n2))))//radius to wavelength ratio
a=lambda*abylambda//radius of core in m
d=a*2//core diameter in m
neff=n1-((sqrt(2*delta))/(2*%pi*abylambda))//value of neff.
mprintf("Value of neff=%f.",neff)
