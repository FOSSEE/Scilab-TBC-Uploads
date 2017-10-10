//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 2.2
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given 
P=10;//power of bulb in W
A=4*%pi*1e2;//cross-sectional area covered by bulb in m^2
I=P/A;//power per unit area of bulb in W/m^2
n=1;//refractive index of air medium
c=3e8;//speed of light in air medium in m/s
meu0=4*(%pi)*1e-7;//permeability of free space in SI units
E0=sqrt(2*c*meu0*I/n)//Corresponding electric field in V/m
mprintf("Electric field=%.1f V/m",E0);//Final answer
