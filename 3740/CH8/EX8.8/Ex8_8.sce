//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 8.8
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
n1=1.48;//Dimensionless refractive index of fiber core
n2=1.46;//Dimensionless refractive index of fiber cladding
Lambda0=1.5e-6;//Wavelength in m

//Let the maximum core radius in m for single mode operation be 'amax'
amax=2.405*Lambda0/(2*%pi*sqrt((n1^2)-(n2^2)));
mprintf("\n a < %.2f um",amax/1e-6);//Dividing by 10^(-6) to convert into um
