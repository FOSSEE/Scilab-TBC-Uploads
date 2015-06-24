//============================================================================
// chapter 5 example 36

clc;
clear;


//input data
 Tc     =7.2;  //temperature in K
 lamda  =380;  //penetration depth in Å
 T      =5.5;  //temperature in K
 

//calculation
 lamdaT=lamda*((1-((T/Tc)^4))^(-1/2));  //penetration depth in Å
 
//result
 mprintf('penetration depth=%3.1f.Å\n',lamdaT);
 mprintf(' Note: calculation mistake in textbook in calculating lamdaT');
 
 //===========================================================================
