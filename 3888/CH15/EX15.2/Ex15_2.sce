//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 15.2
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


r=1.5;                                   //Conductor radius in cm
R=3;                                     //Lead sheath radius in cm
V=33;                                    //Operating voltage in kV
E_max=V/(r*log(R/r));                    //Maximum value of electric stress in kV/cm
E_min=V/(R*log(R/r));                    //Minimum value of electric stress in kV/cm
r1=R/2.718;                              //Optimum value of conductor radius in cm
E_max1=V/(r1*log(R/r1));                 //Smallest value of Maximum stress in kV/cm

printf("\nMaximum and Minimum values of electrical stress is %.2f kV/cm and %.2f kV/cm",E_max,E_min);
printf("\nOptimal value of conductor radius is %.3f cm and the smallest value of the maximum stress is %.2f kV/cm",r1,E_max1);












