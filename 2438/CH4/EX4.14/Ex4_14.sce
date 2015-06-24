//=====================================================================================
// chapter 4 example 14


clc;
clear;


//input data
 E        = 10^6;               //dielectric in volts/s
 er       = 3;                  //dielectric in mm
 e0       = 8.85*10^-12;


//calculation
 E0      = er*E;                  //electric field in V/m
 sigma   = e0*E0;                //free charge in Coul/m^2
 P       = e0*(er-1)*E0;         //polarisation in coul/m
 D       = e0*er*E0;            //displacement in in dielectric
 
 
//result
 mprintf('free charge=%3.2e.Coul/m^2\n',sigma);
 mprintf('polarisation=%3.2e.Coul/m\n',P);
 mprintf('displacement=%3.2e\n',D); 
 
//========================================================================================


