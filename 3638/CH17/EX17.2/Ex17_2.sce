//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 17.2
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
b=62.5e-6;//Outer radius of silica fiber in m
R=30e-3;//Radius of the circular loop formed by the fiber in m
lambda=633e-9;//Wavelength in m
C=0.133;//Value of constant C for a silica fiber at 633 nm
Deltaneff=-C*(b/R)^2;//The Corresponding dimensionless birefringence
mprintf("\n The birefringence of the given fiber = %.2e",Deltaneff);//The negative sign indicates that the polarization of the slow wave is perpendicular to the optic axis
