//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 8.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given Case(1) 
n2=1.45;//refractive index of cladding
a=3e-6;//radius of core in m
delta=0.0064//fractional change in refractive index
lambda0=1.546e-6;//wavelength  in m
n1=n2/(1-delta);//refractive index of core
V=2*(%pi)*a*sqrt((n1^2)-(n2^2))/lambda0;//corresponding dimensionless V number
mprintf("\n For fiber 1:");
mprintf("\n V=%.1f at lambda0=%.3f um ",V,lambda0/1e-6);//Division by 10^(-6) to convert into um
b=0.41616;//value of dimensionless propagation constant corresponding to V=2 as per given table
B=sqrt((n2^2)+b*((n1^2)-(n2^2)));//corresponding value of Beta/k0
mprintf("\n Beta/k0=%f",B);//The answers vary due to round off error

//given Case(2)
n2=1.45;//refractive index of cladding
a=2e-6;//radius of core in m
delta=0.010//fractional change in refractive index
lambda0=1.288e-6;//wavelength  in m
n1=n2/(1-delta);//refractive index of core
V=2*(%pi)*a*sqrt((n1^2)-(n2^2))/lambda0;//corresponding dimensionless V number
mprintf("\n For fiber 2:");
mprintf("\n V=%.1f at lambda0=%.3f um ",V,lambda0/1e-6);//Division by 10^(-6) to convert into um
b=0.41616;//value of dimensionless propagation constant corresponding to V=2 as per given table
B=sqrt((n2^2)+b*((n1^2)-(n2^2)));//corresponding value of Beta/k0
mprintf("\n Beta/k0=%f",B);//The answers vary due to round off error
