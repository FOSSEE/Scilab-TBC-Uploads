//=============================================================================================================
// chapter 4 example 4

clc;
clear;

//input data
 p1 = 5.12*10^-34;        //p of benzene kg/m^3
 p2 = 6.34*10^-34;      //p of water kg/m^3
 e10C1  = 4.4*10^3;        //local field of benzene in V/m
 e10C2  = 1570*10^3;        //local field of water in V/m
 
 
//formula
//p=alphai*e10Ci
//calculation
 alpha1 = p1/e10C1;       //polarisability of benzene in F*m^2
 alpha2 = p2/e10C2;     //polarisability of water in F*m^2
  

 //result
 mprintf('polarisability of benzene=%3.2e.F*m^2\n',alpha1);
 mprintf('polarisability of water=%3.2e.F*m^2\n',alpha2);
 mprintf('Note: mistake in textbok,alpha1 value is printed as 1.16*10^-38 instead of 1.16*10^-37');
 
//========================================================================================================
