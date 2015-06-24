//=====================================================================================
// chapter 4 example 15

clc;
clear;

//input data 
 d     = 1.0*10^-3;             //separation between plates in m
 A     = 6.45*10^-4;           // surface area in m^2
 e0     = 8.85*10^-12;          //permitivity of electron in (m^-3)*(kg^-1)*(s^4)*(A^2)
 er    = 6.0;                   //relative permitivity in (m^-3)*(kg^-1)*(s^4)*(A^2)
 V     = 10;                    //voltage in V
 E     = 10;                    
 
 
//calculation
 C      = (e0*er*A)/d;             //capacitance in Farad
 q      = C*V;                     //charge in coulomb
 D      = (e0*er*E)/(10^-3);       //displacement vector in c/m^2
 P      = D-(e0*E/(10^-3));               //polarisation vector in c/m^2


//result
 mprintf('capacitance = %3.2e,Farad\n',C);
 mprintf('charge =%3.2e.coulomb\n',q);
 mprintf('displacement =%3.2e.c/m^2\n',D);
 mprintf('polarisation =%3.2e.c/m^2\n',P);
 mprintf('Note:error in calculation of P,E value is taken as 5000 instead of 10^4\n');
 
 //=============================================================================================
