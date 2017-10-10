///Example 1.2 Page No:20
///Find Stress in Steel bar
///Input data
clc;
clear;
L1=300*10^-3;        //Length of hexagonal prismatic steel bar in mm
A1=500*10^-6;        //Area of cross section of steel bar mm**2
Pt1=500*10^3;        //Load of steel bar in KN
E1=210*10^9;         //Modulus of elasticity GN/m**2

///Calculation
sigmat1=Pt1/A1;   //Stress in steel bar
et1=sigmat1/E1;   //Strain steel bar is
deltaLt1=et1*L1;  //Therefore,elongation of the steel bar is given by

////Output
printf('stress in steel bar= %f  N/m^2 \n',sigmat1);
printf('therefore,strain steel bar is given by= %f \n',et1);
printf('therefore,elongation of the steel bar is given by= %f m',deltaLt1);
