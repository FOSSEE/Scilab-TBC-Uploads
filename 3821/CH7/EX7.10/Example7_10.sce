///Chapter No 7 Fluid Mechanics
///Example 7.10 Page No:119
/// Find Kinematic viscosity
//Input data
clc;
clear;
//import math
A=120*10^-3;        //Side of square plate in mm
W=30;                //Side weight in N
du=3.75;             //Uniform velocity in m/s
theta=30;            //Lubricated inclined plane making an angle in degree at horizontal
dy=6*10^-3;         //Thickness lubricating oil film in mm
rho=800;             //Lubricating oil film density in Kg/m**3


//Calculation
sin30=0.5;                    
F=W*sin30;            //Component of force in N
tau=(F/(A**2));       //Shear stress in Ns/m**2 
mu=tau/(du/dy);     //From Newton's law of Shear stress in Ns/m**2 
V=(mu/rho)*10^3;     //Kinematic viscosity in m**2/s


///Output
printf('Component of force=%f N \n ',F);
printf('Shear stress=%f Ns/m^2 \n ',tau);
printf('From Newtons law of Shear stress=%f Ns/m^2 \n  ',mu);
printf('Kinematic viscosity= %f m^2/s \n ',V);
