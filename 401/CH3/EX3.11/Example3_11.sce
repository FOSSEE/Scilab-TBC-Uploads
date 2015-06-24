//Example 3.11
//Program to compare the total first order dispersion and determine 
//waveguide dispersion

clear;
clc ;
close ;

//Given data
lambda0=1310;           //nm - ZERO DISPERSION WAVELENGTH 
So=0.09*10^(-12);       //s/nm^2/km - DISPERSION SLOPE

//Dt at 1280nm
lambda1=1280;           //nm - OPERATING WAVELENGTH 
Dt1=lambda1*So/4*(1-(lambda0/lambda1)^4);

//Dt at 1550nm
lambda2=1550;           //nm - OPERATING WAVELENGTH 
Dt2=lambda2*So/4*(1-(lambda0/lambda2)^4);

//Waveguide Dispersion at 1550nm
Dm=13.5*10^(-12);       //s/nm/km - MATERIAL DISPERSION 
Dp=0.4*10^(-12);        //s/nm/km - PROFILE DISPERSION
Dw=Dt2-(Dm+Dp);

//Displaying the Results in Command Window
printf("\n\n\t Dt(1280nm) = %0.1f ps/nm/km.",Dt1/10^(-12));
printf("\n\n\t Dt(1550nm) = %0.1f ps/nm/km.",Dt2/10^(-12));
printf("\n\n\t Dw = %0.1f ps/nm/km.",Dw/10^(-12));