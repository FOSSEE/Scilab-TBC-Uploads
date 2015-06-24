//=================================================================================
// chapter 5 example 26

clc;
clear;

//input data 
 Tc1      = 2.1;                    //temperature in K
 M1       = 26.91;
 M2       =32.13;


//formula
//Tc*(M1^2) = constant
//calculation
 Tc2        = (Tc1*(M1^(1/2)))/(M2^(1/2));


//result
 mprintf('critical temperature =%3.2f.K\n',Tc2);

//=================================================================================
