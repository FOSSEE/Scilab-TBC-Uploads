///Chapter No 7 Fluid Mechanics
///Example 7.9 Page No 118
///Find Tangential speed of shaft
//Input data 
clc;
clear;
mu=0.1;                 //Oil of viscosity used for lubricant in poise or Ns/m**2
D=0.15;                 //Clearance between the shaft of diameter in m
dy=3*10^-4;            //Clearance in m
N=90;                   //Shaft rorates in rpm
pi=3.14;


///Calculation
du=(pi*D*N)/60;       //Tangential speed of shaft in m/s
tau=mu*(du/dy);       //The shear force in N/m**2

///Output
printf('Tangential speed of shaft=%f m/s \n ',du);
printf('The shear force= %f  N/m^2 \n ',tau);
