//===============================================================================================================================================
// chapter 6 example 13

clc;
clear;


//input data
 a     = 110*10^-3;                  //area in m^2
 d     = 2;                         //thickness in mm
 er    = 5;                        //relative permitivity
 E     = 12.5*10^3;                //electric field strength in V/mm
 e0    = 8.854*10^-12;              //charge of electron in coulombs
 
 
//calculations
 A     = a*a;                           //area in m^2
 C     = e0*((er*A)/(d*10^-3))          //capacitance in F
 V     = E*(d);
 Q     = (C)*(V)                   //charge on capacitor in C
 
// result
 mprintf('capacitance =%3.2e.F\n',C);
 mprintf(' charge=%3.4e C\n',Q);
 
 //==============================================================================================================================================
