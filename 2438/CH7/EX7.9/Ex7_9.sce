//=========================================================================
//chapter 7 example 9
clc;
clear;


//input data
 a       = 3.5*10^-6;            //channel width in m
 N       = 10^21;                   //number of electrons in electrons/m^3
 q       = 1.6*10^-19;          //charge of electron in coulombs
 er      = 12;                  //dielectric constant F/m
 e0      = 8.85*10^-12;                  //dielectric constant F/m
 

//calculation
 e      = (e0)*(er);                //permitivityin F/m
 Vp     = (q*(a^2)*N)/(2*e);        //pinch off voltage in V


//result 
 mprintf('pinch off velocity =%2f V\n',Vp);
 
//=========================================================================
