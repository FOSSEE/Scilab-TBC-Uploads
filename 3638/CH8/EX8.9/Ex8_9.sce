//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 8.9
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
lambda0=1.3e-6;//operating wavelength of single mode fiber in m
thetah=2.357;//angle corresponding to 3 dB point in degrees
thetax=12.73;//angle in degrees at which intensity first becomes zero
sigmax=sind(thetax)/sind(thetah);//ratio of sine of angles
V=8.039-2.347*sigmax+0.3329*sigmax^2-0.0218*sigmax^3+0.00054*sigmax^4;//corresponding dimensionless V number
alphah=-0.7858+0.994*V-0.1155*V^2;
k0=2*%pi/lambda0;//free space wave number in rad/m
a=alphah/(k0*sind(thetah));//radius of core in m
NA=V*lambda0/(2*%pi*a);//corresponding value of numerical aperture
mprintf("The ESI parameters of given fiber are:");
mprintf("\n Radius of core=%f um",a/1e-6);//division by 1e-6 to convert in um
//The answers vary due to round off error
mprintf("\n Numerical aperture=%.2f",NA);
