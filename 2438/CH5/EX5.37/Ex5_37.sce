//============================================================================
// chapter 5 example 37

clc;
clear;


//input data 
 lamda1      = 16;       //penetration depth in nm
 lamda2      = 96;       // penetration depth in nm
 T1          = 2.18;      //temperature in K
 T2          = 8.1;       // temperature in K

//formula
//lamdaT =lamda0*((1-((T/Tc)^4))^(-1/4))
//calculation
 Tc          = ((((lamda2*(T2^4))-(lamda1*(T1^4)))/(lamda2-lamda1))^(1/4));


//result
 mprintf('critical temperature =%3.2f K\n',Tc);
 
 //============================================================================
