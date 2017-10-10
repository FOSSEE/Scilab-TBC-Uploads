//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 18.6
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
b=62.5e-6;//Fiber radius in m
R=20e-2;//Loop radius in m
lambda0=633e-9;//Wavelength in m
C=0.133;//Value of constant C for a silica fiber at 633 nm
V=4.6e-6;//Verdet constant for silica in rad/A
N=30;//Number of turns of fiber
I=1;//Current through the fiber in A

Delta=((2*%pi)^2)*R*N*(-C*(b/R)^2)/lambda0;//The Corresponding dimensionless birefringence
mprintf("\n Delta= %.2f rad",Delta);//The negative sign indicates that the polarization of the slow wave is perpendicular to the optic axis

Theta=V*N*I;//Corresponding rotation of plane of polarization in rad
mprintf("\n Theta= %.2e rad",Theta);//The answers vary due to round off error
