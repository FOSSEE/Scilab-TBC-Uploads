//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 2.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given 
P=1e-3;//power of laser beam in W
A=3e-6;//cross-sectional area of laser beam in m^2
I=P/A;//power per unit area of laser beam in W/m^2
n=1;//refractive index of air medium
c=3e8;//speed of light in air medium in m/s
meu0=4*(%pi)*1e-7;//permeability of free space in SI units
E0=sqrt(2*c*meu0*I/n)//Corresponding electric field in V/m
mprintf("Electric field=%.1f V/m",E0);//The answers vary due to round off error
