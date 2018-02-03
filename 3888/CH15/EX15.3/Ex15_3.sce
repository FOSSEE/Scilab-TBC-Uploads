//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 15.3
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


V=11;                               //Supply voltage in kV
die_strength=50;                    //Dielectric strength of conductor in kV/cm
Sf=2;                               //Safety factor 
e=2.718;                            //Constant value
E_max=die_strength/Sf;              //Maximum stress in kV/cm
R=11*e/25;                          //Outer insulation radius in cm
r=R/e;                              //Radius of the conductor in cm
D=2*r;                              //Diameter of the conductor in cm
 
printf("\nThe radius and diameter of a single conductor cable is %.2f cm and %.2f cm",r,D);

















