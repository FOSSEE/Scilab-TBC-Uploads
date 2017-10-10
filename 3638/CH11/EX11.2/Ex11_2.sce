//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 11.2
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
//For Cr+3 ions in ruby
N1=1.6e19;//Population density of E1 energy level in cm^(-3)
N2=0;//Population density of E2 energy level in cm^(-3)
n=1.76;//refractive index of medium
Tsp=3e-3;//Spontaneous emission lifetime of atom in sec
//Let g(v0) be g
g=6.9e-12;//normalized lineshape function in s
lambda0=694.3e-7;//wavelength at which absorption takes place in cm
c=3e10;//speed of electrons in cm/s
v=c/lambda0;
//Let Y(v0) be Y
Y=((c/n)^2)*g*(N2-N1)/(8*%pi*Tsp*(v^2));//Corresponding gain coefficient of medium
mprintf("\n Absorption coefficient = %f",Y);//The answers vary due to round off error
//negative sign implies absorption
