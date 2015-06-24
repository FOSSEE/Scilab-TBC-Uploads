//Example 2.2
//Program to calculate
//(a) NA 
//(b) Solid Acceptance Angle
//(c) Critical Angle at the core-cladding interface

clear;
clc ;
close ;

//Given data
n1=1.46;                //CORE REFRACTIVE INDEX
delta=0.01;             //RELATIVE REFRACTIVE INDEX DIFFERENCE

//Numerical Aperture
NA=n1*sqrt(2*delta);

//Solid Acceptance Angle in radians
zeta=%pi*(NA)^2;

//Critical Angle at the core-cladding interface in degrees
n2=n1*(1-delta);
PHI_c=asin(n2/n1)*180/%pi;

//Displaying the Results in Command Window
printf("\n\n\t The Numerical Aperture for the fiber is %0.2f.",NA);
printf("\n\n\t The Solid Acceptance Angle for the fiber is %0.2f radians.",zeta);
printf("\n\n\t The Critical Angle at the core-cladding interface for the fiber is %0.1f degrees.",PHI_c);