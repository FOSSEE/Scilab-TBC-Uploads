//Optical Fiber communication by A selvarajan
//example 2.9
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 
lambda=1.3;//wavelength of operation in um
n1=1.5;// refractive index of core
n2=1.48;// refractive index of cladding
k0=2*%pi/lambda;//constant in /m
//case-1
b=0.5//normalized propagation constant
k0=2*%pi/lambda//constant
beta=k0*sqrt(n2^2+b*(n1^2-n2^2))//propagation constant
mprintf("Propagation constant=%frad/um",beta)//The answers vary due to round off error
//case-2
//given 
lambda=1.3;//wavelength of operation in um
n1=1.5;// refractive index of core
n2=1.48;// refractive index of cladding
k0=2*%pi/lambda;//constant in /m
b=0.5//normalized propagation constant
k0=2*%pi/lambda//constant
b=(((n1+n2)/2)^2-n2^2)/(n1^2-n2^2)//normalized propagation constant
mprintf("\nPropagation constant=%f ",b)//The answers vary due to round off error

//case-3
//given 
lambda=1.3;//wavelength of operation in um
n1=1.5;// refractive index of core
n2=1.0;// refractive index of cladding
k0=2*%pi/lambda;//constant in /m
b=0.5//normalized propagation constant
k0=2*%pi/lambda//constant
beta=k0*sqrt(n2^2+b*(n1^2-n2^2))//propagation constant
mprintf("\nPropagation constant=%f rad/um",beta)//The answers vary due to round off error
