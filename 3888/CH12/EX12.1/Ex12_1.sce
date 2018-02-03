//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 12.1
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


V=33;                                  //Operating voltage of line in kV
m=10;                                  //Mutual capacitance of unit
n=4;                                   //No of string units 
V_tot=V/3^(1/2);                       //Total voltage across the string in kV
V1=V_tot/(1+1.1+1.31+1.651);           //Voltage across the topmost unit in kV
V2=V1*(1+(1/m));                       //Voltage across the second unit from the top in kV
V3=V1*(1+(3/m)+(1/m^(2)));             //Voltage across the third unit from the top in kV
V4=V3*(1+(1/m))+(V2/m)+(V1/m);         //Voltage across the fourth unit from the top in kV
str_eff=V_tot/(n*V4);                  //String efficiency in percentage


printf("\nThe string efficiency is %.2f percentage",str_eff*100);
