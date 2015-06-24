//==============================================================================
// chapter 5 example 25

clc;
clear;


//input data 
 M1       = 202;           //mass number
 M2       = 200;          // mass number
 Tc1      = 4.153;       // temperature in K
 alpha    = 0.5;
 

//formula
//m^alpha*(Tc)= conatant
// calculation
 Tc2    = ((M1^alpha)*Tc1)/(M2^alpha);
 

//result
 mprintf('transition temperature =%3.2f.K\n',Tc2);
 
 //==============================================================================
