//fiber optic communications by joseph c. palais
//example 3.10
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
n3=1.5//refractive index of the glass
n1=1//refractive index of the air
lambda=0.8e-6//wave length in m
n4=1.38//refractive index of magnesium fluoride
//to find
n2=n3^0.5// index of coating layer for zero reflection
R=(n3-n4^2)^2/(n3+n4^2)^2*100//Fraction of relected light in percent
lambda_mf=lambda/n4//wavelength in magnesium flouride
t=lambda_mf/4//coating thickness in m
mprintf("Fraction of relected light with coating =%fpercent",R)
mprintf("\ncoating thickness =%fum",t*10^6)//multiplication factor 10^6 to convert unit from m to um
