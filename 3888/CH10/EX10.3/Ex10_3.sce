//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 10.3
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


d=3;                                      //Distance of two Wires in m
r=0.02;                                   //Radius of conductor in m
L1=(2*10^(-7))*(log(d/(0.7788*r)));       //Inductance of each conductor in H/m
LI=2*L1/(10^(-6));                        //Loop inductance of the line in mH/km


printf("\nThe loop inductance of the line is %.3f mH/km",LI);
printf("\nThe inductance of the each conductor is % .3e H/m",L1);


