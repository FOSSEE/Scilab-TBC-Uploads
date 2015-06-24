//Example 2.1
//Program to determine the following:
//(a) Critical angle at the core-cladding interface
//(b) NA for the fiber
//(c) Acceptance angle in air for the fiber

clear;
clc ;
close ;

//Given data
n1=1.50;          //CORE REFRACTIVE INDEX
n2=1.47;          //CLADDING REFRACTIVE INDEX

//(a) Critical angle at the core-cladding interface in degrees
PHIc=asin(n2/n1)*180/%pi;

//(b) NA for the fiber
NA=sqrt(n1*n1-n2*n2);

//(c) Acceptance angle in air for the fiber in degrees
THEETAa=asin(NA)*180/%pi;

//Displaying The Results in Command Window
printf("\n\n\t Critical angle at the core-cladding interface is %0.1f degrees.",PHIc);
printf("\n\n\t NA for the fiber is %0.2f.",NA);
printf("\n\n\t Acceptance angle in air for the fiber is %0.1f degrees.",THEETAa);