//Example 2.3
//Program to Compare the acceptance angle for meridional rays and 
//skew rays which change direction by 100 degrees at each reflection

clear;
clc ;
close ;

//Given data
NA=0.4;                //NUMERICAL APERTURE
GAMMA=100/2;           //degrees - SKEW RAYS CHANGE DIRECTION BY 100 degrees

//Acceptance angle for Meridional rays in degrees
THEETA_a=asin(NA)*180/%pi;         

//Acceptance angle for Skew rays in degrees
THEETA_as=asin(NA/cos(GAMMA*%pi/180))*180/%pi;        

//Displaying the Results in Command Window
printf("\n\n\t Acceptance angle for Meridional rays is %0.1f degrees.",THEETA_a);
printf("\n\n\t Acceptance angle for Skew rays is %0.1f degrees.",THEETA_as);
printf("\n\n\t Acceptance angle for Skew rays is about %1.0f degrees greater than Meridional rays.",THEETA_as-THEETA_a);